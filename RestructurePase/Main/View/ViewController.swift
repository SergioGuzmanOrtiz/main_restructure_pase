//
//  ViewController.swift
//  RestructurePase
//
//  Created by Sergio Guzman Ortiz on 28/11/23.
//

import UIKit
import NetworkManagerSDK

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    ///Instancia de clase WebService
    var ws:WebService = WebService()
    var arrayCharacters:[ResultCharacter] = [ResultCharacter]()
    
    @IBOutlet weak var tablaDatos: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //Delegados
        tablaDatos.delegate = self
        tablaDatos.dataSource = self
        // MARK: -Registrar Celda
        tablaDatos.register(UINib(nibName: "CellTableDateHome", bundle: nil), forCellReuseIdentifier: "celda")
        
        
        //MARK: - Llamadas a servicio
        ///Obtener todos los  personajes (Paginados) :::::::::::::
        self.ws.getCharacters { response, error in
            if let _ = error {
                print("ERROR: \(error!.errorMessage) - (\(error!.error))")
            }else{
                print("Success WS")
                self.arrayCharacters = response!.results!
                for personaje in response!.results!{
                    print("id: \(personaje.id) \(personaje.name) (\(personaje.species))")
                }
            }
        }
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

