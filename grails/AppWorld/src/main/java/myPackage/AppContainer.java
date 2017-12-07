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
    private String[] categories = new String[] {"Athletics", "Lifting", "Meditation", "Nutrition", "Running", "Scheduling", "Sleep", "Yoga"};

    public AppContainer() throws FileNotFoundException {
		File tmpDir = new File("apps.txt");
		boolean exists = tmpDir.exists();
		File tmpDir2 = new File("appReview.txt");
		boolean exists2 = tmpDir.exists();
		if(exists && exists2) {
			Load();
		}
    }

    public void addApp(String Name,String Developer,String Link,String Description,String Category) {

    	Application newApp = new Application(Name, Developer, Link, Description, Category);
    	applicationsToCheck.add(newApp);
    	System.out.println(applicationsToCheck.size());
    	Save();

    }

    public void acceptApp(String Name, String Developer) {
    	for(int i =0; i < applicationsToCheck.size(); i++) {
    		if (applicationsToCheck.get(i).getAppName().equalsIgnoreCase(Name) && applicationsToCheck.get(i).getDeveloperName().equalsIgnoreCase(Developer)) {
    			Application newApp = applicationsToCheck.get(i);
    			applicationsToCheck.remove(i);
    			allApplications.add(newApp);
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

    public void Save() {
		FileOutputStream fout = null;
		ObjectOutputStream oos = null;
		try {
			fout = new FileOutputStream("apps.txt");
			oos = new ObjectOutputStream(fout);
			oos.writeObject(allApplications);
			fout.close();
			oos.close();
		}
		catch (FileNotFoundException e){
			e.printStackTrace();
		}
		catch (IOException e) {
			e.printStackTrace();
		}

		try {
			fout = new FileOutputStream("appReview.txt");
			oos = new ObjectOutputStream(fout);
			oos.writeObject(applicationsToCheck);
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
			fi = new FileInputStream(new File("apps.txt"));
			oi = new ObjectInputStream(fi);
			allApplications = (ArrayList<Application>) oi.readObject();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

		try {
			fi = new FileInputStream(new File("appReview.txt"));
			oi = new ObjectInputStream(fi);
			applicationsToCheck = (ArrayList<Application>) oi.readObject();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}


	public ArrayList<Application> getAllApplications() {
		return allApplications;
	}

	public ArrayList<Application> getApplicationsToCheck() {
		return applicationsToCheck;
	}
}


