
import UIKit

struct Section<T> {
    var title: String
    var items: [T]
}

class FriendsViewController: UITableViewController {
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    
    var friendsList = [UserModel(userName: "Максим", surName: "Красавчик ;)", avatar: "Ava", id: 0),
                       UserModel(userName: "Ирина", surName: "Быстрова", avatar: "Ava", id: 1),
                       UserModel(userName: "Дмитрий", surName: "Орлов", avatar: "Ava", id: 2),
                       UserModel(userName: "Алексей", surName: "Морозов", avatar: "Ava", id: 3),
                       UserModel(userName: "Светлана", surName: "Соколова", avatar: "Ava", id: 4),
                       UserModel(userName: "Александр", surName: "Грунов", avatar: "Ava", id: 5),
                       UserModel(userName: "Виктор", surName: "Беляев", avatar: "Ava", id: 6),
                       UserModel(userName: "Вадим", surName: "Шишкин", avatar: "Ava", id: 7),
                       UserModel(userName: "Дмитрий", surName: "Козак", avatar: "Ava", id: 8),
                       UserModel(userName: "Екатерина", surName: "Большакова", avatar: "Ava", id: 9),
                       UserModel(userName: "Иван", surName: "Пронин", avatar: "Ava", id: 10),
                       UserModel(userName: "Сергей", surName: "Пронин", avatar: "Ava", id: 11),
                       UserModel(userName: "Татьяна", surName: "Пронин", avatar: "Ava", id: 12)]
    
    
    var friendsSection = [Section<UserModel>]()
    
    
    override func viewDidLoad() {
        // super.viewDidLoad()
        let friendsDictionary = Dictionary.init(grouping: friendsList){
            $0.userName.prefix(1)
        }
        
        friendsSection = friendsDictionary.map { Section(title: String($0.key), items: $0.value) }
        friendsSection.sort { $0.title < $1.title }
        
        searchBar.delegate = self
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
        
        // Вариант с тенью, subview (как вариант), а для основной view стоит атрибут hidden.
        cell.userName.text = friendsSection[indexPath.section].items[indexPath.row].userName
        // cell.avatar.image = UIImage(named: friendsList[indexPath.row].avatar)
        cell.shadowAvatar.image.image = UIImage(named: friendsSection[indexPath.section].items[indexPath.row].avatar)
        
        return cell
    }
    
    
    // Переход по тапу
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let _ = friendsList[indexPath.row]
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let viewController = storyboard.instantiateViewController(identifier: "PhotoView") as? PhotoView else {
            return
        }
        
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return friendsSection[section].title
    }
    
    override func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return friendsSection.map {$0.title}
    }
    
}

// Добовляем SearchBar (строка поиска)
extension FriendsViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        //print(searchText)
        let friendsDictionary = Dictionary.init(grouping: friendsList.filter { (user) -> Bool in
            return searchText.isEmpty ? true : user.userName.lowercased().contains(searchText.lowercased())
        }) { $0.userName.prefix(1) }
        
        friendsSection = friendsDictionary.map { Section(title: String($0.key), items: $0.value) }
        friendsSection.sort { $0.title < $1.title }
        tableView.reloadData()
        
    }
    // скрываем клавиатуру по нажатию Search
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        view.endEditing(true)
    }
    
}
 
