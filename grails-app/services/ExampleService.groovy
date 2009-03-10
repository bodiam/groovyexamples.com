class ExampleService {

    boolean transactional = true

    def findRecentExamples() {
        Example.findAll("from Example e order by e.dateCreated desc", [max:5])
    }
}
