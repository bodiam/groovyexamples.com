class UrlMappings {
    static mappings = {
        "/$controller/$action?/$id?" {
            constraints {
                // apply constraints here
            }
        }

        "/view/$id?/$title?" {
            controller = "example"
            action = "show"
        }

        "/index" {
            controller = "example"
            action = "index"
        }

        "/login" {
            controller = "user"
            action = "login"
        }

        "/register" {
            controller = "user"
            action = "register"
        }

        "/logout" {
            controller ="user"
            action = "logout"
        }

        "500"(view: '/error')
    }
}
