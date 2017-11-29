package appworld
import myPackage.PersonContainer

class HomeController {

    PersonContainer people = new PersonContainer()


    def login() {
        people.Load()
        if(params.username == "admin" && params.password == "pass"){
            render "login successful"
        }
        else if (people.doesLoginWork(params.username, params.password)){
            render(view: '/index', model: [username:people.loggedInUsername()])
        }
        else {
            render "login failed"
        }
    }

    def signUp() {
        println(params.sUsername)
        if(params.sPassword == params.sPassword2 && params.sPassword != "" && params.sPassword2 != "" && params.sName != "" && params.sUsername != "") {
            people.signUp(params.sName, params.sUsername, params.sPassword)
            render(view: '/index')
        }
        else {
            render 'passwords dont match'
        }
    }

    def logout() {
        people.logout()
        render(view: '/index')
    }

    def guest() {
        flash.message = ("You are not signed in, you are viewing as a guest")
        redirect(controller: "app", action: "index")
    }
}
