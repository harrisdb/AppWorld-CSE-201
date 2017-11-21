package appworld
import myPackage.Person
import appworld.SignupController
import myPackage.PersonContainer

class LoginController {

    PersonContainer persons = new PersonContainer()
    def index() { }

    def login() {
        persons.Load()
        if(params.username == "admin" & params.password == "pass") {
            flash.message = "login successful, welcome admin"
            redirect(controller: App, action: 'index')
        }
        //else if(persons.doesLoginWork(params.username, params.password)){
         //   flash.message = ("Welcome " + newPers.getName())
          //  redirect(controller: App, action: 'index')
        //}
        else {
            render "incorrect information, please try again"
        }

    }

    def signup() {

        redirect(controller: Signup, action: 'index')

    }

    def home() {
        render(view: '/index')
    }
}
