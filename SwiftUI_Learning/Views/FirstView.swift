//
//  ContentView.swift
//  SwiftUI_Learning
//
//  Created by Mac-OBS-51 on 30/08/23.
//

import SwiftUI
import UIKit

struct FirstView: View {
    
    let touristPlaces: [TouristPlace] = [
        TouristPlace(imageName: "waterfalls", name: "Water Falls", description: "This waterfall is in Coimbatore.", rating: 4, reviews: "326" ),
        TouristPlace(imageName: "BlackThunder", name: "Black Thunder", description: "It is Asia's Number 1 theme park in coimbatore.", rating: 5, reviews: "265"),
        TouristPlace(imageName: "MarudhamalaiTemple", name: "Maruthamalai Temple", description: "It is one of the 6 houses of Lord Murugan.", rating: 4, reviews: "438"),
        TouristPlace(imageName: "GDCarMuseum", name: "GeDee Car Museum", description: "Gedee Car Museum is the only classic car museum of its kind in south India, located in Coimbatore.", rating: 3, reviews: "312"),
        TouristPlace(imageName: "IshaYoga", name: "Isha Yoga", description: "Isha Foundation is a nonprofit, spiritual organisation that was founded in 1992 near Coimbatore", rating: 4, reviews: "489")
    ]
    
    @State private var currentPlaceIndex = 0
    
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
                    Image(touristPlaces[currentPlaceIndex].imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(15)
                    
                    HStack(){
                        Text(touristPlaces[currentPlaceIndex].name)
                            .font(.title)
                            .fontWeight(.semibold)
                        
                        Spacer()
                        
                        VStack{
                            HStack{
                                RatingView(rating: touristPlaces[currentPlaceIndex].rating)
                            }
                            .foregroundColor(.yellow).font(.caption)
                            
                            Text("(Reviews \(touristPlaces[currentPlaceIndex].reviews))")
                                .font(.body)
                                .fontWeight(.light)
                        }
                    }
                    
                    HStack(alignment: .firstTextBaseline) {
                        ZStack(alignment: .leading) {
                            Text(touristPlaces[currentPlaceIndex].description)
                                .font(.body)
                                .fontWeight(.medium)
                        }
                    }
                    
                }
                .padding()
                .background(Rectangle()
                    .foregroundColor(.white)
                    .cornerRadius(15)
                    .shadow(radius: 30))
                .padding()
                
                HStack {
                    
                    // Back Button
                    if currentPlaceIndex > 0 {
                        Button(action: {
                            currentPlaceIndex -= 1
                            print("Button Tapped")
                        }, label: {
                            Text("< Back")
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding()
                                .frame(width: 100, height: 40)
                                .background(Color.secondary)
                                .cornerRadius(20)
                        }) .padding()
                            .shadow(radius: 20)
                    }
                    
                    Spacer()
                    
                    // Next Button
                    if currentPlaceIndex < touristPlaces.count - 1 {
                        Button(action: {
                            currentPlaceIndex += 1
                            print("Button Tapped")
                        }, label: {
                            Text("Next >")
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding()
                                .frame(width: 100, height: 40)
                                .background(Color.secondary)
                                .cornerRadius(30)
                        }) .padding()
                            .shadow(radius: 20)
                    }
                }
                
                Spacer()
            }
        }
    }
}

// Rating View
struct RatingView: View {
    var rating: Int
    
    var body: some View {
        HStack {
            ForEach(1...5, id: \.self) { index in
                Image(systemName: index <= rating ? "star.fill" : "star")
                    .foregroundColor(.yellow)
                    .font(.caption)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
