//
//  ViewController.swift
//  sampleActionSheet
//
//  Created by 加藤　大起 on 2017/10/24.
//  Copyright © 2017年 Taiki Kato. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var label: UILabel!
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func myButton(_ sender: UIButton) {
        //アクションシート作成
        let actionSheet = UIAlertController(title: "どのアクティビティにする？", message: "今日のアクティビティ", preferredStyle: .actionSheet)
//        //アクティビティボタン１を追加
//        actionSheet.addAction(UIAlertAction(
//            title: "ヨガ",
//            style: .default,
//            handler: { action in self.label.text = "、行こう"}))
        actionSheet.addAction(UIAlertAction(
            title: "ヨガ",
            style: .default,
            handler: { action in self.tapActivity(name: "ヨガ") }))

        //アクティビティボタン２を追加
        actionSheet.addAction(UIAlertAction(
            title: "バスケ",
            style: .default,
            handler: { action in self.tapActivity(name: "バスケ") }))

        //削除ボタンを追加
        actionSheet.addAction(UIAlertAction(
            title: "ムエタイ",
            style: .destructive,
            handler: { action in self.Destructive()}))

        //キャンセルボタンを追加
        actionSheet.addAction(UIAlertAction(
            title: "今日はやめとく",
            style: .cancel,
            handler: { action in self.Cancel()}))

        //アクションシートを表示
        present(actionSheet,animated: true,completion: nil)
    }
    
    //アクティビティボタンが押されたら起動する自作関数
    // Activity 関数名
    //name 引数(呼び出されたところで処理をするための情報をもらう時にしようする)
    //nae:String 引数nameはString型と型指定している
    func tapActivity(name: String) -> Void{
        
        label.text = "\(name)、行こう!"
    }
    

    func Destructive(){
        
        label.text = "ムエタイ、頑張ろう！"
    }
    
    func Cancel() -> Void{
        
        label.text = "明日は行こう!"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

