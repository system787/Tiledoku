//
//  BoardSizeViewController.swift
//  Tiledoku
//
//  Created by Vincent Hoang on 4/10/20.
//  Copyright © 2020 Vincent Hoang. All rights reserved.
//

import Foundation
import UIKit

protocol BoardSizeControllerDelegate: class {
    func removeBlurredBackgroundView()
    func startGame(boardSize: BoardSize)
}

class BoardSizeViewController: UIViewController {
    
    weak var mDelegate: BoardSizeControllerDelegate?
    
    @IBOutlet weak var cancelButton: UIButton!
    @IBAction func cancelButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        mDelegate?.removeBlurredBackgroundView()
    }
    
    @IBOutlet weak var largeButton: UIButton!
    @IBAction func largeButtonPressed(_ sender: Any) {
        mDelegate?.removeBlurredBackgroundView()
        mDelegate?.startGame(boardSize: BoardSize.LARGE)
    }
    
    @IBOutlet weak var mediumButton: UIButton!
    @IBAction func mediumButtonPressed(_ sender: Any) {
        mDelegate?.removeBlurredBackgroundView()
        mDelegate?.startGame(boardSize: BoardSize.MEDIUM)
    }
    
    @IBOutlet weak var smallButton: UIButton!
    @IBAction func smallButtonPressed(_ sender: Any) {
        mDelegate?.removeBlurredBackgroundView()
        mDelegate?.startGame(boardSize: BoardSize.SMALL)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        
        view.backgroundColor = UIColor.clear
            
        cancelButton.imageView?.contentMode = .scaleAspectFit
        
        let cancelImage = UIImage(named: "Cancel")
        
        let tintedCancelImage = cancelImage?.withRenderingMode(.alwaysTemplate)
        cancelButton.setImage(tintedCancelImage, for: .normal)
        cancelButton.tintColor = .white
    }
}
