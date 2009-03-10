class AuthenticationTagLib {
    static namespace = "auth"

    def isLoggedIn = { attrs, body ->
        if(session.user) {
            out << body()
        }
    }

    def isNotLoggedIn = { attrs, body ->
        if(!session.user) {
            out << body()
        }
    }

    def isOwner = { attrs, body ->
       if(attrs.owner == session.user?.id) {
           out << body()
       }
    }

    def userName = { attrs, body ->
        out << session.user?.userName   
    }

    def displayName = { attrs, body ->
        out << session.user?.displayName   
    }

    def id = {attrs, body ->
        out << session.user?.id
    }
}
