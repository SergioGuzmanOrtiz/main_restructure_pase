//
//  ViewController.swift
//  RestructurePase
//
//  Created by Sergio Guzman Ortiz on 28/11/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tablaDatos: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //Delegados
        tablaDatos.delegate = self
        tablaDatos.dataSource = self
        // MARK: -Registrar Celda
        tablaDatos.register(UINib(nibName: "CellTableDateHome", bundle: nil), forCellReuseIdentifier: "celda")
        //
        // Do any additional setup after loading the view.
    }
    
    // MARK: -UITable View

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tablaDatos.dequeueReusableCell(withIdentifier: "celda", for: indexPath) as! CellTableDateHome
        
        return celda
    }
}

