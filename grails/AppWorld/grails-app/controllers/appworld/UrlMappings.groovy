package appworld

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
        "/app"(controller:"app", action:"isUserLoggedIn")
        "/search"(controller:"search", action:"isUserLoggedIn")
        "/UserSettings"(controller:"UserSettings", action:"landing")
        "/Admin"(controller:"admin", action:"fillTables")
        "/"(controller:"home", action:"isUserLoggedIn")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
