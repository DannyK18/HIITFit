//
//  SuccessView.swift
//  HIITFit
//
//  Created by Daniel on 02.01.2023.
//

import SwiftUI

struct SuccessView: View {

    @Environment(\.presentationMode) var dismiss

    var body: some View {
        ZStack(alignment: .topTrailing) {
            HStack {
                Spacer()
            Button(action: { dismiss.wrappedValue.dismiss() }) {
              Image(systemName: "xmark.circle")
            }
            .font(.title)
            .padding([.top, .trailing])
            }
            VStack(spacing: 20) {
                Spacer()
                Image(systemName: "hand.raised.fill")
                    .resizedToFill(width: 75, height: 75)
                    .foregroundColor(.purple)
                Text("High Five!")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                Text("""
                     Good job completing all four exercises!
                     Remember tommorow`s another day.
                     So eat well and get some rest.
                  """)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.secondary)

                Spacer()
                Button("Continue") { }
                .padding(.bottom)
            }
            .padding(.trailing, 30)
        }
    }
}

struct SuccessView_Previews: PreviewProvider {
    static var previews: some View {
        SuccessView()
    }
}
