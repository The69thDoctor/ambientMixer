//
//  ViewController.swift
//  ambientMixer
//
//  Created by Mobile Apps 31 on 10/17/22.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {
    var audioTrack: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func startTapped(_ sender: UIButton) {
        globalPlayer(whatSong: "rain")
        globalPlayer(whatSong: "crickets")
        globalPlayer(whatSong: "carPan")
        globalPlayer(whatSong: "frogs")
    }
    
    @IBAction func vSlider(_ sender: UISlider) {
        let v = sender.value
        print(v)
        audioTrack?.volume = v
    }
    @IBAction func vSlider2(_ sender: UISlider) {
        let v2 = sender.value
        print(v2)
        audioTrack?.volume = v2
    }
    @IBAction func vSlider3(_ sender: UISlider) {
        let v3 = sender.value
        print(v3)
        audioTrack?.volume = v3
    }
    @IBAction func vSlider4(_ sender: UISlider) {
        let v4 = sender.value
        print(v4)
        audioTrack?.volume = v4
    }
    
    @IBAction func pSlider(_ sender: UISlider) {
        let p = sender.value
        print(p)
        audioTrack?.pan = p
    }
    @IBAction func pSlider2(_ sender: UISlider) {
        let p2 = sender.value
        print(p2)
        audioTrack?.pan = p2
    }
    @IBAction func pSlider3(_ sender: UISlider) {
        let p3 = sender.value
        print(p3)
        audioTrack?.pan = p3
    }
    @IBAction func pSlider4(_ sender: UISlider) {
        let p4 = sender.value
        print(p4)
        audioTrack?.pan = p4
    }
    
    @IBAction func soloMuted(_ sender: UISwitch) {
    }
    @IBAction func soloMuted2(_ sender: UISwitch) {
    }
    @IBAction func muteMuted(_ sender: UISwitch) {
    }
    @IBAction func muteMuted2(_ sender: UISwitch) {
    }
    
    @IBAction func stopTapped(_ sender: UIButton) {
        audioTrack?.stop()
    }
    
    func globalPlayer(whatSong: String){
        // sometimes doesn't work, but sometimes does.
        print("rain, carPan, crickets, frogs")
        let path = Bundle.main.path(forResource: whatSong, ofType: "mp3")!
        let url = URL(fileURLWithPath: path)
        do {
            audioTrack = try AVAudioPlayer(contentsOf: url)
        //  mPlayer?.numberOfLoops = 15
            audioTrack?.play()
            
        } catch {
            print("sound did not load")
        }
    }
}

