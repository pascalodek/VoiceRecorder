//
//  PlaySoundsViewController.swift
//  VoiceRecorder
//
//  Created by PASCAL ARINGO ODEK on 12/24/14.
//  Copyright (c) 2014 Pascal Odek. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {

    var audioPlayer : AVAudioPlayer!
    var receivedAudio : RecordedAudio!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
//        if  var filePath = NSBundle.mainBundle().pathForResource("movie_quote", ofType: "mp3"){
//            var filePathUrl=NSURL.fileURLWithPath(filePath)
//            
//        }else{
//            println("the file path is empty")
//        }
//        
        audioPlayer = AVAudioPlayer (contentsOfURL: receivedAudio.filePathUrl, error: nil)
        audioPlayer.enableRate=true

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func playSlow(sender: UIButton) {
        
        audioPlayer.rate = 0.5
        audioPlayer.currentTime = 0.0
        audioPlayer.play()
        
        
    }
    
    @IBAction func playfast(sender: UIButton) {
        audioPlayer.rate = 1.5
        audioPlayer.currentTime = 0.0
        
        audioPlayer.play()
        

        
    }
    @IBAction func stopButton(sender: UIButton) {
        
        audioPlayer.stop()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
