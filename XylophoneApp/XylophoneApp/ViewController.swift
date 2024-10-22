//
//  ViewController.swift
//  XylophoneApp
//
//  Created by Zhannel Omarova on 23.10.2024.
//

import UIKit
import AVFoundation


class ViewController: UIViewController, AVAudioPlayerDelegate {
    var audio: AVAudioPlayer!
    var soundArray = ["C", "D", "E", "F", "G", "A", "B"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        let selectedSound = soundArray[(sender.tag)]
        playingSound(choosedSound: selectedSound)
    }
    
    func playingSound(choosedSound: String){
          let soundurl = Bundle.main.url (forResource: choosedSound, withExtension: ".wav")
          
          do {
              try audio = AVAudioPlayer(contentsOf: soundurl!)
              audio.prepareToPlay()
              audio.play()

          }
          catch {
              print(error)
          }
      }
    
}

