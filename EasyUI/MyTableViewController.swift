//
//  MyTableViewController.swift
//  EasyUI
//
//  Created by YeongHo Ha on 11/21/23.
//

import UIKit

class MyTableViewController: UIViewController {
    
    @IBOutlet weak var myTableView: UITableView!
    
    let friendNames: [String] = ["Heon", "Jio", "Yeong", "Jin"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.backgroundColor = .systemTeal
        //TableView를 MyTableViewController에 위임.
        myTableView.delegate = self
        myTableView.dataSource = self
    }
    
}

//MyTableViewController 확장.
extension MyTableViewController: UITableViewDelegate, UITableViewDataSource {
    
    //섹션 개수
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendNames.count
    }
    
    //섹션마다 들어갈 내용
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "MyfirstCell", for: indexPath)
        cell.textLabel?.text = friendNames[indexPath.row]
        return cell
        //indexPath는 테이블뷰의 순서를 담고 있음.
    }
}
