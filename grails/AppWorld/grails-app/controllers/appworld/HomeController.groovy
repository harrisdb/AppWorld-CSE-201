package appworld

class HomeController {

    def login() {
        if(params.username == "admin" && params.password == "pass"){
            render "login successful"
        }
        else {
            render "login failed"
        }
    }

    def guest() {
        flash.message = ("You are not signed in, you are viewing as a guest")
        redirect(controller: "app", action: "index")
    }
}
