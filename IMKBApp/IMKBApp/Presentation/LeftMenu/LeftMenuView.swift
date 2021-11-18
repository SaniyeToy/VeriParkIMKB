//
//  LeftMenuView.swift
//  IMKBApp
//
//  Created by MacOS on 18.11.2021.
//

import Foundation
import UIKit
import Material

class LeftMenuView: UIView {
    
    lazy var leftMenuContentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.layer.masksToBounds = true
        view.layer.shouldRasterize = true
        return view
    }()
    
    
    lazy var leftMenuToolBarView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(rgb: 0xF3F3F3)
        view.layer.masksToBounds = true
        view.layer.shouldRasterize = true
        return view
    }()
    
    
    lazy var leftMenuImageView: UIImageView = {
       let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "leftMenuLogo")
        imageView.contentMode = .scaleAspectFill
        imageView.layer.masksToBounds = true
        return imageView
    }()
    lazy var leftMenuTitleLabel : UILabel = {
        let label = UILabel()
        label.backgroundColor = .clear
        label.textColor = UIColor.black
        label.textAlignment = .left
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.text = "VERIPARK"
        label.numberOfLines = 1
        label.textColor = .red
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var leftMenuSubTitleLabel : UILabel = {
        let label = UILabel()
        label.backgroundColor = .clear
        label.textColor = UIColor.black
        label.textAlignment = .left
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.text = "IMKB Hisse Senetleri/Endeksler"
        label.numberOfLines = 1
        label.textColor = .red
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    } ()
    
    lazy var leftMenuAllStocksButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Hisse ve Endeksler", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.contentHorizontalAlignment = .left
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    lazy var leftMenuIncreasingButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Yükselenler", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.contentHorizontalAlignment = .left
        button.translatesAutoresizingMaskIntoConstraints = false
        button.clipsToBounds = true
        return button
    }()
    lazy var leftMenuDecreasingButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Düşenler", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.contentHorizontalAlignment = .left
        button.translatesAutoresizingMaskIntoConstraints = false
        button.clipsToBounds = true
        return button
    }()
    lazy var leftMenuVolume30Button: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Hacme Göre - 30", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.contentHorizontalAlignment = .left
        button.translatesAutoresizingMaskIntoConstraints = false
        button.clipsToBounds = true
        return button
    }()
    lazy var leftMenuVolume50Button: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Hacme Göre - 50", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.contentHorizontalAlignment = .left
        button.translatesAutoresizingMaskIntoConstraints = false
        button.clipsToBounds = true
        return button
    }()
    lazy var leftMenuVolume100Button: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Hacme Göre - 100", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.contentHorizontalAlignment = .left
        button.translatesAutoresizingMaskIntoConstraints = false
        button.clipsToBounds = true
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setLeftMenuContentView()
        setupGradientView(view: leftMenuToolBarView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    var gradient = CAGradientLayer()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        gradient.frame = leftMenuToolBarView.bounds
    }
    
    func setupGradientView(view: UIView){
        
        gradient.colors = [UIColor.black.withAlphaComponent(0.0).cgColor, UIColor.black.withAlphaComponent(0.6).cgColor]
        gradient.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradient.endPoint = CGPoint(x: 1.0, y: 1.0)
        gradient.opacity = 5.0
        view.layer.insertSublayer(gradient, at: 0)
    }
    
}
