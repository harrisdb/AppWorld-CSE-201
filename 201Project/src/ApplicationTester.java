import org.junit.Test;
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;
/**
 * 
 */

/**
 * @author hey18
 *
 */
public class ApplicationTester {
@Test
public void addComment(){
	Person p = new Person("Jack","lldy","abc38765");
	Comment c1 = new Comment("Very nice app.",p);
	Application app = new Application("running","Jason","www.iloverunning.com","running app.");
	assertEquals(0,app.getNumbersOfComments());
	app.addComment(c1);
	assertEquals(1,app.getNumbersOfComments());
}
@Test
public void getAppName(){
	Application app1 = new Application("Swimming","Michael","www.swimmers.com","swimming app.");
	assertEquals("Swimming",app1.getAppName());
}
@Test
public void getDeveloperName(){
	Application app2 = new Application("basketball","Jayce","www.basketballclub.com","sporting app");
	String developerName = app2.getDeveloperName();
	assertEquals("Jayce",developerName);
}
@Test
public void deleteComment(){
	Person p1 = new Person("Jack","lldy","abc38765");
	Comment c1 = new Comment("Nice golf app.",p1);
	Application app = new Application("golf","Jason","www.golflala.com","best golf app.");
	app.addComment(c1);
	assertTrue(app.deleteComment(c1));
}
@Test
public void addVote(){
	Application app3 = new Application("bowling","Jayce","www.bowling.com","bowling app");
	assertEquals(0,app3.getVotes());
	app3.addVote();
	assertEquals(1,app3.getVotes());
}
@Test
public void deleteVote(){
	Application app3 = new Application("bowling","Jayce","www.bowling.com","bowling app");
	app3.addVote();
	app3.deleteVote();
	assertEquals(0,app3.getVotes());
}

}



