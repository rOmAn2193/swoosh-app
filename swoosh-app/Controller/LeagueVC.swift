//
//  LeagueVC.swift
//  swoosh-app
//
//  Created by Roman on 5/24/18.
//  Copyright © 2018 Roman. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player: Player!
    
    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }
    
    @IBAction func onNextTapped(_ sender: Any)
    {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    @IBAction func onMensTapped(_ sender: Any)
    {
        player.desiredLeague = "mens"
        nextBtn.isEnabled = true
    }
    
    @IBAction func onWomensTapped(_ sender: Any)
    {
        player.desiredLeague = "womens"
        nextBtn.isEnabled = true
    }
    
    @IBAction func onCoedTapped(_ sender: Any)
    {
        player.desiredLeague = "coed"
        nextBtn.isEnabled = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func selectedLeague(leagueType: String)
    {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if let skillVC = segue.destination as? SkillVC
        {
            skillVC.player = player
        }
    }
}
