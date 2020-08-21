//
//  SecondViewController.swift
//  Blacktop3v3
//
//  Created by Kenton  Lee on 5/1/20.
//  Copyright © 2020 KTL28. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var yourScore: UILabel!
    @IBOutlet weak var yourLabel: UILabel!
    @IBOutlet weak var opponentsScore: UILabel!
    @IBOutlet weak var opponentsLabel: UILabel!
    
    @IBOutlet weak var p1: UILabel!
    @IBOutlet weak var p2: UILabel!
    @IBOutlet weak var p3: UILabel!
    @IBOutlet weak var s1: UILabel!
    @IBOutlet weak var s2: UILabel!
    @IBOutlet weak var s3: UILabel!
    @IBOutlet weak var r1: UILabel!
    @IBOutlet weak var r2: UILabel!
    @IBOutlet weak var r3: UILabel!
    @IBOutlet weak var a1: UILabel!
    @IBOutlet weak var a2: UILabel!
    @IBOutlet weak var a3: UILabel!
    @IBOutlet weak var t1: UILabel!
    @IBOutlet weak var t2: UILabel!
    @IBOutlet weak var t3: UILabel!
    @IBOutlet weak var b1: UILabel!
    @IBOutlet weak var b2: UILabel!
    @IBOutlet weak var b3: UILabel!
    @IBOutlet weak var o1: UILabel!
    @IBOutlet weak var o2: UILabel!
    @IBOutlet weak var o3: UILabel!
    @IBOutlet weak var op1: UILabel!
    @IBOutlet weak var op2: UILabel!
    @IBOutlet weak var op3: UILabel!
    @IBOutlet weak var or1: UILabel!
    @IBOutlet weak var or2: UILabel!
    @IBOutlet weak var or3: UILabel!
    @IBOutlet weak var oa1: UILabel!
    @IBOutlet weak var oa2: UILabel!
    @IBOutlet weak var oa3: UILabel!
    @IBOutlet weak var ot1: UILabel!
    @IBOutlet weak var ot2: UILabel!
    @IBOutlet weak var ot3: UILabel!
    @IBOutlet weak var ob1: UILabel!
    @IBOutlet weak var ob2: UILabel!
    @IBOutlet weak var ob3: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let tempTeam = [arjunMiklos, davidJiang, garyMotmans, kentonLee, nickWong, mitchHammon]

        for p in tempTeam {
            if(!yourTeam.contains(p)) {
                oppTeam.append(p)
            }
        }

        let your = Team(name: "1", lineUp: yourTeam)
        let opp = Team(name: "2", lineUp: oppTeam)

        var team1D = 0.0
        var team1Help = 0.0
        var team2D = 0.0
        var team2Help = 0.0
        for p in your.lineUp {
            team1D += Double(p.defense.block) + Double(p.defense.steals)
            team1Help += Double(p.defense.rebounds) + Double(p.offense.assist)
        }
        for p in opp.lineUp {
            team2D += Double(p.defense.block) + Double(p.defense.steals)
            team2Help += Double(p.defense.rebounds) + Double(p.offense.assist)
        }
        team1D = team1D / 400.0
        team1Help = team1Help / 1000.0
        team2D = team2D / 400.0
        team2Help = team2Help / 1000.0
        
            

        var sum1 = 0
        var sum2 = 0

        let base0 = Double(your.lineUp[0].offense.dribble) / 200.0 + team1Help - team2D
        let effect0 = (1.0 + base0 / 2.0)
        let score0 = Int(Double(your.lineUp[0].getScored()) * effect0)
        let rb0 = your.lineUp[0].getRebounds()
        let ast0 = your.lineUp[0].getAssists()
        let stl0 = your.lineUp[0].getSteals()
        let blk0 = your.lineUp[0].getBlocks()
        p1.text = your.lineUp[0].name
        s1.text = String(score0)
        r1.text = String(rb0)
        a1.text = String(ast0)
        t1.text = String(stl0)
        b1.text = String(blk0)
        sum1 += score0

        let base1 = Double(your.lineUp[1].offense.dribble) / 200.0 + team1Help - team2D
        let effect1 = (1.0 + base1 / 2.0)
        let score1 = Int(Double(your.lineUp[1].getScored()) * effect1)
        let rb1 = your.lineUp[1].getRebounds()
        let ast1 = your.lineUp[1].getAssists()
        let stl1 = your.lineUp[1].getSteals()
        let blk1 = your.lineUp[1].getBlocks()
        p2.text = your.lineUp[1].name
        s2.text = String(score1)
        r2.text = String(rb1)
        a2.text = String(ast1)
        t2.text = String(stl1)
        b2.text = String(blk1)
        sum1 += score1

        let base2 = Double(your.lineUp[1].offense.dribble) / 200.0 + team1Help - team2D
        let effect2 = (1.0 + base2 / 2.0)
        let score2 = Int(Double(your.lineUp[1].getScored()) * effect2)
        let rb2 = your.lineUp[2].getRebounds()
        let ast2 = your.lineUp[2].getAssists()
        let stl2 = your.lineUp[2].getSteals()
        let blk2 = your.lineUp[2].getBlocks()
        p3.text = your.lineUp[2].name
        s3.text = String(score2)
        r3.text = String(rb2)
        a3.text = String(ast2)
        t3.text = String(stl2)
        b3.text = String(blk2)
        sum1 += score2

        let obase0 = Double(opp.lineUp[0].offense.dribble) / 200.0 + team2Help - team1D
        let oeffect0 = (1.0 + obase0 / 2.0)
        let oscore0 = Int(Double(your.lineUp[0].getScored()) * oeffect0)
        let orb0 = opp.lineUp[0].getRebounds()
        let oast0 = opp.lineUp[0].getAssists()
        let ostl0 = opp.lineUp[0].getSteals()
        let oblk0 = opp.lineUp[0].getBlocks()
        o1.text = opp.lineUp[0].name
        op1.text = String(oscore0)
        or1.text = String(orb0)
        oa1.text = String(oast0)
        ot1.text = String(ostl0)
        ob1.text = String(oblk0)
        sum2 += oscore0

        let obase1 = Double(opp.lineUp[1].offense.dribble) / 200.0 + team2Help - team1D
        let oeffect1 = (1.0 + obase1 / 2.0)
        let oscore1 = Int(Double(your.lineUp[1].getScored()) * oeffect1)
        let orb1 = opp.lineUp[1].getRebounds()
        let oast1 = opp.lineUp[1].getAssists()
        let ostl1 = opp.lineUp[1].getSteals()
        let oblk1 = opp.lineUp[1].getBlocks()
        o2.text = opp.lineUp[1].name
        op2.text = String(oscore1)
        or2.text = String(orb1)
        oa2.text = String(oast1)
        ot2.text = String(ostl1)
        ob2.text = String(oblk1)
        sum2 += oscore1

        let obase2 = Double(opp.lineUp[2].offense.dribble) / 200.0 + team2Help - team1D
        let oeffect2 = (1.0 + obase2 / 2.0)
        let oscore2 = Int(Double(your.lineUp[2].getScored()) * oeffect2)
        let orb2 = opp.lineUp[2].getRebounds()
        let oast2 = opp.lineUp[2].getAssists()
        let ostl2 = opp.lineUp[2].getSteals()
        let oblk2 = opp.lineUp[2].getBlocks()
        o3.text = opp.lineUp[2].name
        op3.text = String(oscore2)
        or3.text = String(orb2)
        oa3.text = String(oast2)
        ot3.text = String(ostl2)
        ob3.text = String(oblk2)
        sum2 += oscore2

        yourScore.text = "Your team: " + String(sum1)
        opponentsScore.text = "Opponents: " + String(sum2)
        yourLabel.text = "Defense: " + String(Int(team1D * 100.0)) + " Chemistry: " + String(Int(team1Help * 250.0))
        opponentsLabel.text = "Defense: " + String(Int(team2D * 100.0)) + " Chemistry: " + String(Int(team2Help * 250.0))
    }
    
    @IBAction func replayGame(_ sender: Any) {
        yourTeam = [Player]()
        oppTeam = [Player]()
        performSegue(withIdentifier: "goBack", sender: self)
    }
    
}
