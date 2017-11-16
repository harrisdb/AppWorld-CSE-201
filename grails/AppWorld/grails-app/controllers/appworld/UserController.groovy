package appworld

class UserController {

    def index() { }

    def login = {
        if(params.username == "admin" && params.password == "pass"){
            flash.message "login successful"
        }
        else {
            flash.message "login fail, incorrect password or username"
        }

        redirect(action: 'index')
    }
}
