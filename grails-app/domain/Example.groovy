class Example {
    static belongsTo = [author: User]

    Date dateCreated

    String title
    String description
    String text

    String type
    String code
    String language

    static constraints = {
        title(blank: false, nullable: false, size: 1..255)
        description(blank: false, nullable: false, size: 1..4000)
        text(blank: false, nullable: false, size: 1..4000)
        code(blank: false, nullable: false, size: 1..4000)
        type(inList:['Groovy','Grails'])
    }
}
