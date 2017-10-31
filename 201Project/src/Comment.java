/**
 * @author Devin Harris
 */

public class Comment {

    /**
     * String that contains text of comment
     */
    private String text;

    /**
     * int that contains votes on comment
     * can go negative.
     */
    private int votes;

    /**
     * Method to instantiate a comment object
     * @param commentText text that is contained in comment
     */
    public Comment(String commentText) {
        text = commentText;
        votes = 0;
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

    /**
     * Decrement the votes on a comment, meaning votes = votes - 1
     * Happens when a user downvotes a comment
     */
    public void decrementVotes() {
        votes--;
    }
}
