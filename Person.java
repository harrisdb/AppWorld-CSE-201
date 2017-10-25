import java.util.ArrayList;

public class Person {

    private String name;
    private String username;
    private String password;
    private ArrayList<String> favoriteCategories = new ArrayList<String>();
    private ArrayList<Application> favoriteApplications = new ArrayList<Application>();

    public Person(String pName, String pUsername, String pPassword) {
        name = pName;
        username = pUsername;
        password = pPassword;

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

    public void makeComment(String comment) {
        //TODO
    }

    public void voteCommentUp(Comment comment) {
        comment.incrementVotes();
    }

    public void voteCommentDown(Comment comment) {
        comment.decrementVotes();
    }

    public void voteApp() {
        //TODO
    }

    public void addToFavorites(Application app) {
        //TODO
    }

    public ArrayList<Category> getFavorites(){
        //TODO
    }

    public void submitApp(Person person, Application app) {
        //TODO
    }
}
