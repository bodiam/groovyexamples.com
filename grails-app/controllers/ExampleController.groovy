class ExampleController extends BaseController {
    def exampleService

    def beforeInterceptor = [action:this.&checkUser, except:['index','list','show','search','random','recentFeed','allFeed']]

    // the delete, save and update actions only accept POST requests
    def allowedMethods = [delete:'POST', save:'POST', update:'POST']

    def scaffold = true

    def search = {
        def result = []
        if(params.q) {
            result = Example.findAll("from Example e where upper(e.title) like :query or upper(e.description) like :query or upper(e.text) like :query or upper(e.code) like :query", [query:'%' + params.q.toUpperCase() + '%'], [max:25])
        }
        [result:result]
    }

    def index = {
        def recentGrailsExamples = Example.findAllByType('Grails', [max:5, sort:'dateCreated', order:'desc'])
        def recentGroovyExamples = Example.findAllByType('Groovy', [max:5, sort:'dateCreated', order:'desc'])

        [recentGroovyExamples:recentGroovyExamples, recentGrailsExamples:recentGrailsExamples]
    }

    def delete = {
        // TODO: implement this
    }
    

    def create = {
        println "create " + request.forwardURI

        def exampleInstance = new Example()
        exampleInstance.properties = params
        return ['exampleInstance':exampleInstance]
    }

    def random = {
        def examples = Example.list()
        def random = new Random().nextInt(examples.size())        
        def exampleId = examples[random].id

        redirect(controller:'example', action:'show', id:exampleId)
    }

    def recentFeed = {
        renderFeed(exampleService.findRecentExamples())
    }

    def allFeed = {
        renderFeed(exampleService.list())        
    }

    def renderFeed(examples) {
        render(feedType:"rss", feedVersion:"2.0") {
            title = "GroovyExamples Recent Feed"
            link = "http://www.groovyeamples.com"
            description = "Recent examples feed of GroovyExamples.com"

            examples.each() { example ->
                entry(example.title) {
                    link = "http://www.groovyexamples.com/view/${example.id}"

                    example.description
                }
            }
        }

    }
}
