package myPackage;
import java.util.*;
public class Application {
	
	/**
	 * the string contain the name of the app name.
	 */
	private String name;
	
	/**
	 * the string contains the link to download the app.
	 */
	private String link;
	
	private String category;
	/**
	 * the name of the developer of the App.
	 */
	private String developerName;
	
	private int votes;
	/**
	 * the list of the comment in this application
	 */
	
	private ArrayList<Comment> commentList;
	
	/**
	 * the main constructor of the Application object.
	 * @param name
	 * @param developer
	 * @param Link
	 */
	public Application(String name,String developer,String Link, int votes) {
		this.name = name;
		this.link =Link;
		this.developerName=developer;
		this.votes = votes;
		commentList = new ArrayList<Comment>();
	}
	
	/**
	 * the add comment method to add a comment.
	 * @param a
	 */
	public void addComment(Comment a) {
		commentList.add(a);
	}
	
	/**
	 * @return name of app
	 */
	public String getAppName() {
		return name;
	}
	
	/**
	 * @return developer name 
	 */
	public String getDeveloperName() {
		return developerName;
	}
	
	/**
	 * @return all the information we have
	 */
	public String information() {
		return "Application Name:"+name+"\n"+"Developer Name:"+developerName+"\n"+"Link:"+link;
	}
	
	/**
	 * 
	 * @param Comment
	 * @return true if successfully delete, false otherwise.
	 */
	public boolean deleteComment(Comment a) {
		if(commentList.contains(a)) {
			commentList.remove(a);
			return true;
		}
		return false;
	}
	
	public void addVote() {
		votes++;
	}
	
	public int getVotes() {
		return votes;
	}
	
	public void deleteVote() {
		votes--;
	}

	public String getCategory() {
		// TODO Auto-generated method stub
		return this.category;
	}
	
}
