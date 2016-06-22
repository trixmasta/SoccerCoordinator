//: Playground - noun: a place where people can play

import UIKit

// Faris's project

// here is a collection for each player

let player1 = [
    
    "name": "Joe Smith",
    "height": 42,
    "soccerExperience": true,
    "guardianName": "Jim and Jan Smith"

]

let player2 = [
    
    "name": "Jill Tanner",
    "height": 36,
    "soccerExperience": true,
    "guardianName": "Clara Tanner"
    
]

let player3 = [
    
    "name": "Bill Bon",
    "height": 43,
    "soccerExperience": true,
    "guardianName": "Sara and Jenny Bon"
    
]

let player4 = [
    
    "name": "Eva Gordon",
    "height": 45,
    "soccerExperience": false,
    "guardianName": "Wendy and Mike Gordon"
    
]

let player5 = [
    
    "name": "Matt Gill",
    "height": 40,
    "soccerExperience": false,
    "guardianName": "Charles and Sylvia Gill"
    
]

let player6 = [
    
    "name": "Kimmy Stein",
    "height": 41,
    "soccerExperience": false,
    "guardianName": "Bill and Hillary Stein"
    
]

let player7 = [
    
    "name": "Sammy Adams",
    "height": 45,
    "soccerExperience": false,
    "guardianName": "Jeff Adams"
    
]

let player8 = [
    
    "name": "Karl Saygan",
    "height": 42,
    "soccerExperience": true,
    "guardianName": "Heather Bledsoe"
    
]

let player9 = [
    
    "name": "Suzane Greenberg",
    "height": 44,
    "soccerExperience": true,
    "guardianName": "Henrietta Dumas"
    
]

let player10 = [
    
    "name": "Sal Dali",
    "height": 41,
    "soccerExperience": false,
    "guardianName": "Gala Dali"
    
]

let player11 = [
    
    "name": "Joe Kavalier",
    "height": 39,
    "soccerExperience": false,
    "guardianName": "Sam and Elaine Kavalier"
    
]

let player12 = [
    
    "name": "Ben Finkelstein",
    "height": 44,
    "soccerExperience": false,
    "guardianName": "Aaron and Jill Finkelstein"
    
]

let player13 = [
    
    "name": "Diego Soto",
    "height": 41,
    "soccerExperience": true,
    "guardianName": "Robin and Sarika Soto"
    
]

let player14 = [
    
    "name": "Chloe Alaska",
    "height": 47,
    "soccerExperience": false,
    "guardianName": "David and Jamie Alaska"
    
]

let player15 = [
    
    "name": "Arnold Willis",
    "height": 43,
    "soccerExperience": false,
    "guardianName": "Claire Willis"
    
]

let player16 = [
    
    "name": "Phillip Helm",
    "height": 44,
    "soccerExperience": true,
    "guardianName": "Thomas Helm and Eva Jones"
    
]

let player17 = [
    
    "name": "Les Clay",
    "height": 42,
    "soccerExperience": true,
    "guardianName": "Wyonna Brown"
    
]

let player18 = [
    
    "name": "Herschel Krustofksi",
    "height": 45,
    "soccerExperience": true,
    "guardianName": "Hyman and Rachel Krustofski"
    
]

// this is an array of all the players 

let allPlayers = [ player1,
                   player2,
                   player3,
                   player4,
                   player5,
                   player6,
                   player7,
                   player8,
                   player9,
                   player10,
                   player11,
                   player12,
                   player13,
                   player14,
                   player15,
                   player16,
                   player17,
                   player18,
                 ]

let numberOfPlayers = allPlayers.count

// these are the team names

let numberOfTeams = 3

var teamSharks: NSMutableArray = []
var teamRaptors: NSMutableArray = []
var teamDragons: NSMutableArray = []

var finalTeams = ["Sharks":teamSharks, "Raptors":teamRaptors, "Dragons":teamDragons]

// these are two seperate arrays for players who've played before and who haven't (referring to the players soccerExperience boolean value

var experiencedPlayers: [AnyObject] = []
var inexperiencedPlayers: [AnyObject] = []

// sort through allPlayers and place each one either in experienced or inexperienced arrays

for i in 0 ..< numberOfPlayers  {
    
    //get current player in array, and check if player in array has a key value of soccerExperience that is true
    
    let currentPlayer: [String: AnyObject] = allPlayers[i]
    
    let isExperienced: Bool = currentPlayer["soccerExperience"] as! Bool
    
    if isExperienced {
        
        experiencedPlayers.append(currentPlayer)
        
    }else{
        
        inexperiencedPlayers.append(currentPlayer)
    }
    
}

// go through each experienced players and insert them into each team in finalTeams array,

var teamCounter = 0

for player in experiencedPlayers {
   
        Array(finalTeams.values)[teamCounter].addObject(player)
    
        teamCounter += 1
    
    // when we're done placing one player in each team in the finalTeams array, we reset the loop, so the next player goes in begging of the finalTeams array
    
    if teamCounter == finalTeams.count {
        teamCounter = 0
        }
}

for player in inexperiencedPlayers {
    
    Array(finalTeams.values)[teamCounter].addObject(player)
    teamCounter += 1
    
    // when we're done placing one player in each team in the finalTeams array, we reset the loop, so the next player goes in begging of the finalTeams array
    
    if teamCounter == finalTeams.count {
        teamCounter = 0
    }
    
}

//print(teamSharks)

// generate a print a letter for each player

for (teamName,team) in finalTeams {
    
    for player in team {
        
        let guardianName = player["guardianName"] as! String
        let playerName = player["name"] as! String
        let date = "July 7th"
        let time = "2 pm"
        
        print(
        
           "Dear \(guardianName), \n Your child, \(playerName) is scheduled to play on \(date) at \(time). They will be on the \(teamName) team. "
        
        
        )
    }
    
}






// practicing how to make heights fairly assigned on teams

/*

var heights: [Double] = []
var c = 0

for team in finalTeams {
    
    var teamHeight: Double = 0
    
    for player in team {
        
        teamHeight += player["height"] as! Double
    }
    
    let averageTeamHeight = teamHeight/(Double(team.count))
    
    heights.append(averageTeamHeight)
    
    print(averageTeamHeight)
    
    c += 1
}

*/



