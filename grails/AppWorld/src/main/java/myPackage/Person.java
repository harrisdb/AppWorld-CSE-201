package myPackage;

import java.io.Serializable;

public class Person implements Serializable {

    private String name;
    private String username;
    private String password;

    public Person(String pName, String pUsername, String pPassword) {
        name = pName;
        username = pUsername;
        password = pPassword;
    }

    public String getName() {
        return name;
    }

    public String getPassword() {
        return password;
    }

    public String getUsername() {
        return username;
    }
}