package appworld
import myPackage.PersonContainer
import myPackage.AppContainer

class HomeController {

    PersonContainer people = new PersonContainer()
    AppContainer apps = new AppContainer()


    def login() {
        people.Load()
        if(params.username == "admin" && params.password == "pass"){
            render "login successful"
        }
        else if (people.doesLoginWork(params.username, params.password)){
            render(view: '/index', model: [username:people.loggedInUsername(),role:people.getLoggedInRole()])
        }
        else {
            render "login failed"
        }
    }

    def signUp() {
        println(params.sUsername)
        if(params.sPassword == params.sPassword2 && params.sPassword != "" && params.sPassword2 != "" && params.sName != "" && params.sUsername != "" && !people.doesUsernameExist(params.sUsername)) {
            people.signUp(params.sName, params.sUsername, params.sPassword)
            render(view: '/index')
        } else if(people.doesUsernameExist(params.sUsername)) {
            render "username already exist"
        }
        else {
            render 'passwords dont match'
        }
    }

    def logout() {
        people.logout()
        render(view: '/index', model: [username:people.loggedInUsername(),role:people.getLoggedInRole()])
    }

    def guest() {
        flash.message = ("You are not signed in, you are viewing as a guest")
        redirect(controller: "app", action: "index")
    }

    def isUserLoggedIn() {
        people.Load()
        println(people.getLoggedInRole())
        render(view: '/index', model: [username:people.loggedInUsername(),role:people.getLoggedInRole()])
    }

    def submitApp() {
        apps.Load()
        if(params.appName != "" && params.appDev != "" && params.appLink != "" && params.appDesc != "") {
            apps.addApp(params.appName, params.appDev, params.appLink, params.appDesc, params.catRadio, params.appPrice, params.appVersion)
            apps.Save()
        }
        render(view: '/index', model: [username:people.loggedInUsername(),role:people.getLoggedInRole()])
    }

}
