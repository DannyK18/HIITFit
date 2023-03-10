//
//  ExerciseView.swift
//  HIITFit
//
//  Created by Daniel on 31.12.2022.
//

import SwiftUI
import AVKit

struct ExerciseView: View {

    @State private var showSheet = false

    let index: Int

    let interval: TimeInterval = 30

    var body: some View {
        GeometryReader { geometry in
          VStack {
            HeaderView(titleText: Exercise.exercises[index].exerciseName)
              .padding(.bottom)
            if let url = Bundle.main.url(
                forResource: Exercise.exercises[index].videoName,
              withExtension: "mp4") {
              VideoPlayer(player: AVPlayer(url: url))
                .frame(height: geometry.size.height * 0.45)
            } else {
              Text("Couldn't find \(Exercise.exercises[index].videoName).mp4")
                .foregroundColor(.red)
            }
            Text(Date().addingTimeInterval(interval), style: .timer)
              .font(.system(size: 90))
            Button(NSLocalizedString(
                "Start/Done",
                comment: "begin exercise / mark as finished")) { showSheet = true }
              .font(.title3)
              .padding()
            RatingView()
              .padding()
            Spacer()
            Button("History") { }
              .padding(.bottom)
          }
          .sheet(isPresented: $showSheet) {
              SuccessView()
          }
        }
    }
}

struct ExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseView(index: 0)
    }
}
