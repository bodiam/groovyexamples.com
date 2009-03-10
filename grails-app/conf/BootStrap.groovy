import grails.util.GrailsUtil

class BootStrap {

    def init = {servletContext ->
        if (GrailsUtil.isDevelopmentEnv()) {
            def user = new User(userName: 'erik', password: 'erik', passwordConfirm: 'erik', displayName: 'erik pragt', emailAddress: 'erik@javaisp.net')

            if (!user.validate()) {
                println user.errors
            }

            user.save()

            new Example(title: 'Groovy lists', description: 'How to work with Groovy lists', code: 'for each lalala', text: 'as you can see here, looping through a list is very easy', language: 'Groovy', type: 'Groovy', author: user).save()
            new Example(title: 'Grails lists', description: 'How to work with Grails lists', code: 'for each lalala', text: 'as you can see here, looping through a list is very easy', language: 'Groovy', type: 'Grails', author: user).save()

            println "Currently ${User.count()} user(s)"
            println "Currently ${Example.count()} examples(s)"
        }
    }
    def destroy = {
    }
} 