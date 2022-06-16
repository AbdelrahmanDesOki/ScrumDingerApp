//
//  ScrumsView.swift
//  ScrumDingerApp
//
//  Created by Abd Elrahman Desoki on 16/06/2022.
//

import SwiftUI

struct ScrumsView: View {
    let scrums: [DailyScrum]
    var body: some View {
        List{
            ForEach( scrums ){
                scrum in
                CardView(scrum: scrum)
                    .listRowBackground(scrum.theme.mainColor)
                  //.background(scrum.theme.mainColor)
            }
        }
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: DailyScrum.sampleData)
    }
}
