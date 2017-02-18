//
//  ViewController.swift
//  DataPersitence
//
//  Created by kartikey on 14/02/17.
//  Copyright © 2017 Teamie. All rights reserved.
//

import UIKit
import CoreData
class MainVC: UIViewController,UITableViewDelegate,UITableViewDataSource,NSFetchedResultsControllerDelegate {
    
    @IBOutlet weak var segment: UISegmentedControl!
    @IBOutlet weak var itemTableVIew: UITableView!
    var controller: NSFetchedResultsController<Items>!
    override func viewDidLoad() {
        super.viewDidLoad()
        itemTableVIew.dataSource = self
        itemTableVIew.delegate = self
        //generateTestData()
        attempFetch()
    }
    
    
    func configureCell(cell: ItemCell, indexPath: NSIndexPath){
        let item = controller.object(at: indexPath as IndexPath)
        cell.configure(items: item)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let sections = controller.sections {
            let sectionInfo = sections[section]
            return sectionInfo.numberOfObjects
        }
        return 0;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = itemTableVIew.dequeueReusableCell(withIdentifier: "itemcell", for: indexPath) as! ItemCell
        configureCell(cell: cell, indexPath: indexPath as NSIndexPath)
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        if let sections = controller.sections{
            return sections.count
        }
        return 0;
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    func attempFetch(){
        let fetchRequest: NSFetchRequest<Items> = Items.fetchRequest()
        let dateSort = NSSortDescriptor(key: "created", ascending: false)
        fetchRequest.sortDescriptors = [dateSort]
        let controller = NSFetchedResultsController(fetchRequest: fetchRequest, managedObjectContext: context, sectionNameKeyPath: nil, cacheName: nil)
        
        self.controller = controller
        do {
            try controller.performFetch()
        }
        catch{
            let err = error as NSError
            print("\(err)")
        }
    }
    
    func controllerWillChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>) {
        itemTableVIew.beginUpdates()
    }
    func controllerDidChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>) {
        itemTableVIew.endUpdates()
    }
    func controller(_ controller: NSFetchedResultsController<NSFetchRequestResult>, didChange anObject: Any, at indexPath: IndexPath?, for type: NSFetchedResultsChangeType, newIndexPath: IndexPath?) {
        switch (type) {
        case .insert:
            if let indexPath = newIndexPath {
                itemTableVIew.insertRows(at: [indexPath], with: .fade)
            }
            break
        case .delete:
            if let indexPath = indexPath {
                itemTableVIew.deleteRows(at: [indexPath], with: .fade)
            }
            break
            
        case .update:
            if let indexPath = indexPath {
                let cell = itemTableVIew.cellForRow(at: indexPath) as! ItemCell
                //Update the table data
                configureCell(cell: cell, indexPath: indexPath as NSIndexPath)
            }
            break
            
        case .move:
            if let indexPath = indexPath {
                itemTableVIew.deleteRows(at: [indexPath], with: .fade)
            }
            if let indexPath = newIndexPath {
                itemTableVIew.insertRows(at: [indexPath], with: .fade)
            }
            break
        }
    }
}
func generateTestData(){
    let items = Items(context: context)
    items.title = "Macbook pro"
    items.price = 18000
    items.details = "I can wast till september"
    let items2 = Items(context: context)
    items2.title = "Macbdsook pro"
    items2.price = 19000
    items2.details = "I can wait till september"
    let items3 = Items(context: context)
    items3.title = "Macbodok pro"
    items3.price = 17000
    items3.details = "I can waist till september"
    
    ad.saveContext()
    
}
