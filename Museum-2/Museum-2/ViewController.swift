//
//  ViewController.swift
//  Museum-2
//
//  Created by Nurbol on 12.10.2022.
//

import UIKit
import SceneKit
import ARKit

class ViewController: UIViewController, ARSCNViewDelegate {

    @IBOutlet var sceneView: ARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the view's delegate
        sceneView.delegate = self
        
        // Show statistics such as fps and timing information
        sceneView.showsStatistics = true
        
        // Create a new scene
        let scene = SCNScene(named: "art.scnassets/Dragon 2.5_dae.dae")!
        
        // Set the scene to the view
        sceneView.scene = scene
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create a session configuration
        let configuration = ARWorldTrackingConfiguration()

        // Run the view's session
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the view's session
        sceneView.session.pause()
    }

    
    
    func session(_ session: ARSession, didFailWithError error: Error) {
        // Present an error message to the user
        
    }
    
    func sessionWasInterrupted(_ session: ARSession) {
        // Inform the user that the session has been interrupted, for example, by presenting an overlay
        
    }
    
    func sessionInterruptionEnded(_ session: ARSession) {
        // Reset tracking and/or remove existing anchors if consistent tracking is required
        
    }
    
    
    @IBAction func Score(_ sender: UIButton) {
            UIApplication.shared.open(URL(string: "https://vk.com")! as URL, options: [:], completionHandler: nil)
    }
    
    
    @IBAction func Share(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://vk.com")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func back() {
        
        let vc = UIViewController()
        
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
