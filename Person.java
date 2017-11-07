import java.util.ArrayList;
import java.util.Scanner;

public class Person {

    private String name;
    private String username;
    private String password;
    private ArrayList<Category> favoriteCategories = new ArrayList<Category>();
    private ArrayList<Application> favoriteApplications = new ArrayList<Application>();

    public Person(String pName, String pUsername, String pPassword) {
        name = pName;
        username = pUsername;
        password = pPassword;
        favoriteCategories = new ArrayList<Category>();
        favoriteApplications = new ArrayList<Application>();
    }

    public String getName() {
        return name;
    }

    public String getPassword() {
        return password;
    }

    public String getUsername() {
        return username;
    }

    public Comment makeComment(String comment) {
       Comment a = new Comment(comment);
       return a;
    }

    public void voteCommentUp(Comment comment) {
        comment.incrementVotes();
    }

    public void voteCommentDown(Comment comment) {
        comment.decrementVotes();
    }

    public void voteApp(Application app) {
        Scanner in = new Scanner(System.in);
        System.out.println("type your feeling about this application, write good or bad");
        String feeling = in.nextLine();
        if(feeling.equals("good")){app.addVote();}
        else{app.deleteVote();}
    }

    public void addToFavorites(Application app) {
    	favoriteApplications.add(app);
    }

    public ArrayList<Category> getFavorites(){
        return favoriteCategories;
    }

    public void submitApp(Person person, Application app) {
        //TODO
    }
}