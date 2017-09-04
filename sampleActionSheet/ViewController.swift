//
//  ViewController.swift
//  sampleActionSheet
//
//  Created by 加藤諒 on 2017/09/04.
//  Copyright © 2017年 mirai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var myLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
  //ボタンを押されたときに発動する動作
  @IBAction func tapSelect(_ sender: UIButton) {
    
    //アクションシートを作成
    let actionSheet = UIAlertController(title: "どのアクティビティにする？", message: "今日のアクティビティ", preferredStyle: .actionSheet)
    
    
    //アクティビティボタン１を追加！
    actionSheet.addAction(UIAlertAction(title: "ヨガ", style: .default, handler: {action in self.Activity(name: "ヨガ")}))
    //アクティビティボタン２を追加！
    actionSheet.addAction(UIAlertAction(title: "バスケ", style: .default, handler: {action in self.Activity(name: "バスケ")}))
    
    //アクティビティボタン3を追加！
    actionSheet.addAction(UIAlertAction(title: "スポーツ", style: .default, handler: {action in self.Activity(name: "スポーツに")}))
    
    //削除ボタンを追加する  destrctiveは赤色で表示される　”危険を助長するようなデザイン”
    actionSheet.addAction(UIAlertAction(title: "ムエタイ", style: .destructive, handler: {action in self.decu(name: "ムエタイ")}))

    
    //キャンセルボタンを追加
    actionSheet.addAction(UIAlertAction(title: "今日はやめとく", style: .cancel, handler: {action in self.decul(name: "明日")}))

    
    //アクションシートを表示
    present(actionSheet,animated: true,completion: nil)
  }
  
  
  //アクティビティボタンが押されたら効果を発揮する自作関数
  //Activity 関数名
  //name 引数　(ヨガとかバスケとかが呼び出されたところから代入される)
    func Activity(name: String){
    myLabel.text = "\(name)しよう！"
  }
  
  
  //TODO:削除ボタンが押されたときに呼ばれる関数
  func decu(name: String){
    myLabel.text = "\(name)頑張ろう！"
  }
  
  //Todo:キャンセルボタンが押されたときに呼ばれる関数
  func decul(name: String){
    myLabel.text = "\(name)は行こう"
  }
  
  
  //Todo:作った関数を呼び出すようにしたら、GithubにPUSHしましょう！
  

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

