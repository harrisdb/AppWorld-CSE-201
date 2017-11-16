package appworld

import grails.gorm.services.Service

@Service(App)
interface AppService {

    App get(Serializable id)

    List<App> list(Map args)

    Long count()

    void delete(Serializable id)

    App save(App app)

}