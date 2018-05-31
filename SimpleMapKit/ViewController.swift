//
//  ViewController.swift
//  SimpleMapKit
//
//  Created by Nando Septian Husni on 5/24/18.
//  Copyright © 2018 imastudio. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var myMap: MKMapView!
    //declear variable
    
    var mygps = CLLocationManager()
    
    override func viewDidLoad() {
        
        
        mygps.delegate = self
        mygps.requestLocation()
        mygps.requestAlwaysAuthorization()
        
        super.viewDidLoad()
        //Setting our latitude and Longitude in MARKER and writeup using google map
        
        let coordinate = CLLocationCoordinate2D(latitude: 27.472792, longitude: 89.639286)
         let spans = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        myMap.region = MKCoordinateRegion(center: coordinate, span: spans)
        // ass the marker / PIN
        let marker = MKPointAnnotation()
        
        //the position of our marker/pin
        marker.coordinate = coordinate
        marker.title = "her I am, this is me!!!!!"
        
        myMap.addAnnotation(marker)
        myMap.isZoomEnabled = true
        myMap.mapType = MKMapType.satellite
        
       
        // to make myMap moveable and zoomable
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

