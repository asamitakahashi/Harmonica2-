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

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    @IBOutlet weak var button10: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 再生する audio ファイルのパスを取得
        let audioPath = Bundle.main.path(forResource: "ド", ofType:"m4a")!
        let audioUrl = URL(fileURLWithPath: audioPath)
                
        // auido を再生するプレイヤーを作成する
        var audioError:NSError?
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: audioUrl)
        } catch let error as NSError {
            audioError = error
            audioPlayer = nil
        }
        
        // エラーが起きたとき
        if let error = audioError {
            print("Error \(error.localizedDescription)")
        }
        
        audioPlayer.delegate = self
        audioPlayer.prepareToPlay()
        
    }
    
    // ボタンがタップされた時の処理
    @IBAction func button(_ sender: Any) {
        audioPlayer.play()
        button.setTitle("❶", for: UIControl.State())
    }

    @IBAction func Button(_ sender: Any) {
    audioPlayer.stop()
        button.setTitle("①", for: UIControl.State())
    }

}
