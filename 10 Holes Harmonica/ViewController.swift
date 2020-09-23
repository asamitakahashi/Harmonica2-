//
//  ViewController.swift
//  10 Holes Harmonica
//
//  Created by user on 2020/09/21.
//  Copyright © 2020 asamin.t. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Picker: UIPickerView!
    
    let dataList = [
        "C","Db","D","Eb","E","F","G","Ab","A","Bb","B",
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    // UIPickerViewの列の数
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // UIPickerViewの行数、リストの数
    func pickerView(_ pickerView: UIPickerView,
                    numberOfRowsInComponent component: Int) -> Int {
        return dataList.count
    }
    
    // UIPickerViewの最初の表示
    func pickerView(_ pickerView: UIPickerView,
                    titleForRow row: Int,
                    forComponent component: Int) -> String? {
        
        return dataList[row]
    }

}



//1つ目は，キーの選択　カタカナ表記と英語表記  キー　ド　　ドれミふぁソらしド　キーC CDEFGABC
//2つ目は，移動ドの表記．ドれミ表記か，CDE表記か，off．

