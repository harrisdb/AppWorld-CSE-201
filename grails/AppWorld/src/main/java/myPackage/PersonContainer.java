package myPackage;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.io.FileInputStream;
import java.io.ObjectInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
public class PersonContainer {

    /**
     * @author Devin Harris
     */
        /**
         * ArrayList of all users
         */
        private ArrayList<Person> allPersons = new ArrayList<Person>();

        /**
         * Instantiate an empty PersonContainer
         */
        public PersonContainer() {
            File tmpDir = new File("persons.txt");
            boolean exists = tmpDir.exists();
            if(exists) {
                Load();
            }
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
            Save();
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

        public boolean doesLoginWork(String username, String password) {
            Person checkPerson;

            for (int i = 0; i < allPersons.size(); i++) {
                checkPerson = allPersons.get(i);
                if (checkPerson.getUsername().equals(username) && checkPerson.getPassword().equals(password)) {
                    return true;
                }
            }

            return false;
        }

        public void Save() {
            FileOutputStream fout = null;
            ObjectOutputStream oos = null;
            try {
                fout = new FileOutputStream("persons.txt");
                oos = new ObjectOutputStream(fout);
                oos.writeObject(allPersons);
                fout.close();
                oos.close();
            }
            catch (FileNotFoundException e){
                e.printStackTrace();
            }
            catch (IOException e) {
                e.printStackTrace();
            }




        }

        public void Load() {
            FileInputStream fi = null;
            ObjectInputStream oi = null;
            try {
                fi = new FileInputStream(new File("persons.txt"));
                oi = new ObjectInputStream(fi);
                allPersons = (ArrayList<Person>) oi.readObject();
            }
            catch (FileNotFoundException e){
                e.printStackTrace();
            }
            catch (IOException e) {
                e.printStackTrace();
            }
            catch (ClassNotFoundException e) {
                e.printStackTrace();
            }

        }

}
