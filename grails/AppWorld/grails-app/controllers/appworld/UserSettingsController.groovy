package appworld

import myPackage.PersonContainer
import myPackage.Person

class UserSettingsController {

    PersonContainer people = new PersonContainer()

    def index() { }

    def landing() {
        people.Load()
        render(view: '/UserSettings/index', model: [username:people.loggedInUsername(),fullname:people.getLoggedInPerson().getName()])
    }

    def changePasswords() {
        people.Load()
        if (params.cPwd == people.getLoggedInPerson().getPassword() && params.nPwd == params.nPwd2 && params.nPwd != "" && params.nPwd2 != "" && params.cPwd != "") {
            people.getLoggedInPerson().changePassword(params.nPwd)
            people.Save()
        } else if (params.cPwd != people.getLoggedInPerson().getPassword()) {
            render "Incorrect current password"
        }
        else if(params.nPwd != params.nPwd2){
            render "Passwords don't match"
        }
        else {
            render "You didn't fill in all the forms"
        }
        render(view: '/UserSettings/index', model: [username:people.loggedInUsername(),fullname:people.getLoggedInPerson().getName()])
    }

}
