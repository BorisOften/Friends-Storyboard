//
//  HomeScreenViewController.swift
//  Friends-Storyboard
//
//  Created by Boris Ofon on 11/28/22.
//

import UIKit

class HomeScreenViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var people = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
        
        // for testing only
        let person1 = Person(name: "John", email: "john@gmail.com")
        let person2 = Person(name: "Peter", email: "Peter@gmail.com")
        let person3 = Person(name: "Wanye", email: "wayne@gmail.com")
        let person4 = Person(name: "Bruno", email: "Bruno@gmail.com")
        
        people.append(person1)
        people.append(person2)
        people.append(person3)
        people.append(person4)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


// MARK: - table view
extension HomeScreenViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        people.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! HomeScreenCell
        
        return cell
    }
    
}
