	import org.junit.Test;
	import static org.junit.Assert.assertEquals;
	import java.util.ArrayList;
import java.util.Scanner;
	public class PersonTester {
		
		@Test
		public void makeComment() {
			Person p = new Person("Jack","lldy","abc38765");
			Comment c1 = new Comment("Very nice app.",p);
			assertEquals("Very nice app",c1);
	    }
		@Test
	    public void voteCommentUp() {
			Person p = new Person("Jack","lldy","abc38765");
			Comment c = new Comment("good app, I like it.",p);
			assertEquals(0,c.getVotes());
	        c.incrementVotes();
	        assertEquals(1,c.getVotes());
	    }
		@Test
	    public void voteCommentDown() {
			Person p = new Person("Jack","lldy","abc38765");
			Comment c = new Comment("good app, I like it.",p);
			assertEquals(1,c.getVotes());
			c.decrementVotes();
	        assertEquals(0,c.getVotes());

	    }
		@Test
	    public void voteApp() {
			Scanner in = new Scanner(System.in);
	        System.out.println("type your feeling about this application, write good or bad");
	        String feeling = in.nextLine();
	        Application app = new Application("running","Jason","www.iloverunning.com","running app.");
	        assertEquals(0,app.getVotes());
	        if(feeling.equals("good")){
	        	app.addVote();
	        	assertEquals(1,app.getVotes());
	        }
	        else{
	        	app.deleteVote();
	        	assertEquals(-1,app.getVotes());
	        	}
	    }
		@Test
	    public void addToFavorites() {
			ArrayList<Application> favoriteApplications = new ArrayList<Application>();
			Application app = new Application("running","Jason","www.iloverunning.com","running app.");
			favoriteApplications.add(app);
			assertEquals(favoriteApplications,app);
	    }
		@Test
		public void beVoted() {
			int voteNumber=0;
			assertEquals(0,voteNumber);
			voteNumber++;
	        assertEquals(1,voteNumber);
	    }
		@Test
	    public void beDisvoted() {
			int voteNumber=0;
			assertEquals(0,voteNumber);
			voteNumber--;
	        assertEquals(1,voteNumber);
	    }
	}