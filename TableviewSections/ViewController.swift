//
//  ViewController.swift
//  TableviewSections
//
//  Created by barkaouimalek on 26/05/2016.
//  Copyright © 2016 Malek Barkaoui. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableview: UITableView!

    var array = [ ["Moscow", "Saint Petersburg", "Novosibirsk", "russia", "Nizhny Novgorod", "Samara", "Omsk" ],
                  
                  ["Kiyv", "Odessa", "Donetsk", "Harkiv", "Lviv", "Uzhgorod", "Zhytomyr", "Luhansk", "Mikolayv", "Kherson"]]
    
    var Moscow  = ["Moscow", "Saint Petersburg", "Novosibirsk", "Russia", "Nizhny Novgorod", "Samara", "Omsk" ]
    
    let Kiyv = ["Kiyv", "Odessa", "Donetsk", "Harkiv", "Lviv", "Uzhgorod", "Zhytomyr", "Luhansk", "Mikolayv", "Kherson"]
    

    
    
    let emptyArray = []
    
    var Moscclicked = 1
    
    var Kiyvclicked = 1
    
    var Moscclosureicon = UIImage()
    
    var Kiyvclosureicon = UIImage()

    var moscowinter  = [String]()
    
    var kiyvinter = [String]()

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        tableview.backgroundColor = UIColor.clearColor()
         moscowinter = Moscow
         kiyvinter = Kiyv
        
        
         Kiyvclosureicon = UIImage(named: "disclosure icon closed")!
        
         Moscclosureicon = UIImage(named: "disclosure icon closed")!
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {

        return array.count

    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if(Moscclicked == 1 && section == 0)
        {
            return 0
            
        }
        else if(Kiyvclicked == 1 && section == 1)
        {
            return 0
        }
        else{
            return array[section].count
        }

    }
  
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! SimpleCell;
        
        print(cell.frame.width)
        
        
        if(indexPath.section == 0 && Moscclicked == 0)
        {
            cell.countryname?.text = moscowinter[indexPath.row]
            cell.textLabel?.textColor = UIColor(red: 0, green: 0.7137, blue: 1, alpha: 1.0) /* #00b6ff */


        }
        if(indexPath.section == 1 && Kiyvclicked == 0)
        {
            
              cell.countryname?.text = Kiyv[indexPath.row]
              cell.textLabel?.textColor = UIColor(red: 0, green: 0.7137, blue: 1, alpha: 1.0) /* #00b6ff */

        }
        
        return cell
        
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return array[section][0]
    }
    
    func tableView(tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
       
        if(section == 0){
        let recognizer = UITapGestureRecognizer(target: self , action: #selector(ViewController.printmoscow))
        view.addGestureRecognizer(recognizer)}
    
    else{
        let recognizer = UITapGestureRecognizer(target: self , action: #selector(ViewController.printkiyv))
        view.addGestureRecognizer(recognizer)
    }
        
    
    }
    
    
    
    
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?
    {
        let headerView = UIView(frame: CGRectMake(0, 0, tableView.bounds.size.width, 50))
     
            headerView.backgroundColor = UIColor.greenColor()
        
         let cell = tableView.dequeueReusableCellWithIdentifier("Section")! as! SectionCell
        
        if(section == 0)
                {
                cell.sectionName.text = "iCHT à proximité (iBeacon)"
        
                    cell.nbrICHT.text = Moscow.count.description
        
        
        
                    cell.disclosureicon.image = Moscclosureicon
                }
        
                if(section == 1){
                cell.sectionName.text = "iCHT à distance"
        
                    cell.nbrICHT.text = Kiyv.count.description
        
                    
                    cell.disclosureicon.image = Kiyvclosureicon
                }

    
        headerView.addSubview(cell)
       
        return cell.contentView
        
    }
    
    
    
//    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        
//        let vw = UIView()
//        
//        let cell = tableView.dequeueReusableCellWithIdentifier("Section")! as! SectionCell;
//        
//        print(cell.frame.width)
//
//       
//        if(section == 0)
//        {
//        cell.sectionName.text = "iCHT à proximité (iBeacon)"
//            
//            cell.nbrICHT.text = Moscow.count.description
//    
//            
//            
//            cell.disclosureicon.image = Moscclosureicon
//        }
//        
//        if(section == 1){
//        cell.sectionName.text = "iCHT à distance"
//            
//            cell.nbrICHT.text = Kiyv.count.description
//
//            
//            cell.disclosureicon.image = Kiyvclosureicon
//        }
//
//        
//        vw.addSubview(cell)
//
//        
//        return vw
//    }
//    

   
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0.1
    }
    
    
    
    
    func printmoscow(){
        
        if(Moscclicked == 0){
            
            
              Moscclosureicon = UIImage(named: "disclosure icon closed")!
            Moscclicked = 1
            moscowinter = emptyArray as! [String]
            tableview.reloadSections(NSIndexSet(index: 0), withRowAnimation: .Automatic)
            
        }
        else
        {
             Moscclosureicon = UIImage(named: "disclosure icon")!
            
            Moscclicked = 0
            moscowinter = Moscow
            tableview.reloadSections(NSIndexSet(index: 0), withRowAnimation: .Automatic)

            
        }
        
        
        print("Moscow")
    }
    
    
    func printkiyv(){
        
        if(Kiyvclicked == 0){
            
            Kiyvclosureicon = UIImage(named: "disclosure icon closed")!
            Kiyvclicked = 1
            kiyvinter = emptyArray as! [String]
 tableview.reloadSections(NSIndexSet(index: 1), withRowAnimation: .Automatic)
        }
        else
        {
            Kiyvclosureicon = UIImage(named: "disclosure icon")!

            
            Kiyvclicked = 0
            kiyvinter = Kiyv
            tableview.reloadSections(NSIndexSet(index: 1), withRowAnimation: .Automatic)
        }
        
        print("Kiyv")
    }

    

}

