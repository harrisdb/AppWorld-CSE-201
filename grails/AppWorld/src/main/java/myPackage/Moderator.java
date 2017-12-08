package myPackage;
public class Moderator extends User{

	public Moderator(String pName, String pUsername, String pPassword) {
		super(pName, pUsername, pPassword);
	}
	
	public boolean deleteComment(Application a,Comment c) {
		return true;
	}

	public User revoke() {
		User a = new User(this.getName(),this.getUsername(),this.getPassword());
		a.setVotedNumber(this.getVotedNumber());
		return a;
		
	}
	
	
	
}
