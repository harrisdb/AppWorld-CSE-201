package appworld

import myPackage.AppContainer
import myPackage.PersonContainer
import myPackage.Application
import myPackage.Comment

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class AppController {

    PersonContainer people = new PersonContainer()
    AppContainer apps = new AppContainer()

    def index() { }

    def login() {
        people.Load()
        if(params.username == "admin" && params.password == "pass"){
            render "login successful"
        }
        else if (people.doesLoginWork(params.username, params.password)){
            render(view: '/app/index', model: [username:people.loggedInUsername(),role:people.getLoggedInRole()])
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
        } else if(people.doesUsernameExist(params.sUsername)) {
            render "username already exist"
        }
        else {
            render 'passwords dont match'
        }
    }

    def logout() {
        people.logout()
        render(view: '/app/index', model: [username:people.loggedInUsername(),role:people.getLoggedInRole()])
    }

    def isUserLoggedIn() {
        people.Load()
        println(people.getLoggedInRole())
        render(view: '/app/index', model: [username:people.loggedInUsername(),role:people.getLoggedInRole()])
    }

    def makeComment(String appName, String appDev) {


        if (params.comment != "") {
            apps.Load()
            Application appView = apps.getApp(appName, appDev)
            appView.addComment(params.comment, people.loggedInUsername())
            apps.Save()
            redirect(controller: "search", action: "viewApp", params: [appName: appName, appDev: appDev])
        }
        else {
            render "Comment form was empty"
        }
    }

    def upvote(String appName, String appDev) {
        apps.Load()
        Application appView = apps.getApp(appName, appDev)
        appView.addVote()
        apps.Save()
        redirect(controller: "search", action: "viewApp", params: [appName: appName, appDev: appDev])
    }

    def removeComment(String appName, String appDev, String commentName, String commentText) {
        apps.Load()
        Application appView = apps.getApp(appName, appDev)
        appView.removeComment(commentText, commentName)
        apps.Save()
        redirect(controller: "search", action: "viewApp", params: [appName: appName, appDev: appDev])
    }


    def upComment(String appName, String appDev, String commentName, String commentText) {
        apps.Load()
        Application appView = apps.getApp(appName, appDev)
        appView.addVoteComment(commentText, commentName)
        apps.Save()
        redirect(controller: "search", action: "viewApp", params: [appName: appName, appDev: appDev])
    }
}
