
public class User extends Person{


	
	public User(String name,String username, String password) {
		super(name,username,password);
		this.status ="User";
	}
	public void vote(Person p){
		p.beVoted();
	}
	public Moderator applyModerator(){
		int number = this.getVotedNumber();
		if(number>300) {
			Moderator a = new Moderator(this.getName(),this.getUsername(),this.getPassword());
			a.setVotedNumber(this.getVotedNumber());
			return a;
		}
		else {
			System.out.print("You can not be the moderator now.");
			return null;
		}
	}
	
	
	
}
