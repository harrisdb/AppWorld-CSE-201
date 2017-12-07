package appworld
import myPackage.Application
import myPackage.AppContainer
import myPackage.Person
import myPackage.PersonContainer

class AdminController {

    PersonContainer people = new PersonContainer()
    AppContainer apps = new AppContainer()

    def index() { }

    def fillTables() {
        apps.Load()
        List<Person> peopleList = []
        ArrayList<Person> peopleArrayList = people.getAllPersons()
        for (int i = 0; i < peopleArrayList.size(); i++) {
            peopleList.add(peopleArrayList.get(i))
        }

        List<Application> applicationReviewList = []
        ArrayList<Application> applicationsToReview = apps.getApplicationsToCheck()
        for (int i = 0; i < applicationsToReview.size(); i++) {
            applicationReviewList.add(applicationsToReview.get(i))
        }

        List<Application> allApplications = []
        ArrayList<Application> allApps = apps.getAllApplications()
        for (int i = 0; i < allApps.size(); i++) {
            allApplications.add(allApps.get(i))
        }

        render(view: '/admin/index', model: [reviewApps:applicationReviewList,usersList:peopleList,appsList:allApps])




    }

    def test() {
        render(view: '/admin/index', model: [reviewApps:applicationReviewList])
    }
}
