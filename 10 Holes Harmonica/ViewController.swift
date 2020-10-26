//
//  ViewController.swift
//  10 Holes Harmonica
//
//  Created by user on 2020/09/21.
//  Copyright © 2020 asamin.t. All rights reserved.
//
import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var audioPlayer:AVAudioPlayer!
    
    var allAudioPlayers: [AVAudioPlayer] = []
    
    var startIndex = 0


    //ハモニカimageの上のボタン
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    @IBOutlet weak var button10: UIButton!
    
    //ハモニカimageの2段上のボタン
    @IBOutlet weak var HighBbuttonh8: UIButton!
    @IBOutlet weak var HighButton9: UIButton!
    @IBOutlet weak var HighBbutton10: UIButton!
    
    //ハモニカimageの下のボタン
    @IBOutlet weak var underbutton1: UIButton!
    @IBOutlet weak var underbutton2: UIButton!
    @IBOutlet weak var underbutton3: UIButton!
    @IBOutlet weak var underbutton4: UIButton!
    @IBOutlet weak var underbutton5: UIButton!
    @IBOutlet weak var underbutton6: UIButton!
    @IBOutlet weak var underbutton7: UIButton!
    @IBOutlet weak var underbutton8: UIButton!
    @IBOutlet weak var underbutton9: UIButton!
    @IBOutlet weak var underbutton10: UIButton!
    
    //ハモニカimageの2段下のボタン
    @IBOutlet weak var bendbutton1: UIButton!
    @IBOutlet weak var bendbutton2: UIButton!
    @IBOutlet weak var bendbutton3: UIButton!
    @IBOutlet weak var bendbutton4: UIButton!
    @IBOutlet weak var bendbutton5: UIButton!
    @IBOutlet weak var bendbutton6: UIButton!
    

    //鍵盤Key Borad imageの白鍵ボタン
    @IBOutlet weak var KBbuttonC1: UIButton!
    @IBOutlet weak var KBbuttonD1: UIButton!
    @IBOutlet weak var KBbuttonE1: UIButton!
    @IBOutlet weak var KBbuttonF1: UIButton!
    @IBOutlet weak var KBbuttonG1: UIButton!
    @IBOutlet weak var KBbuttonA1: UIButton!
    @IBOutlet weak var KBbuttonB1: UIButton!
    
    @IBOutlet weak var KBbuttonC2: UIButton!
    @IBOutlet weak var KBbuttonD2: UIButton!
    @IBOutlet weak var KBbuttonE2: UIButton!
    @IBOutlet weak var KBbuttonF2: UIButton!
    @IBOutlet weak var KBbuttonG2: UIButton!
    @IBOutlet weak var KBbuttonA2: UIButton!
    @IBOutlet weak var KBbuttonB2: UIButton!
    
    @IBOutlet weak var KBbuttonC3: UIButton!
    @IBOutlet weak var KBbuttonD3: UIButton!
    @IBOutlet weak var KBbuttonE3: UIButton!
    @IBOutlet weak var KBbuttonF3: UIButton!
    @IBOutlet weak var KBbuttonG3: UIButton!
    @IBOutlet weak var KBbuttonA3: UIButton!
    @IBOutlet weak var KBbuttonB3: UIButton!
    
    @IBOutlet weak var KBbuttonC4: UIButton!
    @IBOutlet weak var KBbuttonD4: UIButton!
    @IBOutlet weak var KBbuttonE4: UIButton!
    @IBOutlet weak var KBbuttonF4: UIButton!
    
    //鍵盤Key Board image　の黒鍵ボタン
    @IBOutlet weak var BKBbuttonDb1: UIButton!
    @IBOutlet weak var BKBbuttonEb1: UIButton!
    @IBOutlet weak var BKBbuttonFS1: UIButton!
    @IBOutlet weak var BKBbuttonAb1: UIButton!
    @IBOutlet weak var BKBbuttonBb1: UIButton!
    
    @IBOutlet weak var BKBbuttonDb2: UIButton!
    @IBOutlet weak var BKBbuttonEb2: UIButton!
    @IBOutlet weak var BKBbuttonFS2: UIButton!
    @IBOutlet weak var BKBbuttonAb2: UIButton!
    @IBOutlet weak var BKBbuttonBb2: UIButton!
    
    @IBOutlet weak var BKBbuttonDb3: UIButton!
    @IBOutlet weak var BKBbuttonEb3: UIButton!
    @IBOutlet weak var BKBbuttonFS3: UIButton!
    @IBOutlet weak var BKBbuttonAb3: UIButton!
    @IBOutlet weak var BKBbuttonBb3: UIButton!
    
    @IBOutlet weak var BKBbuttonDb4: UIButton!
    @IBOutlet weak var BKBbuttonEb4: UIButton!
    @IBOutlet weak var BKBbuttonFS4: UIButton!
    
    
    @IBOutlet weak var HMC: UIButton!
    @IBOutlet weak var HMG: UIButton!
    
    
    
    @IBOutlet var ScaleC: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.audioMaker()
        //白鍵ボタン　C1〜B1
        self.KBbuttonC1.addTarget(self, action: #selector(tappedKBC1(_:)), for: .touchDown)
        self.KBbuttonD1.addTarget(self, action: #selector(tappedKBD1(_:)), for: .touchDown)
        self.KBbuttonE1.addTarget(self, action: #selector(tappedKBE1(_:)), for: .touchDown)
        self.KBbuttonF1.addTarget(self, action: #selector(tappedKBF1(_:)), for: .touchDown)
        self.KBbuttonG1.addTarget(self, action: #selector(tappedKBG1(_:)), for: .touchDown)
        self.KBbuttonA1.addTarget(self, action: #selector(tappedKBA1(_:)), for: .touchDown)
        self.KBbuttonB1.addTarget(self, action: #selector(tappedKBB1(_:)), for: .touchDown)
        
        //白鍵ボタン　C2〜B2
        self.KBbuttonC2.addTarget(self, action: #selector(tappedKBC2(_:)), for: .touchDown)
        self.KBbuttonD2.addTarget(self, action: #selector(tappedKBD2(_:)), for: .touchDown)
        self.KBbuttonE2.addTarget(self, action: #selector(tappedKBE2(_:)), for: .touchDown)
        self.KBbuttonF2.addTarget(self, action: #selector(tappedKBF2(_:)), for: .touchDown)
        self.KBbuttonG2.addTarget(self, action: #selector(tappedKBG2(_:)), for: .touchDown)
        self.KBbuttonA2.addTarget(self, action: #selector(tappedKBA2(_:)), for: .touchDown)
        self.KBbuttonB2.addTarget(self, action: #selector(tappedKBB2(_:)), for: .touchDown)

        //白鍵ボタン　C3〜B3
        self.KBbuttonC3.addTarget(self, action: #selector(tappedKBC3(_:)), for: .touchDown)
        self.KBbuttonD3.addTarget(self, action: #selector(tappedKBD3(_:)), for: .touchDown)
        self.KBbuttonE3.addTarget(self, action: #selector(tappedKBE3(_:)), for: .touchDown)
        self.KBbuttonF3.addTarget(self, action: #selector(tappedKBF3(_:)), for: .touchDown)
        self.KBbuttonG3.addTarget(self, action: #selector(tappedKBG3(_:)), for: .touchDown)
        self.KBbuttonA3.addTarget(self, action: #selector(tappedKBA3(_:)), for: .touchDown)
        self.KBbuttonB3.addTarget(self, action: #selector(tappedKBB3(_:)), for: .touchDown)
 
        //白鍵ボタン　C4〜B4
        self.KBbuttonC4.addTarget(self, action: #selector(tappedKBC4(_:)), for: .touchDown)
        self.KBbuttonD4.addTarget(self, action: #selector(tappedKBD4(_:)), for: .touchDown)
        self.KBbuttonE4.addTarget(self, action: #selector(tappedKBE4(_:)), for: .touchDown)
        self.KBbuttonF4.addTarget(self, action: #selector(tappedKBF4(_:)), for: .touchDown)
        
        }
        
    //白鍵ボタンC1〜B1
    //すべてのAudioPlayersの中から，startIndex＝0番目を再生する
        @objc func tappedKBC1(_ sender: UIButton) {
            allAudioPlayers[self.startIndex].play()
        }
        @objc func tappedKBD1(_ sender: UIButton) {
            allAudioPlayers[self.startIndex + 1].play()
        }
        @objc func tappedKBE1(_ sender: UIButton) {
            allAudioPlayers[self.startIndex + 2].play()
        }

    @objc func tappedKBF1(_ sender: UIButton) {
        allAudioPlayers[self.startIndex + 3].play()
    }
    @objc func tappedKBG1(_ sender: UIButton) {
        allAudioPlayers[self.startIndex + 4].play()
    }
    @objc func tappedKBA1(_ sender: UIButton) {
        allAudioPlayers[self.startIndex + 5].play()
    }
    
    @objc func tappedKBB1(_ sender: UIButton) {
        allAudioPlayers[self.startIndex + 6].play()
    }
    
    //白鍵ボタンC2〜B2
    @objc func tappedKBC2(_ sender: UIButton) {
        allAudioPlayers[self.startIndex + 7].play()
    }
    @objc func tappedKBD2(_ sender: UIButton) {
        allAudioPlayers[self.startIndex + 8].play()
    }
    @objc func tappedKBE2(_ sender: UIButton) {
        allAudioPlayers[self.startIndex + 9].play()
    }
    @objc func tappedKBF2(_ sender: UIButton) {
        allAudioPlayers[self.startIndex + 10].play()
    }
    @objc func tappedKBG2(_ sender: UIButton) {
        allAudioPlayers[self.startIndex + 11].play()
    }
    @objc func tappedKBA2(_ sender: UIButton) {
        allAudioPlayers[self.startIndex + 12].play()
    }
    @objc func tappedKBB2(_ sender: UIButton) {
        allAudioPlayers[self.startIndex + 13].play()
    }
    
    //白鍵ボタンC3〜B3
    @objc func tappedKBC3(_ sender: UIButton) {
        allAudioPlayers[self.startIndex].play()
    }
    @objc func tappedKBD3(_ sender: UIButton) {
        allAudioPlayers[self.startIndex + 1].play()
    }
    @objc func tappedKBE3(_ sender: UIButton) {
        allAudioPlayers[self.startIndex + 2].play()
    }
    @objc func tappedKBF3(_ sender: UIButton) {
        allAudioPlayers[self.startIndex].play()
    }
    @objc func tappedKBG3(_ sender: UIButton) {
        allAudioPlayers[self.startIndex + 1].play()
    }
    @objc func tappedKBA3(_ sender: UIButton) {
        allAudioPlayers[self.startIndex + 2].play()
    }
    @objc func tappedKBB3(_ sender: UIButton) {
        allAudioPlayers[self.startIndex + 2].play()
    }
    
    //白鍵ボタンC4〜F4
    @objc func tappedKBC4(_ sender: UIButton) {
        allAudioPlayers[self.startIndex].play()
    }
    @objc func tappedKBD4(_ sender: UIButton) {
        allAudioPlayers[self.startIndex + 1].play()
    }
    @objc func tappedKBE4(_ sender: UIButton) {
        allAudioPlayers[self.startIndex + 2].play()
    }
    @objc func tappedKBF4(_ sender: UIButton) {
        allAudioPlayers[self.startIndex].play()
    }
    
    

       // キー切り替えボタンアクション
        @IBAction func HMCTapped(_ sender: UIButton) {
                self.startIndex = 0
        }
                    
    
    @IBAction func HMGTapped(_ sender: Any) {
        
        self.startIndex = 1
        
    }
    
    
    
    
    private func audioMaker() {
        let fileNames = ["ド","レ","ミ","ファ","ソ","ラ","シ","ド　高"]
        var audioPlayers: [AVAudioPlayer] = []
        for fileName in fileNames {
            // 再生する audio ファイルのパスを取得
            let audioPath = Bundle.main.path(forResource: fileName, ofType:"m4a")!
            let audioUrl = URL(fileURLWithPath: audioPath)
            
            // auido を再生するプレイヤーを作成する
            let audioPlayer = try! AVAudioPlayer(contentsOf: audioUrl)
            audioPlayer.delegate = self
            audioPlayer.prepareToPlay()
            audioPlayers.append(audioPlayer)
        }
        self.allAudioPlayers = audioPlayers
    }
    
    
        
        
        
        
        // 再生する audio ファイルのパスを取得
      //  let audioPath = Bundle.main.path(forResource: "ド", ofType:"m4a")!
       // let audioUrl = URL(fileURLWithPath: audioPath)
                
        // auido を再生するプレイヤーを作成する
       // var audioError:NSError?
       // do {
         //   audioPlayer = try AVAudioPlayer(contentsOf: audioUrl)
        //} catch let error as NSError {
        //    audioError = error
        //    audioPlayer = nil
       // }
        // エラーが起きたとき
        //if let error = audioError {
        //    print("Error \(error.localizedDescription)")
        //}
        
       // audioPlayer.delegate = self
       // audioPlayer.prepareToPlay()
       //
   // }
    
    // ボタンがタップされた時の処理
    
 //   @IBAction func button(_ sender: Any) {
 //       if ( audioPlayer.isPlaying ){
 //           audioPlayer.stop()
  //           let audioPath = Bundle.main.path(forResource: "ド", ofType:"m4a")!
 //            let audioUrl = URL(fileURLWithPath: audioPath)
 //            self.audioPlayer = try? AVAudioPlayer(contentsOf: audioUrl)
  //          button1.setTitle("①", for: UIControl.State())
  //          KBbuttonC1.setTitle("C", for: UIControl.State())
        }
  //      else{
  //          audioPlayer.play()
  //          button1.setTitle("❶", for: UIControl.State())
  //          KBbuttonC1.setTitle("❶", for: UIControl.State())
  //      }
  //  }
    

