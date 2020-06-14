//
//  ProfileViewController+Constraints.swift
//  FullCircle
//
//  Created by Sunni Tang on 6/13/20.
//  Copyright © 2020 FullCircle. All rights reserved.
//

import UIKit

extension ProfileViewController {
    func addSubviews() {
        view.addSubview(searchBar)
        view.addSubview(userNameLabel)
        view.addSubview(userInfoLabel)
        view.addSubview(actionListTableView)
    }
    
    func addConstraints() {
        setSearchBarConstraints()
        setUserNameLabelConstraints()
        setUserInfoLabelConsraints()
        setActionListTableViewConstraints()
    }
    
    private func setSearchBarConstraints() {
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            searchBar.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            searchBar.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            searchBar.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            searchBar.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    private func setUserNameLabelConstraints() {
        userNameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            userNameLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            userNameLabel.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.8),
            userNameLabel.topAnchor.constraint(equalTo: searchBar.bottomAnchor, constant: 50),
            userNameLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
    
    private func setUserInfoLabelConsraints() {
        userInfoLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            userInfoLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            userInfoLabel.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.8),
            userInfoLabel.topAnchor.constraint(equalTo: userNameLabel.bottomAnchor),
            userInfoLabel.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    private func setActionListTableViewConstraints() {
        actionListTableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            actionListTableView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            actionListTableView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            actionListTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            actionListTableView.topAnchor.constraint(equalTo: userInfoLabel.bottomAnchor),
        ])
    }

}
