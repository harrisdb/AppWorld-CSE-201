
public class Moderator extends Person{

	public Moderator(String pName, String pUsername, String pPassword) {
		super(pName, pUsername, pPassword);
	}
	
	public boolean deleteComment(Application a,Comment c) {
		a.deleteComment(c);
		return true;
	}

	public Person revokeModStatus() {
		User a = this;
		return a;
	}
	
	
}
