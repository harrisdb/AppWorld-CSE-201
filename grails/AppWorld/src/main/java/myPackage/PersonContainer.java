package myPackage;
import org.omg.PortableInterceptor.SYSTEM_EXCEPTION;

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

        private Person guest = new User("guest", "guest", "guest");

        /**
         * Instantiate an empty PersonContainer
         */
        public PersonContainer() {
            File tmpDir = new File("persons.txt");
            boolean exists = tmpDir.exists();
            if(exists) {
                Load();
            }
            else {
                signUp("guest", "guest", "guest");
                adminSignUp("admin", "admin", "pass1234");
            }
        }

    public ArrayList<Person> getAllPersons() {
        return allPersons;
    }

    /**
         * Method to create a new user, called when a new person wants to sign up
         * @param name first and last name of the person
         * @param username screen name for person
         * @param password password for person
         */
        public void signUp(String name, String username, String password) {
            Person newPerson = new User(name, username, password);
            allPersons.add(newPerson);
            Save();
        }

        public Person getLoggedInPerson() {
            return allPersons.get(0);
        }

        public void adminSignUp(String name, String username, String password) {
            Person newPerson = new Admin(name, username, password);
            allPersons.add(newPerson);
            Save();
        }

        public boolean doesUsernameExist(String username) {
            for (int i=0; i < allPersons.size(); i++) {
                if (allPersons.get(i).getUsername().equalsIgnoreCase(username)) {
                    return true;
                }
            }
            return false;
        }

        public String getLoggedInRole() {
            return allPersons.get(0).getRole();
        }

        /**
         * Method to login, searches through all users and finds if there is one with matching
         * username and password
         * @param username username associated with account
         * @param password password associated with account
         * @return the user if login is successful, null if not successful
         */

        public boolean doesLoginWork(String username, String password) {
            Person checkPerson;

            System.out.println(allPersons.size());
            if(allPersons.size() == 0) {
                return false;
            }
            System.out.println(allPersons.size());
            for (int i = 0; i < allPersons.size(); i++) {
                checkPerson = allPersons.get(i);
                if (checkPerson.getUsername().equals(username) && checkPerson.getPassword().equals(password)) {
                    allPersons.set(0, allPersons.get(i));
                    Save();
                    return true;
                }
            }

            return false;
        }

        public int personsSize() {
            return allPersons.size();
        }

        public boolean loggedIn() {
            if (allPersons.get(0).getUsername().equalsIgnoreCase("guest")) {
                return true;
            }
            return false;
        }

        public String loggedInUsername() {
            System.out.println(allPersons.size());
            System.out.println(allPersons.get(0).getName());
            return allPersons.get(0).getUsername();
        }

        public void logout() {
            allPersons.set(0, guest);
            Save();
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
