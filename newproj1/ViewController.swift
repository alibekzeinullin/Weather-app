//
//  ViewController.swift
//  newproj1
//
//  Created by Admin on 31.01.2023.
//

import UIKit
import SnapKit

final class ViewController: UIViewController {
    
    private lazy var myRichLabel: UILabel = {
        let label = UILabel()
        label.text = "I am Rich!"
        label.textColor = .white
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 40)
        return label
    }()
    
    private lazy var myDiamondImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "diamond")
        return imageView
    }()
    
    private lazy var myAccountLabel: UILabel = {
        let label = UILabel()
        label.text = "Account money:$"
        label.textAlignment = .center
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 30)
        return label
    }()
    
    private lazy var myChangeButton: UIButton = {
        let button = UIButton()
        button.setTitle("Make me rich", for: .normal)
        button.backgroundColor = .systemGray
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(didPressButton), for: .touchUpInside)
         return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        view.backgroundColor = UIColor(displayP3Red: 83/255, green: 73/255, blue: 120/255, alpha: 1)
        
        setupViews()
        setupConstraints()
        }
    
    @objc func didPressButton(sender: UIButton!){
        myAccountLabel.text = "Account money: \(Int.random(in: 1000...10000))$"          }
    }


//MARK: - Setup views and constraint methods

private extension ViewController {
    
    func setupViews() {
        view.addSubview(myRichLabel)
        view.addSubview(myDiamondImage)
        view.addSubview(myAccountLabel)
        view.addSubview(myChangeButton)
    }
    
    func setupConstraints() {
        myRichLabel.snp.makeConstraints{ make in
            make.bottom.equalTo(myDiamondImage.snp.top).offset(-20)
            make.centerX.equalToSuperview()
        }
        myDiamondImage.snp.makeConstraints { make in
            make.center.equalToSuperview()
            //make.size.equalTo(view.snp.width).multipliedBy(0.9)
            
        }
        
        myAccountLabel.snp.makeConstraints{ make in
            make.top.equalTo(myDiamondImage.snp.bottom)
            make.centerX.equalToSuperview()
        }
        
        myChangeButton.snp.makeConstraints{ make in
            make.top.equalTo(myAccountLabel.snp.bottom).offset(30)
            make.centerX.equalToSuperview()
            make.width.equalToSuperview().dividedBy(2)
            make.height.equalToSuperview().dividedBy(20)
        }
    }
}




