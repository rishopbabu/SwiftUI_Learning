//
//  ContentView.swift
//  SwiftUI_Learning
//
//  Created by Mac-OBS-51 on 30/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(uiColor: .systemMint)
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 20.0) {
                Image("waterfalls")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
                
                HStack{
                    Text("Water Falls")
                        .font(.title)
                        .fontWeight(.semibold)
                    
                    Spacer()
                    
                    VStack{
                        HStack{
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.leadinghalf.filled")
                        }
                        .foregroundColor(.yellow).font(.caption)
                        
                        Text("(Reviews 365)")
                            .font(.body)
                            .fontWeight(.light)
                    }
                }
                
                HStack{
                    Text("This waterfall is in Coimbatore")
                        .font(.body)
                        .fontWeight(.medium)
                    
                    Spacer()
                    
                    HStack{
                        Spacer()
                        Image(systemName: "fork.knife")
                        Image(systemName: "binoculars.fill")
                    }
                    .foregroundColor(.gray)
                    .font(.caption)
                }
            }
            .padding()
            .background(Rectangle()
                .foregroundColor(.white)
                .cornerRadius(15)
                .shadow(radius: 30))
            .padding()
        }        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
