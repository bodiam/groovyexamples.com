class ApplicationFilters {
    def filters = {
        loadRecentExamples(controller:'*', action:'*') {
            after = {model ->
                if (model) {
                    model.recentExamples = applicationContext.exampleService.findRecentExamples()
                }
            }
        }
    }
}