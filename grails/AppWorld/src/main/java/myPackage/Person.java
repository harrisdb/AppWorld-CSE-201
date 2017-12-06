package myPackage;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Scanner;

public class Person implements Serializable{

    private String name;
    private String username;
    private String password;
    private int voteNumber;
    private ArrayList<String> favoriteCategories = new ArrayList<String>();
    private ArrayList<Application> favoriteApplications = new ArrayList<Application>();
    
    
    public Person(String pName, String pUsername, String pPassword) {
        name = pName;
        username = pUsername;
        password = pPassword;
        favoriteCategories = new ArrayList<String>();
        favoriteApplications = new ArrayList<Application>();
        voteNumber=0;
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
       Comment a = new Comment(comment,this);
       return a;
    }

    public void voteCommentUp(Comment comment) {
        comment.incrementVotes();
        comment.getHolder().beVoted();
    }

    public void addToFavorites(Application app) {
    	favoriteApplications.add(app);
    }

    public ArrayList<String> getFavorites(){
        return favoriteCategories;
    }

    public void submitApp(Person person, Application app) {
        
    }
    
    public void beVoted() {
    	voteNumber++;
    }
    
    public int getVotedNumber() {
    	return voteNumber;
    }

    public String getRole() {
        return this.getClass().getSimpleName();
    }
}