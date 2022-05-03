import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var main_LST_cars: UITableView!
    
    var cars: [Car]? = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        cars = Car().mockData()
        cars?[1].liked = true
    
        main_LST_cars.delegate = self
        main_LST_cars.dataSource = self
        

    }


}

extension ViewController:  UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let car = cars?[indexPath.row] {
            print(car.name!)
        
        }
    }
}

extension ViewController:  UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cars?.count ?? 0
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: CarCell? = main_LST_cars.dequeueReusableCell(withIdentifier: "car_cell") as! CarCell
        
        
        if let car = cars?[indexPath.row] {
            cell?.car_LBL_name.text = car.name
            cell?.car_LBL_desc.text = "\(car.price!)₪ | \(car.rate!) km/L"
            
            if (car.liked) {
                cell?.car_IMG_heart.image = #imageLiteral(resourceName: "heart_filled")
            } else {
                cell?.car_IMG_heart.image = #imageLiteral(resourceName: "heart_linear")
            }
        }
        
        return cell!
    }

}

