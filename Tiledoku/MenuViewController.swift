//
//  MenuViewController.swift
//  Tiledoku
//
//  Created by Vincent Hoang on 4/10/20.
//  Copyright © 2020 Vincent Hoang. All rights reserved.
//

import Foundation
import UIKit
import SpriteKit
import GameplayKit

class MenuViewController: UIViewController, BoardSizeControllerDelegate {
    
    @IBOutlet weak var startButton: UIButton!
    
    @IBAction func openBoardSizeView(_ sender: Any) {
        self.definesPresentationContext = true
        self.providesPresentationContextTransitionStyle = true
        
        self.overlayBlurredBackgroundView()
    }
    
    @IBAction func closeBoardSizeView(_ sender: Any) {
        self.removeBlurredBackgroundView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override var shouldAutorotate: Bool {
        return true
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .portrait
        } else {
            return .all
        }
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    func overlayBlurredBackgroundView() {
        let blurredBackgroundView = UIVisualEffectView()
        
        blurredBackgroundView.frame = view.frame
        blurredBackgroundView.effect = UIBlurEffect(style: .dark)
        
        view.addSubview(blurredBackgroundView)
    }
    
    func removeBlurredBackgroundView() {
        
        for subview in view.subviews {
            if subview.isKind(of: UIVisualEffectView.self) {
                subview.removeFromSuperview()
            }
        }
    }
    
    func startGame(boardSize: BoardSize) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        switch (segue.identifier ?? "") {
        case "startButtonPressed":
            guard let boardSizeViewController = segue.destination as? BoardSizeViewController else {
                fatalError("Unexpected destination: \(segue.destination)")
            }
            
            overlayBlurredBackgroundView()
            boardSizeViewController.mDelegate = self
            boardSizeViewController.modalPresentationStyle = .overFullScreen
        
        default:
            fatalError("Unexpected Segue Identifier: \(segue.identifier ?? "No segue available")")
        }
    }
    
}

@IBDesignable extension UIButton {
    
    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        set {
            guard let uiColor = newValue else { return }
            layer.borderColor = uiColor.cgColor
        }
        get {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
    }
}
