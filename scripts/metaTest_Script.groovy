import com.groups.Group
import com.groups.MemberData
import com.projects.Visibility
import com.users.Membership
import com.users.User

groupAdmin = new User(name: "Admin")

memberShip =  new Membership(user: groupAdmin.name, password: "password", groupName: "test")


myGroup = new Group(name: "test",admin: new MemberData(key:memberShip.key))

myGroup.visibility = Visibility.Public

myGroup.addToCollaborators(new MemberData(user: "coll_1", password: "password", groupName: myGroup.name))


myUser = new User(name: "first")

println("${myUser?.name} ${myGroup?.admin?.key.decodeBase64().toString()} ${myGroup.collaborators.size()}")

