//
//  ContentView.swift
//  ScrumDingerApp
//
//  Created by Abd Elrahman Desoki on 14/06/2022.
//

import SwiftUI

struct Meetingview: View {
    var body: some View {
        VStack{
            ProgressView(value: 5, total: 15)
            HStack{
                VStack {
                    Text("Time elapsed")
                        .font(.caption)
                    Label("300", systemImage: "hourglass.tophalf.filled")
                }
                
                Spacer()
                VStack {
                    Text("Time Remaining")
                        .font(.caption)
                    Label("600", systemImage: "hourglass.bottomhalf.filled")
                }
            }
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Time Remaining")
            .accessibilityValue("10 minutes")
            
            Circle()
                .strokeBorder(lineWidth: 24)
            
            HStack{
                Text("Speaker 1 of 3")
                    .font(.body)
                Spacer()
                Button( action: {} ){
                    Image(systemName: "forward.fill")
                }
                .accessibilityValue("Next Speaker")
            }
        }
        .padding()
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        Meetingview()
    }
}
