package appworld

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class AppController {

    AppService appService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond appService.list(params), model:[appCount: appService.count()]
    }

    def show(Long id) {
        respond appService.get(id)
    }

    def create() {
        respond new App(params)
    }

    def save(App app) {
        if (app == null) {
            notFound()
            return
        }

        try {
            appService.save(app)
        } catch (ValidationException e) {
            respond app.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'app.label', default: 'App'), app.id])
                redirect app
            }
            '*' { respond app, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond appService.get(id)
    }

    def update(App app) {
        if (app == null) {
            notFound()
            return
        }

        try {
            appService.save(app)
        } catch (ValidationException e) {
            respond app.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'app.label', default: 'App'), app.id])
                redirect app
            }
            '*'{ respond app, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        appService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'app.label', default: 'App'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'app.label', default: 'App'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
