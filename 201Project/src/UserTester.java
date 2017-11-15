/**
 * 
 */
import static org.junit.Assert.*;

import org.junit.Test;
/**
 * @author hey18
 *
 */
public class UserTester {
@Test
public void ConstructorTester(){
	User jack = new User("jack","haha","lel123");
}
@Test
public void votePerson(){
	Person p1 = new Person("mike","lldy","45056");
	User zack = new User("zack","user123","666");
	int originalVoteNum = p1.getVotedNumber();
	zack.vote(p1);
	assertEquals(p1.getVotedNumber(),originalVoteNum+1);
}
@Test
public void applyModerator(){
	User annie = new User("dsa","214","hahafsah");
	Moderator annieNew =annie.applyModerator();
	assertEquals(annieNew,new Moderator(annie.getName(),annie.getUsername(),annie.getPassword()));
}
}
