//
//  ViewController.swift
//  VideoPlayerFunctionality
//
//  Created by anil kumar srivastava on 8/3/17.
//  Copyright © 2017 AditiSrivastava. All rights reserved.
//

import UIKit
import AVFoundation
import Foundation
import AVKit


class ViewController: UIViewController {

    @IBOutlet weak var btnplay: UIButton!
    @IBOutlet weak var btnpause: UIButton!
    @IBOutlet weak var btnrestart: UIButton!
    var seconds = 60
    var timer = Timer()
    
    var isTimerRunning = false
    var resumeTapped = false
        @IBOutlet weak var videoView: UIView!
   // var playerController = AVPlayerViewController()
    var player = AVPlayer()
// var myVideo: URL?
    
    
    
    

      override func viewDidLoad()
      {
        super.viewDidLoad()
        }
    
    @IBAction func backbtn(_ sender: Any) {
        _ = navigationController?.popViewController(animated: true)
        player.pause()
    }
        

    
    
    
    @IBAction func Play(_ sender: Any) {
    
    
        
        let videoURL =  URL(string: "https://dl.pagal.link/upload_file/367/Bollywood%20Video%20Songs%20n%20Trailers/Bollywood%20Video%20Songs%20n%20Trailers%202017/Baahubali%202%20%282017%29%20Hindi%20HD%20Video%20Songs/Baahubali%202%20%282017%29%20Hindi%20Trailer/Baahubali%202%20%28Hindi%29%20Official%20Trailer%20%28HD%20720p%29.mp4")
         player = AVPlayer(url: videoURL!)
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = videoView.bounds
        videoView.layer.addSublayer(playerLayer)
        videoView.layer.borderColor = UIColor(red:98/255.0, green:96/255.0, blue:97/255.0, alpha: 1.0).cgColor
        videoView.layer.masksToBounds = true
        player.play()
    }
    
    
    @IBAction func Pause(_ sender: Any) {
        
       player.pause()
    }
    
    
    
    @IBAction func Restart(_ sender: Any) {
       
       
     //   player.currentTime = 0
        player.play()

    
    
    
    
        }
            
}







