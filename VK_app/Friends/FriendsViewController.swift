
import UIKit

struct Section<T> {
    var title: String
    var items: [T]
}

class FriendsViewController: UITableViewController {
    
    // var friendsList = ["Максим Красавчик ;)", "Ирина Быстрова", "Дмитрий Орлов"]
    
    var friendsList = [UserModel(userName: "Максим Красавчик ;)", gender: "Man", avatar: "Ava", dateOfBirthday: 1986, satus: false),
                       UserModel(userName: "Ирина Быстрова", gender: "Woman", avatar: "Ava", dateOfBirthday: 1987, satus: false),
                       UserModel(userName: "Дмитрий Орлов", gender: "Man", avatar: "Ava", dateOfBirthday: 1985, satus: false)]
    
    
    var friendsSection = [Section<UserModel>]()
    
    
    override func viewDidLoad() {
        // super.viewDidLoad()
        let frindsDictionary = Dictionary.init(grouping: friendsList){
            $0.userName.prefix(1)
        }
        
        friendsSection = frindsDictionary.map { Section(title: String($0.key), items: $0.value) }
        friendsSection.sort { $0.title < $1.title }
    }
    
    
    // Кол-во групп в списке
    override func numberOfSections(in tableView: UITableView) -> Int {
        return friendsSection.count
    }
    
    
    // Кол-во ячеек
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendsSection[section].items.count
    }
    
    // Шаблон и заполнение ячеек
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FriendsView", for: indexPath) as? FriendCell else {
            
            return UITableViewCell()
        }
        
        // Оставил вариант с subview с тенью (как вариант) а для основной view стоит атрибут hidden.
        cell.userName.text = friendsSection[indexPath.section].items[indexPath.row].userName
        // cell.avatar.image = UIImage(named: friendsList[indexPath.row].avatar)
        cell.shadowAvatar.image.image = UIImage(named: friendsSection[indexPath.section].items[indexPath.row].avatar)
        
        return cell
    }
    
    /*
     // Переход по тапу
     override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
     let userName = friendsList[indexPath.row]
     let storyboard = UIStoryboard(name: "Main", bundle: nil)
     guard let viewController = storyboard.instantiateViewController(identifier: "PhotoView") as? PhotoView else {
     return
     }
     
     self.navigationController?.pushViewController(viewController, animated: true)
     }
     */
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return friendsSection[section].title
    }
    
    override func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return friendsSection.map {$0.title}
    }
}
