//
//  HistoryStore.swift
//  HIITFit
//
//  Created by Daniel on 02.01.2023.
//

import Foundation

struct ExerciseDay: Identifiable {
  let id = UUID()
  let date: Date
  var exercises: [String] = []
}

struct HistoryStore {
    var exerciseDays: [ExerciseDay] = []

#if DEBUG
    init() {
    createDevData()
    }
#endif
}

extension HistoryStore {
  mutating func createDevData() {
    // Development data
    exerciseDays = [
      ExerciseDay(
        date: Date().addingTimeInterval(-86400),
        exercises: [
          Exercise.exercises[0].exerciseName,
          Exercise.exercises[1].exerciseName,
          Exercise.exercises[2].exerciseName
        ]),
      ExerciseDay(
        date: Date().addingTimeInterval(-86400 * 2),
        exercises: [
          Exercise.exercises[1].exerciseName,
          Exercise.exercises[0].exerciseName
        ])
    ]
  }
}


