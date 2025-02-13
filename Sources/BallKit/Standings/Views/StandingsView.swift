//
//  StandingsView.swift
//  BallKit
//
//  Created by Mehmet Tarhan on 12.02.2025.
//

import SwiftUI

public struct StandingsView: View {
    var data: [StandingsData]

    public init(data: [StandingsData]) {
        self.data = data
    }

    public var body: some View {
        ScrollView {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 0) {
                    teamColumn
                        .frame(minWidth: 0)
                    statsColumn
                        .frame(minWidth: 0)
                    lastFiveGamesColumn
                        .frame(minWidth: 0)
                }
            }
        }
        .frame(maxWidth: .infinity)
    }

    var lastFiveGamesColumn: some View {
        VStack(alignment: .leading, spacing: 0) {
            StandingTableLastGamesHeader()
                .frame(height: 45)
                .background(.primary)

            Divider()

            ForEach(data) { standing in
                VStack(spacing: 0) {
                    LastFiveGamesView(data: standing.lastFiveGames)
                        .frame(height: 45)

                    Line()
                        .stroke(style: .init(dash: [1]))
                        .foregroundStyle(.primary).opacity(0.3)
                        .frame(height: 1)
                }
            }

            Spacer()
        }
        .padding(.trailing, 12)
    }

    var teamColumn: some View {
        VStack(spacing: 0) {
            StandingTableInfoHeader()
                .frame(height: 45)
                .background(.primary)

            Divider()

            ForEach(data) { standing in
                if #available(iOS 17.0, *) {
                    VStack(spacing: 0) {
                        StandingTeamInfoRow(data: standing)
                            .frame(height: 45)

                        Line()
                            .stroke(style: .init(dash: [1]))
                            .foregroundStyle(.primary).opacity(0.3)
                            .frame(height: 1)
                    }
                    .scrollTransition(axis: .vertical) { content, phase in
                        content
                            .opacity(phase.isIdentity ? 1 : 0)
                            .blur(radius: phase.isIdentity ? 0 : 10)
                    }
                } else {
                    VStack(spacing: 0) {
                        StandingTeamInfoRow(data: standing)
                            .frame(height: 45)

                        Line()
                            .stroke(style: .init(dash: [1]))
                            .foregroundStyle(.primary).opacity(0.3)
                            .frame(height: 1)
                    }
                }
            }

            Spacer()
        }
    }

    var statsColumn: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 0) {
                VStack(alignment: .center, spacing: 0) {
                    if let first = data.first {
                        StandingTableStatsHeader(stats: first.stats)
                            .frame(height: 45)
                            .background(.primary)

                        Divider()
                    }
                    ForEach(data) { standing in
                        if #available(iOS 17.0, *) {
                            VStack(spacing: 0) {
                                StandingTeamStatsRow(data: standing)
                                    .frame(height: 45)

                                Line()
                                    .stroke(style: .init(dash: [1]))
                                    .foregroundStyle(.primary).opacity(0.3)
                                    .frame(height: 1)
                            }

                            .scrollTransition(axis: .vertical) { content, phase in
                                content
                                    .opacity(phase.isIdentity ? 1 : 0)
                                    .blur(radius: phase.isIdentity ? 0 : 10)
                            }
                        } else {
                            VStack(spacing: 0) {
                                StandingTeamStatsRow(data: standing)
                                    .frame(height: 45)

                                Line()
                                    .stroke(style: .init(dash: [1]))
                                    .foregroundStyle(.primary).opacity(0.3)
                                    .frame(height: 1)
                            }
                        }
                    }

                    Spacer()
                }
            }
        }
    }
}
