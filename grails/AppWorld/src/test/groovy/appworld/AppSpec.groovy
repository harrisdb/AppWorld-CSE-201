package appworld

import grails.testing.gorm.DomainUnitTest
import spock.lang.Specification

class AppSpec extends Specification implements DomainUnitTest<App> {

    def setup() {
    }

    def cleanup() {
    }

    void "test something"() {
        expect:"fix me"
            true == false
    }
}
