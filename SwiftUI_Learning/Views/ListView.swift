//
//  ListView.swift
//  SwiftUI_Learning
//
//  Created by Mac-OBS-51 on 31/08/23.
//

import SwiftUI

struct ListView: View {
    
    let touristPlaces: [TouristPlace] = [
        TouristPlace(imageName: "waterfalls", name: "Water Falls", description: "This waterfall is in Coimbatore.", rating: 4, reviews: "326" ),
        TouristPlace(imageName: "BlackThunder", name: "Black Thunder", description: "It is Asia's Number 1 theme park in coimbatore.", rating: 5, reviews: "265"),
        TouristPlace(imageName: "MarudhamalaiTemple", name: "Maruthamalai Temple", description: "It is one of the 6 houses of Lord Murugan.", rating: 4, reviews: "438"),
        TouristPlace(imageName: "GDCarMuseum", name: "GeDee Car Museum", description: "Gedee Car Museum is the only classic car museum of its kind in south India, located in Coimbatore.", rating: 3, reviews: "312"),
        TouristPlace(imageName: "IshaYoga", name: "Isha Yoga", description: "Isha Foundation is a nonprofit, spiritual organisation that was founded in 1992 near Coimbatore", rating: 4, reviews: "489")
        ]
        
    var body: some View {
        NavigationView {
            List(touristPlaces) { place in
                NavigationLink(destination: DetailView(place: place)) {
                    TouristPlaceCell(place: place)
                }
            }
        }.navigationTitle("Tourists Places")
    }
}

struct TouristPlaceCell: View {
    let place: TouristPlace
    
    var body: some View {
        HStack {
            Text(place.name)
                .font(.headline)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Text(place.description)
                .font(.subheadline)
                .foregroundColor(.gray)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .frame(maxWidth: .infinity) // Expand cell to full width
        .padding(.horizontal)
    }
}

struct DetailView: View {
    let place: TouristPlace
    
    var body: some View {
        VStack {
            Text(place.name)
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            
            Text(place.description)
                .font(.body)
                .padding()
            
            Spacer()
        }
        .navigationBarTitle(place.name, displayMode: .inline)
        .navigationBarBackButtonHidden(false)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
