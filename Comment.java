public class Comment {

    private String text;
    private int votes;

    public Comment(String commentText) {
        text = commentText;
        votes = 0;
    }

    public int getVotes() {
        return votes;
    }

    public String getText() {
        return text;
    }

    public void incrementVotes() {
        votes++;
    }

    public void decrementVotes() {
        votes--;
    }
}
