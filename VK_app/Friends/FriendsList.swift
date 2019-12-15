
import UIKit

class FriendsList: UITableViewController {
    
    var friendsList = ["Максим Красавчик ;)", "Ирина Быстрова", "Дмитрий Орлов"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    /*
     // Кол-во групп в списке
     override func numberOfSections(in tableView: UITableView) -> Int {
     return 1
     }
     */
    
    // Кол-во ячеек
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendsList.count
    }
    
    // Шаблон и заполнение ячеек
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendsView", for: indexPath) as! FriendCell
        cell.friendView.text = friendsList[indexPath.row]
        return cell
    }
    
    // Переход по тапу
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let userName = friendsList[indexPath.row]
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(identifier: "PhotoView") as! PhotoView
        viewController.user = userName
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
}
