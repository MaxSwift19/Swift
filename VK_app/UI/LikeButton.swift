
import UIKit

class LikeButton: UIButton {
    
    @IBInspectable var liked: Bool = false {
        didSet {
            setupDefault()
        }
    }
    
    @IBInspectable var likeCount: Int = 0 {
        didSet {
            setupDefault()
        }
    }
    
    func like() {
        liked = !liked
        if liked {
            setLiked()
        } else {
            disableLike()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupDefault()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupDefault()
    }
    
    private func setupDefault(){
        setImage(UIImage(named: "like"), for: .normal)
        setTitle(String(describing: likeCount), for: .normal)
        tintColor = liked ? .red : .gray
        
        imageEdgeInsets = UIEdgeInsets(top: 5, left: 0, bottom: 5, right: 0)
        titleEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: -5)
        imageView?.contentMode = .scaleAspectFill
    }
    
    private func setLiked() {
        likeCount += 1
        setImage(UIImage(named: "like"), for: .normal)
        setTitle(String(describing: likeCount), for: .normal)
        tintColor = .red
    }
    
    private func disableLike() {
        likeCount -= 1
        setImage(UIImage(named: "like"), for: .normal)
        setTitle(String(describing: likeCount), for: .normal)
        tintColor = .gray
    }
}
