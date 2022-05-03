import Foundation

class Car {
    var name: String?
    var price: Int?
    var rate: Double?
    var liked: Bool = false
    
    init() {
        
    }
    
    init (name: String, price: Int, rate: Double) {
        self.name = name
        self.price = price
        self.rate = rate
    }
    
    func mockData() -> [Car] {
        var cars: [Car] = []
        
        cars.append(Car(name: "Mitsubishi", price: 120000, rate: 12.2))
        cars.append(Car(name: "Mercedes", price: 450000, rate: 7.1))
        cars.append(Car(name: "Kia", price: 70000, rate: 14.7))
        cars.append(Car(name: "Hyundai", price: 85000, rate: 13.2))
        cars.append(Car(name: "Ferrari", price: 3200000, rate: 5.6))
        cars.append(Car(name: "Honda", price: 145000, rate: 16.7))
        cars.append(Car(name: "Lamborghini", price: 2300000, rate: 3.4))
        cars.append(Car(name: "Tesla", price: 240000, rate: 0))
        cars.append(Car(name: "MG", price: 150000, rate: 10.0))
        cars.append(Car(name: "Chevrolet", price: 240000, rate: 2.4))
        cars.append(Car(name: "Mazda", price: 140000, rate: 7.8))
        cars.append(Car(name: "BMW", price: 240000, rate: 8.8))
        cars.append(Car(name: "Opel", price: -140000, rate: 17.8))
        cars.append(Car(name: "Toyota", price: 150000, rate: 20.0))

        return cars
    }
}
