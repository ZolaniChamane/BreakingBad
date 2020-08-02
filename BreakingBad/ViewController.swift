//
//  ViewController.swift
//  BreakingBad
//
//  Created by Zolani Chamane on 2020/07/25.
//  Copyright © 2020 Zolani Chamane. All rights reserved.
//

import UIKit
import Alamofire
import SwiftSpinner

class ViewController: UITableViewController {
    var characters  : [Character] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        SwiftSpinner.show("Fetching Breaking Bad Characters...",animated: true)
        getCharacters()
        
       
        
    }
    func getCharacters() {
        let url = URL(string: "https://www.breakingbadapi.com/api/characters")!
      AF.request(url)
        .responseDecodable(of: [Character].self) { (response) in
          guard let posts = response.value else { return debugPrint("something went wrong") }
            self.characters = posts
            self.tableView.reloadData()
          debugPrint(posts)
            SwiftSpinner.hide()
      }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characters.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CharacterTableViewCell", for: indexPath) as? CharacterTableViewCell else {
            fatalError("something went wrong")
        }
        
        let cha = characters[indexPath.row]
        cell.Name?.text = cha.Name
        let url = URL(string:cha.Pic)
        if let data = try? Data(contentsOf: url!)
        {
            cell.Picture.image = UIImage(data: data)
        }
    
        cell.Nickname.text = cha.Nickname
        cell.DateOfBirth.text = cha.DateOfBirth
        
        return cell
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let indexPaths=self.tableView!.indexPathsForSelectedRows!

        let indexPath = indexPaths[0] as NSIndexPath
        let vc = segue.destination as! ViewDetailController
          let cha = characters[indexPath.row]
          vc.Name =  cha.Name
          vc.NickName = cha.Nickname
    }

    
}

