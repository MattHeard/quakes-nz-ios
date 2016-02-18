//
//  EarthquakeTableViewController.swift
//  GeoNetTest
//
//  Created by Matthew Heard on 19/02/16.
//  Copyright © 2016 Matthew Heard. All rights reserved.
//

import UIKit

class EarthquakeTableViewController: UITableViewController {
    // MARK: Properties
    var earthquakes = [Earthquake]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadSampleEarthquakes()
    }
    
    func loadSampleEarthquakes() {
        let earthquake1 = Earthquake(magnitude: 5, location: "30km North of Wellington", timestamp: "15 minutes ago")
        let earthquake2 = Earthquake(magnitude: 4, location: "20km West of Christchurch", timestamp: "1 hour ago")
        let earthquake3 = Earthquake(magnitude: 3, location: "15km South of Auckland", timestamp: "2 hours ago")
        earthquakes += [earthquake1, earthquake2, earthquake3]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return earthquakes.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "EarthquakeTableViewCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! EarthquakeTableViewCell
        
        let earthquake = earthquakes[indexPath.row]
        
        cell.magnitudeLabel.text = String(earthquake.magnitude)
        cell.locationLabel.text = earthquake.location
        cell.timestampLabel.text = earthquake.timestamp
        
        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
