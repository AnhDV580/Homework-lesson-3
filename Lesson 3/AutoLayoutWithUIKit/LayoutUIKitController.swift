//
//  LayoutUIKitController.swift
//  Lesson 3
//
//  Created by anhdv on 10/10/21.
//

import UIKit

class LayoutUIKitController: UIViewController {
    
    let imageView : UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = UIImage(named: "earth")
        return view
    }()
    
    let aboutLabel : UILabel = {
       let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.87, green: 0.63, blue: 0.12, alpha: 1.00)
        view.textColor = UIColor(red: 0.99, green: 0.93, blue: 0.79, alpha: 1.00)
        view.text = "About"
        view.textAlignment = .center
        return view
    }()
    
    let missionsLabel : UILabel = {
       let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.99, green: 0.93, blue: 0.79, alpha: 1.00)
        view.textColor = UIColor(red: 0.60, green: 0.53, blue: 0.40, alpha: 1.00)
        view.text = "Missions"
        view.textAlignment = .center
        return view
    }()
    
    let tabBarView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.99, green: 0.93, blue: 0.79, alpha: 1.00)
        return view
    }()
    
    let textView : UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Earth is the only astronomical object known to harbour and support life. \n\nAbout 29.2% of Earth's surface is land consisting of continents and islands. The remaining 70.8% is covered with water, mostly by oceans, seas and other salt-water bodies, but also by lakes and rivers which together constitute the hydrosphere."
        view.textColor = UIColor(red: 0.60, green: 0.53, blue: 0.40, alpha: 1.00)
        view.numberOfLines = 0
        return view
    }()
    
    let buttonChangeDestination : UIButton = {
        let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.99, green: 0.93, blue: 0.79, alpha: 1.00)
        view.setTitleColor(UIColor(red: 0.60, green: 0.53, blue: 0.40, alpha: 1.00), for: .normal)
        view.setTitle("Change Destination", for: .normal)
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        UIColor(red: 0.87, green: 0.63, blue: 0.12, alpha: 1.00)
        view.translatesAutoresizingMaskIntoConstraints = false
        setupLayout()
    }
    
    func setupLayout() -> Void {

        tabBarView.addSubview(aboutLabel)
        tabBarView.addSubview(missionsLabel)
        
        self.view.addSubview(imageView)
        self.view.addSubview(tabBarView)
        self.view.addSubview(textView)
        self.view.addSubview(buttonChangeDestination)

        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.safeTopAnchor, constant: 10),
            imageView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10),
            imageView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10),
            imageView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 2/5, constant: 0),
            
            tabBarView.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 20),
            tabBarView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30),
            tabBarView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -30),
            tabBarView.heightAnchor.constraint(equalToConstant: 50),
            
            aboutLabel.topAnchor.constraint(equalTo: tabBarView.topAnchor, constant: 0),
            aboutLabel.leadingAnchor.constraint(equalTo: tabBarView.leadingAnchor, constant: 0),
            aboutLabel.bottomAnchor.constraint(equalTo: tabBarView.bottomAnchor, constant: 0),
            aboutLabel.widthAnchor.constraint(equalTo: tabBarView.widthAnchor, multiplier: 1/2, constant: 0),
            
            missionsLabel.topAnchor.constraint(equalTo: tabBarView.topAnchor, constant: 0),
            missionsLabel.bottomAnchor.constraint(equalTo: tabBarView.bottomAnchor, constant: 0),
            missionsLabel.trailingAnchor.constraint(equalTo: tabBarView.trailingAnchor, constant: 0),
            missionsLabel.widthAnchor.constraint(equalTo: tabBarView.widthAnchor, multiplier: 1/2, constant: 0),

            textView.topAnchor.constraint(equalTo: tabBarView.bottomAnchor, constant: 20),
            textView.leadingAnchor.constraint(equalTo: tabBarView.leadingAnchor, constant: 0),
            textView.trailingAnchor.constraint(equalTo: tabBarView.trailingAnchor, constant: 0),

            buttonChangeDestination.heightAnchor.constraint(equalToConstant: 60),
            buttonChangeDestination.leadingAnchor.constraint(equalTo: tabBarView.leadingAnchor, constant: 0),
            buttonChangeDestination.trailingAnchor.constraint(equalTo: tabBarView.trailingAnchor, constant: 0),
            buttonChangeDestination.bottomAnchor.constraint(equalTo: view.safeBottomAnchor, constant: -20),
        ])
    }
}

extension UIView {

  var safeTopAnchor: NSLayoutYAxisAnchor {
    if #available(iOS 11.0, *) {
      return safeAreaLayoutGuide.topAnchor
    }
    return topAnchor
  }

  var safeLeftAnchor: NSLayoutXAxisAnchor {
    if #available(iOS 11.0, *){
      return safeAreaLayoutGuide.leftAnchor
    }
    return leftAnchor
  }

  var safeRightAnchor: NSLayoutXAxisAnchor {
    if #available(iOS 11.0, *){
      return safeAreaLayoutGuide.rightAnchor
    }
    return rightAnchor
  }

  var safeBottomAnchor: NSLayoutYAxisAnchor {
    if #available(iOS 11.0, *) {
      return safeAreaLayoutGuide.bottomAnchor
    }
    return bottomAnchor
  }
}

