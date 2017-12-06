package appworld

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
        "/Admin"(controller:"admin", action:"fillTables")
        "/app"(controller:"app", action:"test")
        "/"(controller:"home", action:"isUserLoggedIn")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
