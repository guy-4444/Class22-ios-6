import Foundation
import UIKit

protocol CallBack_CarCell {
    func carClicked(position: Int)
}

class CarCell: UITableViewCell {
    @IBOutlet weak var car_LBL_name: UILabel!
    @IBOutlet weak var car_LBL_desc: UILabel!
    @IBOutlet weak var car_BTN_heart: UIButton!
    
    
    var delegate: CallBack_CarCell?
    var position: Int?
    
    @IBAction func likedClicked(_ sender: Any) {
        print("likedClicked")
        delegate?.carClicked(position: position ?? 0)
    }
    
}
