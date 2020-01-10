//
//  ViewController.swift
//  TesteVOIP
//
//  Created by Rita de Cássia Vasconcelos do Nascimento on 08/01/20.
//  Copyright © 2020 Rita de Cássia Vasconcelos do Nascimento. All rights reserved.
//

import UIKit

class PhotoListVC: UIViewController {
    
    var tableView = UITableView()
    
    var listOfPhotos = [PhotosInfo]() {
        didSet{
            DispatchQueue.main.async {
                self.tableView.reloadData()
                self.navigationItem.title = "Photos"
            }
        }
    }
    struct Cells {
        static let photoCell = "PhotoCell"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        
        let photoRequest = PhotosRequest()
        photoRequest.getPhotos{ [weak self] result in
            switch result{
            case .failure(let error):
                print(error)
            case .success(let photos):
                self?.listOfPhotos = photos
            }
        }
    }
    
    func configureTableView(){
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 100
        tableView.register(PhotoCell.self, forCellReuseIdentifier: Cells.photoCell)
        tableView.pin(to: view)
        
    }
    
}
extension PhotoListVC: UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listOfPhotos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Cells.photoCell) as! PhotoCell
        
        let photo = listOfPhotos[indexPath.row]
        
        cell.set(photo: photo)
        cell.textLabel?.textAlignment = .left
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let destination = PhotoDetailVC()
        
        destination.image = listOfPhotos[indexPath.row].url
        
        navigationController?.pushViewController(destination, animated: true)
    }
}

