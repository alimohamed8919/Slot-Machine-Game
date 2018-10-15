//
//  HistoryViewController.swift
//  SlotMachineGame
//
//  Created by Ali Mohamed on 10/24/17.
//  Copyright © 2017 Ali Mohamed. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController {

    @IBOutlet weak var historyList: UITextView?
    var history = NSMutableAttributedString()
    @IBOutlet weak var historyListF: UITextView?
    var historyF = NSMutableAttributedString()
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        historyList?.setContentOffset(CGPoint.zero, animated: false)
        historyListF?.setContentOffset(CGPoint.zero, animated: false)
        
        
    }
    
    override func viewDidLoad() {
        
        historyList?.attributedText = history
        historyListF?.attributedText? = historyF
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
