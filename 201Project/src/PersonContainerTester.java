import static org.junit.Assert.*;

import org.junit.Test;
/**
 * 
 */

/**
 * @author hey18
 *
 */
public class PersonContainerTester {
@Test
public void doesLoginWork(){
	PersonContainer pc1 =  new PersonContainer();
	assertFalse(pc1.doesLoginWork("Yiping", "ldy12"));
}
@Test
public void signUp(){
	PersonContainer pc2 =  new PersonContainer();
	pc2.signUp("Yiping", "Jack", "hello");
	assertTrue(pc2.doesLoginWork("Jack", "hello"));
}
@Test
public void login(){
	PersonContainer pc3 = new PersonContainer();
	pc3.signUp("Zac", "Zed", "haha");
	pc3.login("Zed","haha");
	assertTrue(pc3.doesLoginWork("Zed", "haha"));
	
}


}