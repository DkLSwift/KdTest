//
//  KardHomeViewController.swift
//  Kd_test
//
//  Created by Eric DkL on 23/07/2019.
//  Copyright © 2019 Eric DkL. All rights reserved.
//

import UIKit
import Apollo

class KardHomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    let navView = UIView()
    let friendsBtn = UIButton()
    let meBtn = UIButton()
    
    let cellId = "cellId"
    
    var results = [Result]()
    
    let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Service.shared.getMe { (results, err) in
            guard let res = results else { return }
            self.results = res
            
            self.tableView.reloadData()
        }

        setNavView()
        setupTableView()
        
    }
    
    func setNavView() {
        view.addSubview(navView)
        navView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor, size: .init(width: 0, height: 70))
        
        friendsBtn.constrainHeight(constant: 50)
        friendsBtn.constrainWidth(constant: 100)
        meBtn.constrainHeight(constant: 50)
        meBtn.constrainWidth(constant: 100)
        
        let hStack = UIStackView(arrangedSubviews: [friendsBtn, meBtn])
        hStack.spacing = 20
        navView.addSubview(hStack)
        hStack.translatesAutoresizingMaskIntoConstraints = false
        hStack.topAnchor.constraint(equalTo: navView.topAnchor, constant: 20).isActive = true
        hStack.centerXAnchor.constraint(equalTo: navView.centerXAnchor).isActive = true
        
        friendsBtn.setTitle("FRIENDS", for: .normal)
        friendsBtn.setTitleColor(.lightGray, for: .normal)
        meBtn.setTitle("ME", for: .normal)
        meBtn.setTitleColor(.blue, for: .normal)
    }
    
    func setupTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.separatorStyle = .none
        tableView.allowsSelection = false
        
        view.addSubview(tableView)
        tableView.anchor(top: navView.bottomAnchor, leading: view.leadingAnchor, bottom: view.bottomAnchor, trailing: view.trailingAnchor)
        
        tableView.register(KardHomeCell.self, forCellReuseIdentifier: cellId)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return results.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! KardHomeCell
        
        let result = self.results[indexPath.row]
        
        cell.companyName.text = result.title
        cell.companyDesc.text = result.description
        cell.amount.text = String(result.value) + result.currency
        
        let url = URL(string: result.imageUrl)
        let data = try? Data(contentsOf: url!)
        cell.icon.image = UIImage(data: data!)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
