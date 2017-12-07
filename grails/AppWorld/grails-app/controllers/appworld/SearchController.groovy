package appworld

import myPackage.Application
import myPackage.AppContainer
import myPackage.PersonContainer

class SearchController {

    PersonContainer people = new PersonContainer()
    AppContainer apps = new AppContainer()

    def index() { }

    def allApps() {
        List<Application> allApplications = []
        ArrayList<Application> allApps = apps.getAllApplications()
        for (int i = 0; i < allApps.size(); i++) {
            allApplications.add(allApps.get(i))
        }
    }

    def viewUnapprovedApps() {
        List<Application> applicationReviewList = []
        ArrayList<Application> applicationsToReview = apps.getApplicationsToCheck()
        for (int i = 0; i < applicationsToReview.size(); i++) {
            applicationReviewList.add(applicationsToReview.get(i))
        }
    }

    def login() {
        people.Load()
        if(params.username == "admin" && params.password == "pass"){
            render "login successful"
        }
        else if (people.doesLoginWork(params.username, params.password)){
            render(view: '/search/index', model: [username:people.loggedInUsername(),role:people.getLoggedInRole()])
        } else if(people.doesUsernameExist(params.sUsername)) {
            render "username already exist"
        }
        else {
            render "login failed"
        }
    }


    def signUp() {
        println(params.sUsername)
        if(params.sPassword == params.sPassword2 && params.sPassword != "" && params.sPassword2 != "" && params.sName != "" && params.sUsername != "" && !people.doesUsernameExist(params.sUsername)) {
            people.signUp(params.sName, params.sUsername, params.sPassword)
            render(view: 'search/index')
        }
        else {
            render 'passwords dont match'
        }
    }

    def logout() {
        people.logout()
        render(view: '/search/index', model: [username:people.loggedInUsername(),role:people.getLoggedInRole()])
    }

    def isUserLoggedIn() {
        people.Load()
        println(people.getLoggedInRole())
        render(view: '/search/index', model: [username:people.loggedInUsername(),role:people.getLoggedInRole()])
    }


}
