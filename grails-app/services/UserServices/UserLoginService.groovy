package UserServices

import org.eclipse.egit.github.core.*
import org.eclipse.egit.github.core.client.*
import org.eclipse.egit.github.core.service.*



import users.User

class UserLoginService {

    static def authenticate(String login, String password) {
       def user = User.findByLoginAndPassword(login, password)

        GitHubClient client = new GitHubClient();
        client.setCredentials(login, password);

        RepositoryService service = new RepositoryService();
        for (Repository repo : service.getRepositories(login))
            println(repo.getName() + " Watchers: " + repo.getWatchers());

    }
}
