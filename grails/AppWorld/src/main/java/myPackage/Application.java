package myPackage;
import java.io.Serializable;
import java.util.*;
public class Application implements Serializable{
	
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
	private String developer;
	private String desc;
	private int id;
	
	private int votes;
	/**
	 * the list of the comment in this application
	 */
	
	private ArrayList<Comment> commentList;
	
	/**
	 * the main constructor of the Application object.
	 * @param Name
	 * @param Developer
	 * @param Link
	 */
	public Application(String Name,String Developer,String Link,String Description, int appId) {
		name = Name;
		developer = Developer;
		link = Link;
		desc = Description;
		//category = Category;
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

	public int getId() {
		return id;
	}

	public String getLink() {
		return link;
	}

	/**
	 * @return developer name 
	 */
	public String getDeveloperName() {
		return developer;
	}
	
	/**
	 *
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
