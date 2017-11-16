package appworld

class Login {

    Username username
    Password password

    static constraints = {
        username maxSize: 25
        password maxSize: 25
    }

    String toString() {
        username
    }
}
