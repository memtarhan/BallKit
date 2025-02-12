//
//  StandingTableInfoHeader.swift
//  BallKit
//
//  Created by Mehmet Tarhan on 12.02.2025.
//

import SwiftUI

struct StandingTableInfoHeader: View {
    var body: some View {
        HStack(spacing: 8) {
            HStack {
                Text("Rk")
                Text("Squad")
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
