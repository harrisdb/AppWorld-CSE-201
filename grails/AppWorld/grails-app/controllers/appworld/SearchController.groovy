package appworld

import myPackage.AppContainer
import myPackage.PersonContainer

class SearchController {

    PersonContainer people = new PersonContainer()
    AppContainer apps = new AppContainer()

    def index() {

    }

    def fillAll() {
        List<myPackage.Application> allApps = []
        ArrayList<myPackage.Application> allApplications = apps.getAllApplications();
        for (int i = 0; i < allApplications.size(); i++) {
            applicationReviewList.add(allApplications.get(i))
        }

        render(view: '/Search/index', model: [reviewApps:allApps])
    }

}
