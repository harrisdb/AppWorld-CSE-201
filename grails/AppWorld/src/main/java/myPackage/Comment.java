package myPackage;

import java.io.Serializable;

/**
 * @author Devin Harris
 */

public class Comment implements Serializable {

    /**
     * String that contains text of comment
     */
    private String text;

    /**
     * int that contains votes on comment
     * can go negative.
     */
    private int votes;
    
    
    private String user;

    /**
     * Method to instantiate a comment object
     * @param commentText text that is contained in comment
     */
    public Comment(String commentText,String User) {
        text = commentText;
        votes = 0;
        user = User;
    }

    /**
     * @return votes on comment
     */
    public int getVotes() {
        return votes;
    }

    /**
     * @return text with comment
     */
    public String getText() {
        return text;
    }

    /**
     * Increment the votes on comment, meaning votes = votes + 1
     * Happens when a user upvotes a comment
     */
    public void incrementVotes() {
        votes++;
    }


    
    public String getUser() {
    	return user;
    }
}
