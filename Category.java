import java.util.ArrayList;

public class Category {
	/**
	 * the arrayList to hold the applications
	 */
	private ArrayList<Application> list;
	
	/**
	 * the constructor of Category.
	 */
	public Category() {
		list = new ArrayList<Application>();
	}
	
	/**
	 * the add method to add a new app to the list.
	 * @param a
	 */
	public void add(Application a) {
		list.add(a);
	}
	
	/**
	 *  remove an app from the list if it existed
	 * @param a
	 * @return
	 */
	public boolean remove(Application a) {
		if(list.contains(a)) {
			list.remove(a);
			return true;
		}
		return false;
	}
	
	/**
	 * to show all the things in the list, like a toString method
	 * @return
	 */
	public String getList() {
		String result = "";
		for(int i=1;i<list.size()+1;i++) {
			result = i +":"+list.get(i-1).getAppName()+"\n";
		}
		
		return result;
	}
}
