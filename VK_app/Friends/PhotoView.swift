

import UIKit

private let reuseIdentifier = "Photo"

class PhotoView: UICollectionViewController {
    
    var photoCollection = [1]
    
    var user: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //  print("\(String(describing: user)) Loaded")
        // self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
      
        /*
        // модификация navigationController (изменяем кнопку Back)
        updateNavigationItem()
        */
    }
    
    /*
    // модификация navigationController (изменяем кнопку Back)
    func updateNavigationItem() {
        let backItem = UIBarButtonItem()
        backItem.title = ""
        navigationController?.navigationBar.topItem?.backBarButtonItem = backItem
        let titleView = UIView(frame: .init(x: 0, y: 0, width: 100, height: 100))
        titleView.backgroundColor = .white
        navigationController?.navigationBar.topItem?.titleView = titleView
    }
    */
    
    /*
     override func numberOfSections(in collectionView: UICollectionView) -> Int {
     
     return 0
     }*/
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return photoCollection.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
        
        return cell
    }
    
    
}

class PhotoCell: UICollectionViewCell{
    @IBOutlet weak var photo: UIImageView!
    
}
