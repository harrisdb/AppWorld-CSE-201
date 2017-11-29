
public class Admin extends Moderator{

	public Admin(String pName, String pUsername, String pPassword) {
		super(pName, pUsername, pPassword);
	}
	
	
	public User revoke() {
		return super.revoke();
	}
	
	public User removeOtherModerator(Moderator a) {
		User result = new User(a.getName(),a.getUsername(),a.getPassword());
		result.setVotedNumber(a.getVotedNumber());
		return result;
	}
	
	public Moderator setAModerator(User a) {
		Moderator result = new Moderator(a.getName(),a.getUsername(),a.getPassword());
		result.setVotedNumber(a.getVotedNumber());
		return result;
	}
}
