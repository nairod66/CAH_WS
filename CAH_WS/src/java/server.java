
 
import com.atoudeft.jdbc.Connexion;
import dao.MembreDao;
import dao.ServerSupport;
import email.EmailSessionBean;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
 
import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;
import model.Blanche;
import model.Joueur;
import model.Membre;
import model.Partie;
import model.Proposition;
 
@ServerEndpoint("/websocket")
public class server {
    
    /*private ArrayList<Joueur> joueurs = new ArrayList<Joueur>();
    private ArrayList joueurStart = new ArrayList();*/
    
    public Boolean serverProcess(Session se, String msg) throws IOException{
        String commande = msg.split(" ")[0];
        Iterator itr;
        Joueur unJoueur;
        MembreDao mdao;
        Membre m;
        switch(commande){
            case "_new_client":
                System.out.println(se);
                se.getBasicRemote().sendText("_display_modal");
                break;
            case "SUBSCRIBE":
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                } catch (ClassNotFoundException ex) {
                    //Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
                    System.out.println("ERROR! Driver not found");
                }
                Connexion.setUrl("jdbc:mysql://localhost/cardsagainsthumanity");
                Connexion.setUser("root");
                Connexion.setPassword("root");
                mdao = new MembreDao(Connexion.getInstance());
                if (msg.split(" ").length != 4){
                    se.getBasicRemote().sendText("_error_subscribe_missing_datas");
                } 
                Boolean created = mdao.create(new Membre(msg.split(" ")[1],msg.split(" ")[2],msg.split(" ")[3]));
                if (created){
                    se.getBasicRemote().sendText("_success_subscribe");
                } else {
                    se.getBasicRemote().sendText("_error_subscribe_database");
                }
                break;
            case "FORGOT":
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                } catch (ClassNotFoundException ex) {
                    //Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
                    System.out.println("ERROR! Driver not found");
                }
                Connexion.setUrl("jdbc:mysql://localhost/cardsagainsthumanity");
                Connexion.setUser("root");
                Connexion.setPassword("root");
                mdao = new MembreDao(Connexion.getInstance());
                m = mdao.readByMail(msg.split(" ")[1]);
                if (m == null){
                    se.getBasicRemote().sendText("_error_email");
                } else {
                    se.getBasicRemote().sendText("_success_email");
                    EmailSessionBean eb = new EmailSessionBean();
                    eb.sendMail(msg.split(" ")[1],"Cards Against Humanity - Mot de passe oublié",
                            "Hey "+m.getUsername()
                            +" !\nOn nous a dit que tu avais oublié ton mot de passe pour jouer à Cards Agains Humanity !\nLe voici : "
                            +m.getPassword());
                }
                break;
            case "LOGIN":
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                } catch (ClassNotFoundException ex) {
                    //Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
                    System.out.println("ERROR! Driver not found");
                }
                Connexion.setUrl("jdbc:mysql://localhost/cardsagainsthumanity");
                Connexion.setUser("root");
                Connexion.setPassword("root");
                mdao = new MembreDao(Connexion.getInstance());
                System.out.println("pseudo : "+msg.split(" ")[1]);
                m = mdao.read(msg.split(" ")[1]);
                System.out.println("membre trouve : "+m.toString());
                if (m == null){
                    se.getBasicRemote().sendText("_error_user");
                } else if (!m.getPassword().equals(msg.split(" ")[2])){
                    se.getBasicRemote().sendText("_error_pwd");
                } else {
                    se.getBasicRemote().sendText("_success_login");
                    System.out.println("session "+se);
                    unJoueur = new Joueur(msg.split(" ")[1],se);
                    ServerSupport.joueurs.add(unJoueur);
                    System.out.println("nbr joueurs "+ServerSupport.joueurs.size());
                    broadcast(msg.split(" ")[1]+" a rejoint la salle de jeu !","Bienvenue "+msg.split(" ")[1]+" !",se);
                }
                break;
            case "START":
                System.out.println("session "+se);
                if (ServerSupport.joueurs.size() >= 3) {
                    itr = ServerSupport.joueurStart.iterator();
                    Boolean alreadyWantsToStart = false;
                    while(itr.hasNext()){
                        unJoueur = (Joueur)itr.next();
                        if(unJoueur.getSession() == se){alreadyWantsToStart = true;}
                    }
                    if (!alreadyWantsToStart){
                        itr = ServerSupport.joueurs.iterator();
                        while(itr.hasNext()){
                            unJoueur = (Joueur)itr.next();
                            if(unJoueur.getSession() == se){ServerSupport.joueurStart.add(unJoueur);}
                        }
                        System.out.println("joueurStart.size() "+ServerSupport.joueurStart.size());
                        if (ServerSupport.joueurs.size() == ServerSupport.joueurStart.size()){
                            se.getBasicRemote().sendText("Il ne manquait plus que vous ! Partie démarrée !");
                        } else {
                            se.getBasicRemote().sendText("Demande de confirmation des autres joueurs...");
                        }
                    }
                    for (int z = 0; z < ServerSupport.joueurs.size(); z++) {
                        unJoueur = (Joueur)ServerSupport.joueurs.get(z);
                        if (unJoueur.getSession() != se) {
                            if (ServerSupport.joueurs.size() == ServerSupport.joueurStart.size()){
                                unJoueur.getSession().getBasicRemote().sendText("Tout le monde est là :) Partie démarrée");
                            } else {
                                if (ServerSupport.joueurStart.indexOf(unJoueur)!=-1){
                                    unJoueur.getSession().getBasicRemote().sendText("Un nouveau joueur vient d'accepter");
                                } else {
                                    unJoueur.getSession().getBasicRemote().sendText(ServerSupport.joueurStart.size()+" joueurs veulent commencer la partie."
                                    +"\n"+ " Veuillez inscrire START.");
                                }
                            }
                        }
                    }
                }else se.getBasicRemote().sendText("Pas assez de joueurs en ligne.");
                break;
            case "PROPOSITION":
                if (ServerSupport.partieCommencer == true){
                    Proposition propo = new Proposition(se);

                    if (ServerSupport.partie.getCurrentNoire().getPiger() >= 2){
                        //String propositions[];
                        //propositions = msg.split(" ");
                        for(int y = 1; y <msg.split(" ").length;y++){
                            propo.ajouterBlanche(ServerSupport.partie.getJoueur(se).getBlanches().get(Integer.valueOf(msg.split(" ")[y].trim())-1));
                            ServerSupport.partie.getJoueur(se).deleteBlanche(Integer.valueOf(msg.split(" ")[y].trim())-1);
                        }
                    }else{
                        String proposition = msg.split(" ")[1];
                        propo.ajouterBlanche(ServerSupport.partie.getJoueur(se).getBlanches().get(Integer.valueOf(proposition)-1));
                        ServerSupport.partie.getJoueur(se).deleteBlanche(Integer.valueOf(proposition)-1);
                    }
                    ServerSupport.partie.ajouterProposition(propo);
                    if(ServerSupport.partie.getNbrPropositions()== ServerSupport.joueurStart.size()-1){
                        this.broadcast("\n\nVoici les propositions:\n\n","\n\nVeuillez choisir la meilleure proposition\nÀ l'aide de la commande VOTE <votre_choix>", ServerSupport.partie.getCurrentJoueur().getSession() );
                        for (int y = 0; y <ServerSupport.partie.getNbrPropositions();y++){
                            this.broadcast((y+1)+": "+ServerSupport.partie.getProposition(y).toString());
                        }
                    }
                }
                break;
            case "VOTE":
                if(ServerSupport.partieCommencer == true){
                    if(ServerSupport.partie.getCurrentJoueur().getSession() == se && ServerSupport.partie.getNbrPropositions()== ServerSupport.joueurStart.size()-1){
                        ServerSupport.partie.getJoueur(ServerSupport.partie.getProposition((Integer.parseInt(msg.split(" ")[1]))-1).getSession()).incrementerScore();
                        this.broadcast("\n\n\nLa proposition "+msg.split(" ")[1]+" a été choisie, "+ServerSupport.partie.getJoueur(ServerSupport.partie.getProposition(Integer.parseInt(msg.split(" ")[1])-1).getSession()).getAlias()+" gagne un point!");       
                        if (ServerSupport.partie.getJoueur(ServerSupport.partie.getProposition((Integer.parseInt(msg.split(" ")[1]))-1).getSession()).getScore()>=5) {
                            ServerSupport.partieCommencer = false;
                            this.broadcast(ServerSupport.partie.getJoueur(ServerSupport.partie.getProposition((Integer.parseInt(msg.trim())-1)).getSession()).getAlias()+" a gagner");
                            ServerSupport.partie = null;
                            ServerSupport.joueurStart = new ArrayList();
                            ServerSupport.partieCommencer = false;
                        }else{
                            ServerSupport.partie.pigerCartes();
                            if (!ServerSupport.partie.nextJoueur()){
                                ServerSupport.partie.reinitBeginningStack();
                            }
                            ServerSupport.partie.nextNoire();
                            ServerSupport.partie.flushPropositions();
                            Joueur currentJoueur = ServerSupport.partie.getCurrentJoueur();
                            this.broadcast("\n\n"+currentJoueur.getAlias()+" est le prochain joueur à piger une carte noir!","\n\nC'est vôtre tour pour piger une carte noir!", currentJoueur.getSession());
                            this.broadcast("\n\n"+ServerSupport.partie.getCurrentNoire().getTexte());
                            this.broadcast("\n\nVous devez selectionner "+ServerSupport.partie.getCurrentNoire().getPiger()+" carte(s)\n","\n\nAttente de proposition...",currentJoueur.getSession());
                            for(int y = 0;y<ServerSupport.joueurStart.size();y++){
                                unJoueur = (Joueur)ServerSupport.joueurStart.get(y);
                                if(ServerSupport.partie.getCurrentJoueur().getSession()!=unJoueur.getSession()){
                                    String deck = this.afficherListeCarte((ArrayList)ServerSupport.partie.getJoueur(unJoueur.getSession()).getBlanches());
                                    unJoueur.getSession().getBasicRemote().sendText(deck);
                                }
                            }
                        }
                    }
                }
                break;
            case "CHAT":
                String message = msg.split(" ")[1];
                Joueur expediteur = null;
                itr = ServerSupport.joueurs.iterator();
                while(itr.hasNext()){
                    unJoueur = (Joueur)itr.next();
                    if (unJoueur.getSession() == se){expediteur = unJoueur;}
                }
                for (int z = 0; z < ServerSupport.joueurs.size(); z++) {
                    unJoueur = (Joueur)ServerSupport.joueurs.get(z);
                    if (unJoueur.getSession() != se) {
                        unJoueur.getSession().getBasicRemote().sendText(expediteur.getAlias()+">>"+message);
                    }
                }
                break;
            case "LOGOUT":
                itr = ServerSupport.joueurs.iterator();
                while(itr.hasNext()){
                    Joueur j = (Joueur)itr.next();
                    if (j.getSession() == se){
                        ServerSupport.joueurs.remove(j);
                        ServerSupport.joueurStart.remove(j);
                    }
                }
                break;
            case "AIDE":
                String help = "=== AIDE ===\n"
                        + "Commandes disponibles\n"
                        + " - START pour démarrer une partie\n"
                        + " - CHAT suivi du message à envoyer aux autres joueurs\n";
                se.getBasicRemote().sendText(help);
                break;
            default:
                System.out.println("dans default");  
        }
        //Initialisation d'une partie
        if (ServerSupport.joueurs.size() == ServerSupport.joueurStart.size() && ServerSupport.partieCommencer == false){
            initiatePartie();
        }
        return false;
    }
    
    private void broadcast(String message) throws IOException{
        Iterator itr = ServerSupport.joueurs.iterator();
        while(itr.hasNext()){
            Joueur unJoueur = (Joueur)itr.next();
            unJoueur.getSession().getBasicRemote().sendText(message);
        }
    }
    private void broadcast(String messageAll, String messageJoueur, Session se) throws IOException{
        Iterator itr = ServerSupport.joueurs.iterator();
        while(itr.hasNext()){
            Joueur unJoueur = (Joueur)itr.next();
            if (se == unJoueur.getSession()){
                unJoueur.getSession().getBasicRemote().sendText(messageJoueur);
            } else unJoueur.getSession().getBasicRemote().sendText(messageAll);
        }
    }
    private String afficherListeCarte(ArrayList deck){
       System.out.println(deck);
       Iterator itr = deck.iterator();
       
       int nbrBlanche = 0;
       String blancheDeck = "";
       while(itr.hasNext()){
           nbrBlanche++;
           Blanche b = (Blanche)itr.next();
           blancheDeck += "\n"+nbrBlanche+": "+b.getTexte();
       }
       return blancheDeck;
    }
    private void initiatePartie() throws IOException {
        ServerSupport.partieCommencer = true;
        ServerSupport.partie = new Partie(ServerSupport.joueurStart.size());
        ServerSupport.partie.setJoueurs(ServerSupport.joueurStart);
        ServerSupport.partie.melangeCartes();
        ServerSupport.partie.ordreInitiate();
        ServerSupport.partie.distribuerCartes();
        //voir getCurrentJoueur pour le retour
       // System.out.println("avant current joueur");
        Joueur currentJoueur = ServerSupport.partie.getCurrentJoueur();
        System.out.println(ServerSupport.partie.getCurrentBlanche().getTexte());
        //System.out.println("Après current joueur");
        this.broadcast("\n"+currentJoueur.getAlias()+" est le premier joueur à piger une carte noir!", "\nVous êtes le premier joueur à piger une carte noir!", currentJoueur.getSession());
        this.broadcast("\n\n"+ServerSupport.partie.getCurrentNoire().getTexte());
        this.broadcast("\n\nVous devez selectionner "+ServerSupport.partie.getCurrentNoire().getPiger()+" carte(s)\n","\n\nAttente de proposition...\n",currentJoueur.getSession());
        for(int y = 0;y<ServerSupport.joueurStart.size();y++){
            Joueur unJoueur = (Joueur)ServerSupport.joueurStart.get(y);
            if(ServerSupport.partie.getCurrentJoueur().getSession()!=unJoueur.getSession()){
                //System.out.println("joueur:"+partie.getJoueur(y));
                String deck = this.afficherListeCarte((ArrayList)ServerSupport.partie.getJoueur(unJoueur.getSession()).getBlanches());
                unJoueur.getSession().getBasicRemote().sendText(deck);
            }
        }
    }
 
    @OnMessage
    public void onMessage(String message, Session session) throws IOException,
            InterruptedException {
        System.out.println("User input: " + message);
        serverProcess(session, message);
        System.out.println("nbr joueurs "+ServerSupport.joueurs.size());
    }
 
    @OnOpen
    public void onOpen(Session session) {
        System.out.println("Client connected");
    }
 
    @OnClose
    public void onClose(Session session) {
        Iterator itr = ServerSupport.joueurs.iterator();
        while(itr.hasNext()){
            Joueur j = (Joueur)itr.next();
            if (j.getSession() == session){
                ServerSupport.joueurs.remove(j);
                ServerSupport.joueurStart.remove(j);
            }
        }
        System.out.println("Connection closed");
    }
}