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
	private String price;
	private String version;
	
	private int votes;
	/**
	 * the list of the comment in this application
	 */
	
	private ArrayList<Comment> commentList = new ArrayList<Comment>();
	
	/**
	 * the main constructor of the Application object.
	 * @param Name
	 * @param Developer
	 * @param Link
	 */
	public Application(String Name,String Developer,String Link,String Description, String Category,String Price, String Version) {
		name = Name;
		developer = Developer;
		link = Link;
		desc = Description;
		category = Category;
		price = Price;
		version = Version;
	}
	
	/**
	 * the add comment method to add a comment.
	 * @param
	 */
	public void addComment(String Comment, String Name) {
		Comment newComment = new Comment(Comment, Name);
		commentList.add(newComment);
	}

	public void removeComment(String Comment, String Name) {
		for (int i =0; i < commentList.size(); i++) {
			if(commentList.get(i).getText().equalsIgnoreCase(Comment) && commentList.get(i).getUser().equals(Name)) {
				commentList.remove(i);
			}
		}
	}
	
	/**
	 * @return name of app
	 */
	public String getAppName() {
		return name;
	}

	public String getLink() {
		return link;
	}

	public ArrayList<Comment> getAllComments() {
		System.out.println(commentList.size());
		return commentList;
	}

	/**
	 * @return developer name 
	 */
	public String getDeveloperName() {
		return developer;
	}
	
	public void addVote() {
		votes++;
	}
	
	public int getVotes() {
		return votes;
	}

	public void addVoteComment(String Comment, String Name) {
		for (int i =0; i < commentList.size(); i++) {
			if(commentList.get(i).getText().equalsIgnoreCase(Comment) && commentList.get(i).getUser().equals(Name)) {
				commentList.get(i).incrementVotes();
			}
		}
	}

	public String getCategory() {
		// TODO Auto-generated method stub
		return this.category;
	}

	public String getDesc() {
		return desc;
	}

	public String getPrice() {
		return price;
	}

	public String getVers() {
		return version;
	}

}
