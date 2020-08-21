//
//  ViewController.swift
//  Blacktop3v3
//
//  Created by Kenton  Lee on 4/29/20.
//  Copyright © 2020 KTL28. All rights reserved.
//

import UIKit

var yourTeam = [Player]()
var oppTeam = [Player]()

var davidJiang = Player(name: "David", offense: PlayerOffense(stats: ShootingStats(fgPercent: 0.65, tpPercent: 0.2, fgAttempts: 18, tpAttempts: 2, ftPercent: 0.70), assist: 95, dribble: 75), defense: PlayerDefense(block: 50, steals: 70, rebounds: 50))
var arjunMiklos = Player(name: "Arjun", offense: PlayerOffense(stats: ShootingStats(fgPercent: 0.5, tpPercent: 0.45, fgAttempts: 11, tpAttempts: 11, ftPercent: 0.90), assist: 25, dribble: 95), defense: PlayerDefense(block: 80, steals: 50, rebounds: 60))
var garyMotmans = Player(name: "Gary", offense: PlayerOffense(stats: ShootingStats(fgPercent: 0.4, tpPercent: 0.45, fgAttempts: 6, tpAttempts: 10, ftPercent: 0.85), assist: 40, dribble: 75), defense: PlayerDefense(block: 45, steals: 45, rebounds: 45))
var kentonLee = Player(name: "Kenton", offense: PlayerOffense(stats: ShootingStats(fgPercent: 0.5, tpPercent: 0.3, fgAttempts: 15, tpAttempts: 4, ftPercent: 0.70), assist: 35, dribble: 45), defense: PlayerDefense(block: 70, steals: 40, rebounds: 75))
var nickWong = Player(name: "Nick", offense: PlayerOffense(stats: ShootingStats(fgPercent: 0.4, tpPercent: 0.5, fgAttempts: 2, tpAttempts: 14, ftPercent: 0.85), assist: 65, dribble: 60), defense: PlayerDefense(block: 20, steals: 65, rebounds: 25))
var mitchHammon = Player(name: "Mitch", offense: PlayerOffense(stats: ShootingStats(fgPercent: 0.5, tpPercent: 0.4, fgAttempts: 5, tpAttempts: 10, ftPercent: 0.75), assist: 35, dribble: 35), defense: PlayerDefense(block: 70, steals: 30, rebounds: 80))

class ViewController: UIViewController {

    @IBOutlet weak var arjunB: UIButton!
    @IBOutlet weak var davidJ: UIButton!
    @IBOutlet weak var garyB: UIButton!
    @IBOutlet weak var kentonB: UIButton!
    @IBOutlet weak var mitchB: UIButton!
    @IBOutlet weak var nickB: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addArjun(_ sender: Any) {
        if(!yourTeam.contains(arjunMiklos) && yourTeam.count < 3) {
            yourTeam.append(arjunMiklos)
            arjunB.setTitle("Selected", for: .normal)
        }
    }
    
    @IBAction func addDavid(_ sender: Any) {
        if(!yourTeam.contains(davidJiang) && yourTeam.count < 3) {
            yourTeam.append(davidJiang)
            davidJ.setTitle("Selected", for: .normal)
        }
    }
    
    @IBAction func addGary(_ sender: Any) {
        if(!yourTeam.contains(garyMotmans) && yourTeam.count < 3) {
            yourTeam.append(garyMotmans)
            garyB.setTitle("Selected", for: .normal)
        }
    }
    
    @IBAction func addKenton(_ sender: Any) {
        if(!yourTeam.contains(kentonLee) && yourTeam.count < 3) {
            yourTeam.append(kentonLee)
            kentonB.setTitle("Selected", for: .normal)
        }
    }
    
    @IBAction func addMitch(_ sender: Any) {
        if(!yourTeam.contains(mitchHammon) && yourTeam.count < 3) {
            yourTeam.append(mitchHammon)
            mitchB.setTitle("Selected", for: .normal)
        }
    }
    
    @IBAction func addNick(_ sender: Any) {
        if(!yourTeam.contains(nickWong) && yourTeam.count < 3) {
            yourTeam.append(nickWong)
            nickB.setTitle("Selected", for: .normal)
        }
    }
    
    @IBAction func startGame(_ sender: Any) {
        if(yourTeam.count == 3) {
            
            performSegue(withIdentifier: "nextPage", sender: self)
        }
    }
}

