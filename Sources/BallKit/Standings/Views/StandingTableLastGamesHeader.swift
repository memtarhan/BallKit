//
//  StandingTableLastGamesHeader.swift
//  BallKit
//
//  Created by Mehmet Tarhan on 12.02.2025.
//

import SwiftUI

struct StandingTableLastGamesHeader: View {
    var body: some View {
        HStack(spacing: 8) {
            HStack {
                Text("Last 5 Games")
                Spacer()
            }
            Spacer()
            Divider()
        }
        .font(.headline.bold())
        .foregroundStyle(Color.red)
        .padding(.leading, 20)
    }
}
