package appworld

import grails.test.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class AppServiceSpec extends Specification {

    AppService appService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new App(...).save(flush: true, failOnError: true)
        //new App(...).save(flush: true, failOnError: true)
        //App app = new App(...).save(flush: true, failOnError: true)
        //new App(...).save(flush: true, failOnError: true)
        //new App(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //app.id
    }

    void "test get"() {
        setupData()

        expect:
        appService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<App> appList = appService.list(max: 2, offset: 2)

        then:
        appList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        appService.count() == 5
    }

    void "test delete"() {
        Long appId = setupData()

        expect:
        appService.count() == 5

        when:
        appService.delete(appId)
        sessionFactory.currentSession.flush()

        then:
        appService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        App app = new App()
        appService.save(app)

        then:
        app.id != null
    }
}
