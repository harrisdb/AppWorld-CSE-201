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
        people.Load()
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

        render(view: '/admin/index', model: [reviewApps:apps.getApplicationsToCheck(),usersList:people.getAllPersons(),appsList:apps.getAllApplications()])




    }

    def acceptApp(String appName, String appDev) {
        apps.acceptApp(params.appName, params.appDev)
        apps.Save()
        fillTables()
    }
    def denyApp(String appName, String appDev) {
        apps.denyApp(appName, appDev)
        apps.Save()
        fillTables()
    }
    def deleteApp(String appName, String appDev) {
        apps.removeApp(appName, appDev)
        apps.Save()
        fillTables()
    }
    def deleteUser(String username) {
        people.removePerson(username)
        fillTables()
    }
    def userToMod() {

    }
    def modTouser() {

    }
    def promoteToAdmin() {

    }
}
