

import UIKit

private let reuseIdentifier = "Photo"

class PhotoView: UICollectionViewController {
    
    var photoCollection = [1]
    
    var user: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      //  print("\(String(describing: user)) Loaded")
        // self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        
    }
    
    
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
