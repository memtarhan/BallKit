# BallKit
Your custom views for your Sports apps

```swift
import BallKit
import SwiftUI

struct Model {
    private let statsData = [
        StatsData(description: "Games Played", shortDescription: "MP", value: 10, tooltip: "Games played by the team"),
        StatsData(description: "Points", shortDescription: "P", value: 21, tooltip: "Points scored by the team, a win is 3 points, a draw is 1 point and a loss is 0 points"),
        StatsData(description: "Wins", shortDescription: "W", value: 6),
        StatsData(description: "Loss", shortDescription: "L", value: 1),
        StatsData(description: "Draw", shortDescription: "D", value: 3),
    ]

    var standingsData: [StandingsData] {
        [StandingsData(rank: 1, id: "team_a", name: "Team A", logo: "some url", stats: statsData, lastFiveGames: [])]
    }
}

struct ContentView: View {
    private let model = Model()

    var body: some View {
        StandingsView(data: model.standingsData)
    }
}
```

### Swift Package Manager

- File > Swift Packages > Add Package Dependency
- Add https://github.com/memtarhan/BallKit.git
- Select "Up to Next Major" with "2.0.0"

