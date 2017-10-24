/**
 * @author Devin Harris
 */

import java.util.ArrayList;

public class PersonContainer {
    /**
     * ArrayList of all users
     */
    private ArrayList<Person> allPersons = new ArrayList<Person>();

    /**
     * Instantiate an empty PersonContainer
     */
    public PersonContainer() {

    }

    /**
     * Method to create a new user, called when a new person wants to sign up
     * @param name first and last name of the person
     * @param username screen name for person
     * @param password password for person
     */
    public void signUp(String name, String username, String password) {
        Person newPerson = new Person(name, username, password);
        allPersons.add(newPerson);
    }

    /**
     * Method to login, searches through all users and finds if there is one with matching
     * username and password
     * @param username username associated with account
     * @param password password associated with account
     * @return the user if login is successful, null if not successful
     */
    public Person login(String username, String password) {

        Person checkPerson;

        for (int i = 0; i < allPersons.size(); i++) {
            checkPerson = allPersons.get(i);
            if (checkPerson.getUsername().equals(username) && checkPerson.getPassword().equals(password)) {
                return checkPerson;
            }
        }

        return null;

    }


}
