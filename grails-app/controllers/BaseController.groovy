/**
 * @author Erik Pragt
 */
abstract class BaseController {
    def checkUser() {
        if (!session.user) {
            session.redirectURL = request.forwardURI - "/groovyexamples"    // Hack to remove context root
            redirect(controller: 'user', action: 'login')
            return false
        }
    }

}
