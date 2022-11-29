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
    var selectedPerson: Person?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
        
        
        
    }

}


// MARK: - table view
extension HomeScreenViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        people.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let currentPerson = people[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! HomeScreenCell
        cell.nameLabel.text = currentPerson.username
        cell.emailLabel.text = currentPerson.email
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedPerson = people[indexPath.row]
        performSegue(withIdentifier: "goToDetail", sender: self)
    }
}

//MARK: - Navigation
extension HomeScreenViewController{
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToDetail" {
            
            let detailViewController = segue.destination as! DetailViewController
            detailViewController.detailTitle = selectedPerson?.username
            
        }
    }
}
