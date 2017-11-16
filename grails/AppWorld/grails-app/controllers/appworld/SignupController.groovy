package appworld
import myPackage.PersonContainer

class SignupController {

    PersonContainer persons = new PersonContainer()

    def index() { }

    def signup() {
        persons.signUp(params.fullname, params.username, params.password)
        render "Successfully signed up " + params.fullname
    }
}
