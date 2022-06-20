//
//  TrailingIconLabelStyle.swift
//  ScrumDingerApp
//
//  Created by Abd Elrahman Desoki on 15/06/2022.
//

import SwiftUI


struct TrailingIconLabelStyle: LabelStyle{
    
    func makeBody(configuration: Configuration)->some View{
        
        HStack{
            configuration.title
            configuration.icon
        }
    }
    
    
}
//important to keep it accessed using (.)
extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trailingIcon: Self { Self() }
}
