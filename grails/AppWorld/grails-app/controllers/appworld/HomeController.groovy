package appworld

class HomeController {

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

    def guest() {
        flash.message = ("You are not signed in, you are viewing as a guest")
        redirect(controller: "app", action: "index")
    }
}
