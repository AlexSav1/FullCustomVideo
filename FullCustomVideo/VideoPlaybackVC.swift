//
//  VideoPlaybackVC.swift
//  FullCustomVideo
//
//  Created by Aditya Narayan on 4/25/17.
//
//

import UIKit
import AVFoundation

class VideoPlaybackVC: UIViewController {
    
    let avPlayer = AVPlayer()
    var avPlayerLayer: AVPlayerLayer!
    
    var videoURL: URL!
    //connect this to your uiview in storyboard
    @IBOutlet weak var videoView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        avPlayerLayer = AVPlayerLayer(player: avPlayer)
        avPlayerLayer.frame = view.bounds
        avPlayerLayer.videoGravity = AVLayerVideoGravityResizeAspectFill
        videoView.layer.insertSublayer(avPlayerLayer, at: 0)
        
        view.layoutIfNeeded()
        
        let playerItem = AVPlayerItem(url: videoURL as URL)
        avPlayer.replaceCurrentItem(with: playerItem)
        
        //scrubby slo-mo
        self.avPlayer.playImmediately(atRate: 0.5)
        
        //no slo-mo
        //avPlayer.play()
        
    }
    
    
    
}
