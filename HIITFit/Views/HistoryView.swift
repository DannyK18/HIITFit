//
//  РшиещкнМшуц.swift
//  HIITFit
//
//  Created by Daniel on 02.01.2023.
//

import SwiftUI

struct HistoryView: View {

    let history = HistoryStore()

    var body: some View {
        ZStack(alignment: .topTrailing) {

            Button(action: {}) {
                Image(systemName: "xmark.circle")
            }
            .font(.title)
            .padding(.trailing)
            VStack {
                Text(NSLocalizedString("History", comment: "view user activity"))
                    .font(.title)
                    .padding()
                Form {
                    ForEach(history.exerciseDays) { day in
                        Section(
                            header:
                                Text(day.date.formatted(as: "MMM d"))
                                .font(.headline)) {
                                    ForEach(day.exercises, id: \.self) { exercise in
                                        Text(exercise)
                                    }
                                }
                    }
                }
            }
        }
    }
}

struct HistoryViewPreviews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
