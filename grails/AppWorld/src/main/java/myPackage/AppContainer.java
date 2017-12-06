package myPackage;
import java.util.Random;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Scanner;
public class AppContainer {

    private  ArrayList<Application> allApplications = new ArrayList<Application>();
    private ArrayList<Application> applicationsToCheck = new ArrayList<Application>();
    private String[] categories = new String[] {"cat1", "cat2", "cat3", "cat4"};

    public AppContainer() throws FileNotFoundException {
    	
    }

    public void addApp(String Name,String Developer,String Link,String Description, String Category) {
    	Random rand = new Random();
    	int min = 1;
    	int max = 1000000;
    	int random = rand.nextInt((max - min) + 1);

    	Application newApp = new Application(Name, Developer, Link, Description, Category, random);
    	applicationsToCheck.add(newApp);

    }

    public void acceptApp(int id) {
    	for (int i = 0; i < applicationsToCheck.size(); i++) {
    		if (id == applicationsToCheck.get(i).getId()) {
    			Application newApp = applicationsToCheck.get(i);
    			applicationsToCheck.remove(i);
    			allApplications.add(newApp);
			}
		}
	}

	public Application getApp(int id) {
		for (int i = 0; i < allApplications.size(); i++) {
			if (id == allApplications.get(i).getId()) {
				return allApplications.get(i);
			}
		}
	}

    public ArrayList<Application> searchByCategory(String category) {
    	 ArrayList<Application> thisCategory = new ArrayList<Application>();
    	 for(Application a :allApplications) {
    		 if(a.getCategory().equals(category)) {
    			 thisCategory.add(a);
    		 }
    	 }
    	 return thisCategory;
    }
    
    public ArrayList<Application> searchByName(String name) {
    	ArrayList<Application> thisCategory = new ArrayList<Application>();
   	 	for(Application a :allApplications) {
   	 		if(a.getAppName().contains(name)) {
   	 			thisCategory.add(a);
   	 		}
   	 	}
   	 	return thisCategory;
    }
    
    public ArrayList<Application> searchByVotes() {
    	Application[] a = allApplications.toArray(new Application[allApplications.size()]);
    	bubbleSort(a);
    	ArrayList<Application> arrayList = new ArrayList<Application>(Arrays.asList(a));
    	return arrayList;
    }
    
    
    private static void bubbleSort(Application arr[]){
        int n = arr.length;
        for (int i = 0; i < n-1; i++)
            for (int j = 0; j < n-i-1; j++)
                if (arr[j].getVotes() > arr[j+1].getVotes()){
                    // swap temp and arr[i]
                    Application temp = arr[j];
                    arr[j] = arr[j+1];
                    arr[j+1] = temp;
                }
    }

    public void save() {
    	FileOutputStream font = null;
    	ObjectOutputStream oos = null;
    	try {
    		font = new FileOutputStream(" apps.txt");
    		oos = new ObjectOutputStream(font);
    		font.close();
    		oos.close();
    	}
    	
    	catch (FileNotFoundException e) {
    		e.printStackTrace();
    	}
    	
    	catch (IOException e) {
    		e.printStackTrace();
    	}
    }
    
    
    
    public void load() {
    	FileInputStream fi = null;
    	ObjectInputStream oi = null;
    	
    	try {
    		fi = new FileInputStream(new File("apps.txt"));
    		oi = new ObjectInputStream(fi);
    		allApplications= (ArrayList<Application>) oi.readObject();
    	}
    	catch (FileNotFoundException e) {
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
