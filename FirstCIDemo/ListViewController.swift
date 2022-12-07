//
//  ViewController.swift
//  FirstCIDemo
//
//  Created by Anand Upadhyay on 07/12/22.
//

import UIKit

class ListViewController: UITableViewController {
    
    @IBOutlet public var listTable: UITableView!
    
    public var devList = [["name":"Thoma Andrew","descignation":"iOS Developer","location":"Texas US"],["name":"Nency Jordan","descignation":"Technical Lead","location":"Sweden"],["name":"fentuia Donzigutia","descignation":"Implementation Head","location":"Austria"],["name":"Jesica Lal","descignation":"Sr Mobile Tech Lead","location":"Hungry"]]
    override func viewDidLoad(){
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = listTable.dequeueReusableCell(withIdentifier: "listCell", for: indexPath)
        let animal = devList[indexPath.row]
        
        cell.textLabel?.text = animal["name"]
        cell.detailTextLabel?.text =  animal["descignation"]! + "\n" + animal["location"]!
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return devList.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        presenter?.showAnimalSelection(with: animalList[indexPath.row], from: self)
    }
    
}

