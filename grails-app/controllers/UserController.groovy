class UserController {
    
    def index = { redirect(action:list,params:params) }

    // the delete, save and update actions only accept POST requests
    def allowedMethods = [delete:'POST', save:'POST', update:'POST']

    def register = {
        def userInstance = new User()
        userInstance.properties = params
        return ['userInstance':userInstance]
    }

    def login = {

    }

    def logout = {
        session.user = null
        redirect(controller:'example', view:'list')
    }

    def authenticate = {
        def user = User.findByUserNameAndPassword(params.userName, params.password)
        if(!user) {
            flash.message = "Authentication error"
            redirect(action:login)
        } else {
            session.user = user
            def redirectURL = session.redirectURL

            if(redirectURL) {
                session.redirectURL = null
                redirect(uri:redirectURL)
            } else {
                redirect(uri:'/example/list')
            }
        }
    }

    def delete = {
        // TODO: implement this
    }

    def save = {
        def userInstance = new User(params)
        if(!userInstance.hasErrors() && userInstance.save()) {
            flash.message = "User ${userInstance.id} created"
//            redirect(action:profile,id:userInstance.id)  // TODO: create profile

            session.user = userInstance

            redirect(controller:'example', action:'list')
        }
        else {
            render(view:'register',model:[userInstance:userInstance])
        }
    }
}
