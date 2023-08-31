//
//  ContentView.swift
//  SwiftUI_Learning
//
//  Created by Mac-OBS-51 on 30/08/23.
//

import SwiftUI
import UIKit

struct FirstView: View {
    
    @State private var isButtonEnabled = false
    @State private var shouldShowBackButton = false
    
    var body: some View {
        ZStack{
            Color(uiColor: .systemMint)
                .ignoresSafeArea()
            
            VStack {
                Text("Tourist Places")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(radius: 30)
                
                VStack(alignment: .leading, spacing: 10.0) {
                    Image("waterfalls")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(15)
                    
                    HStack(){
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
                
                Spacer()
                
                HStack {
                    
                    if shouldShowBackButton {
                        Button(action: {
                            print("Button Tapped")
                        }, label: {
                            Text("< Back")
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding()
                                .frame(width: 100, height: 40)
                                .background(Color.secondary)
                                .cornerRadius(20)
                        }) .padding() .shadow(radius: 20).disabled(!isButtonEnabled)
                    }
                    
                    Spacer().padding()
                    
                    Button(action: {
                        print("Button Tapped")
                    }, label: {
                        Text("Next >")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 100, height: 40)
                            .background(Color.secondary)
                            .cornerRadius(30)
                    }) .padding().shadow(radius: 20)
                    
                }
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
