import UIKit

class ViewController: UIViewController {
    private var favoriteGames: [Game] = [
        Game(cover: UIImage.theQuarry, title: "The Quarry", platform: "15 Episodes", release: "2022"),
        Game(cover: UIImage.silentHill2Remake,title: "The Silent Hill 2: Remake", platform: "35 Episodes", release: "2024"),
        Game(cover: UIImage.untilDawn,title: "Until Dawn", platform: "25 Episodes", release: "2015"),
        Game(cover: UIImage.theLastOfUs,title: "The Last of Us", platform: "16 Episodes", release: "2016"),
        Game(cover: UIImage.detroir,title: "Detroit: Become Human", platform: "20 Episodes", release: "2018"),
        Game(cover: UIImage.sallyFace, title: "Sally Face", platform: "14 Episodes", release: "2017"),
        Game(cover: UIImage.stalker,title: "Stalker", platform: "21 Episodes", release: "2015"),
        Game(cover: UIImage.metro2033GameCover,title: "Metro: 2033", platform: "10 Episodes", release: "2014"),
        Game(cover: UIImage.amandaGame,title: "Amanda: The adventurer", platform: "11 Episodes", release: "2022"),
        Game(cover: UIImage.battlefield, title: "Battlefield Hardline", platform: "16 Episodes", release: "2015"),
     
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        favGamesTable.dataSource = self
    }
    
    @IBOutlet weak var favGamesTable: UITableView!

}




extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        favoriteGames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GameCell", for: indexPath) as! GameCell
        let game = favoriteGames[indexPath.row]
        
        cell.configure(with: game)
        
        return cell
    }
}
