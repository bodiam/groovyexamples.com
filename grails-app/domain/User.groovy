class User {
    String userName
    String displayName
    String emailAddress
    String password
    String passwordConfirm

    Date dateCreated

    static constraints = {
        userName(unique: true, blank: false, size: 4..255)
        displayName(size: 4..255, blank: false)
        emailAddress(email: true, blank: false)
        password(size: 4..255, blank: false)
        passwordConfirm(validator: {val, obj ->
            obj.password == val
        })
    }

    static transients = [
            "passwordConfirm"
    ]
}
