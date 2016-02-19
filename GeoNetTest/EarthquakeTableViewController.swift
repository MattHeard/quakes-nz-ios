//
//  EarthquakeTableViewController.swift
//  GeoNetTest
//
//  Created by Matthew Heard on 19/02/16.
//  Copyright © 2016 Matthew Heard. All rights reserved.
//

import UIKit
import MapKit

class EarthquakeTableViewController: UITableViewController {
    // MARK: Properties
    var earthquakes = [Earthquake]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadSampleEarthquakes()
    }
    
    let Wellington = CLLocation(latitude: 41.3, longitude: 174.8)
    let Auckland = CLLocation(latitude: 36.8, longitude: 174.7)
    let Christchurch = CLLocation(latitude: 43.5, longitude: 172.6)
    
    func loadSampleEarthquakes() {
        let earthquake1 = Earthquake(magnitude: 3.206508, location: Wellington, timestamp: "15 minutes ago", depth: 10, intensity: "weak")
        let earthquake2 = Earthquake(magnitude: 2.2322786, location: Auckland, timestamp: "1 hour ago", depth: 20, intensity: "strong")
        let earthquake3 = Earthquake(magnitude: 2.268272, location: Christchurch, timestamp: "2 hours ago", depth: 5, intensity: "light")
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
        
        cell.magnitudeBigLabel.text = magnitudeBigLabelText(earthquake.magnitude)
        
        cell.magnitudeSmallLabel.text = magnitudeSmallLabelText(earthquake.magnitude)
        cell.locationLabel.text = locationLabelText(earthquake.location)
        cell.timestampLabel.text = earthquake.timestamp
        cell.depthLabel.text = "Depth: \(earthquake.depth) km"
        cell.intensityLabel.text = earthquake.intensity
        
        return cell
    }
    
    func magnitudeBigLabelText(magnitude: Double) -> String {
        return String(Int(magnitude))
    }
    
    func magnitudeSmallLabelText(magnitude: Double) -> String {
        let smallPart = round(magnitude * 10) / 10.0 - round(magnitude)
        let text = String(smallPart)
        let startIndex = text.startIndex.advancedBy(1)
        return text.substringFromIndex(startIndex)
    }
    
    func locationLabelText(location: CLLocation) -> String {
        let nearestCityName = "Wellington"
        let nearestCity = Wellington
        let distance = distanceBetween(location, nearestCity: nearestCity)
        return "\(distance) km away from \(nearestCityName)"
    }
    
    func distanceBetween(location: CLLocation, nearestCity: CLLocation) -> Int {
        return Int(location.distanceFromLocation(nearestCity) / 1000)
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
