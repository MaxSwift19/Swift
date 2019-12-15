
import UIKit

class GroupsList: UITableViewController {
    
    var groupList = ["Машины", "Кино", "ММВБ"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    /*
     // Кол-во групп в списке
     override func numberOfSections(in tableView: UITableView) -> Int {
     return 1
     }
     */
    
    // Кол-во ячеек в секции
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groupList.count
    }
    
    //
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GroupsView", for: indexPath) as! GroupCell
        cell.GroupView.text = groupList[indexPath.row]
        return cell
    }
    
    //
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let userName = groupList[indexPath.row]
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(identifier: "PhotoView") as! PhotoView
        viewController.user = userName
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
}

