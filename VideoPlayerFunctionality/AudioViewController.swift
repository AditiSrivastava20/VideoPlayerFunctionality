//
//  AudioViewController.swift
//  VideoPlayerFunctionality
//
//  Created by anil kumar srivastava on 8/10/17.
//  Copyright © 2017 AditiSrivastava. All rights reserved.
//

import UIKit
import AVFoundation
import Foundation
import AVKit

class AudioViewController: UIViewController {

   
    
    var audioPlayer  = AVAudioPlayer()
        
        @IBOutlet weak var videoView: UIView!
        var playerController = AVPlayerViewController()
        var player:AVPlayer?
        var myVideo: URL?
        
           override func viewDidLoad() {
            super.viewDidLoad()
            do{
                audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "music", ofType: "mp3")!))
                
                audioPlayer.prepareToPlay()
                
            }
            catch{
                print (error)
            }// Do any additional setup after loading the view, typically from a nib.
            
            
            
        }
    @IBAction func Back(_ sender: Any) {
        _ = navigationController?.popViewController(animated: true)
        audioPlayer.stop()
    }

        
        @IBAction func Play(_ sender: Any) {
            audioPlayer.play()
            
                    }
        @IBAction func Pause(_ sender: Any) {
            if audioPlayer.isPlaying {
                audioPlayer.pause()
            }
            else{
                
            }
        }
        @IBAction func Restart(_ sender: Any) {
            
            audioPlayer.currentTime = 0
            audioPlayer.play()
            
        
}

}



