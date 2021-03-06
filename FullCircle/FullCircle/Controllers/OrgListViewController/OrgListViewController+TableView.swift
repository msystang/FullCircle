//
//  OrgListViewController+TableView.swift
//  FullCircle
//
//  Created by Sunni Tang on 6/13/20.
//  Copyright © 2020 FullCircle. All rights reserved.
//

import UIKit

extension OrgListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return organizations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "orgListCell", for: indexPath) as! OrgListTableViewCell
        let organization = organizations[indexPath.row]
        
        cell.orgNameLabel.text = organization.name
        cell.orgDetailLabel.text = """
        \(organization.type)
        \(organization.borough.rawValue), NY
        """
        cell.orgLogoImageView.image = UIImage(named: organization.logoString)
        
        return cell
    }
    
}

extension OrgListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
     //Navigation
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let thisOrganization = organizations[indexPath.row]
        print("Pressed")
        let vc = OrgDetailViewController.create(thisOrganization)
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
