//
//  MapViewController.swift
//  ColetaAi
//
//  Created by student on 05/07/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate{

    var gerenciadorLocal = CLLocationManager()
    
    @IBOutlet weak var Mapa: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let latitude:CLLocationDegrees = -1.472884
        let longitude:CLLocationDegrees = -48.451602
        
        let deltaLatitude: CLLocationDegrees = 0.02
        let deltaLongitude: CLLocationDegrees = 0.02
        
        
        let localizacao:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        let areaVizualizacao:MKCoordinateSpan = MKCoordinateSpanMake(deltaLatitude, deltaLongitude)
        
        let regiao:MKCoordinateRegion = MKCoordinateRegionMake(localizacao, areaVizualizacao)
            
        Mapa.setRegion(regiao, animated: true)
        
        let anotacao = MKPointAnnotation()
        
        
        //configurando
        anotacao.coordinate = localizacao
        anotacao.title = "Ponto de Coleta"
        anotacao.subtitle = "Lugar para coletar"
        
        Mapa.addAnnotation(anotacao)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
