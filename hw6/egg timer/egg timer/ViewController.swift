//
//  ViewController.swift
//  egg timer
//
//  Created by Zhannel Omarova on 23.10.2024.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var timer: Timer?
    var counter: Int = 0
    var urlPath = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
    var player: AVPlayer!
    
    
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var remainingTime: UILabel!
    
    @IBAction func selectEgg(_ sender: UIButton) {
        var duration: Int = 0
        self.counter = 0
        timer?.invalidate()
        self.progressBar.setProgress(0.0, animated: true)
        
        if let url = urlPath {
            player = AVPlayer(url: url)
        } else {
            print("Something went wrong")
        }
        
        switch sender.tag {
        case 0:
            duration = 300
        case 1:
            duration = 420
        case 2:
            duration = 720
        default:
            print("Something wrong")
        }
        
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { timer in
            self.counter += 1
            self.progressBar.setProgress((Float(self.counter)/Float(duration)), animated: true)
            self.remainingTime.text = "\(self.getRemainingTime(self.counter, duration))"
            
            print(Float(self.counter)/Float(duration))
            
            if duration == self.counter {
                self.counter = 0
                timer.invalidate()
                self.player.play()
            }
        })
    }
    
    func getRemainingTime(_ counter: Int, _ duration: Int) -> String {
        let remainingTime = duration - counter
        let minutes = remainingTime / 60
        let seconds = remainingTime % 60
        
        let minutesString = String(format: "%02d", minutes)
        let secondsString = String(format: "%02d", seconds)
        
        return "\(minutesString):\(secondsString)"
    }

    
    

}

