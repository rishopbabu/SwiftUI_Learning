//
//  LaunchScreen.swift
//  SwiftUI_Learning
//
//  Created by Mac-OBS-51 on 31/08/23.
//

import SwiftUI

struct LaunchScreen: View {
    @State private var shouldShowMainContent = false
    var body: some View {
        ZStack {
            
            Color(uiColor: .black)
                .ignoresSafeArea()
            
            Image("launchscreen")
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                self.shouldShowMainContent = true
            }
        }
        .fullScreenCover(isPresented: $shouldShowMainContent) {
            FirstView()
        }
    }
}

struct LaunchScreen_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreen()
    }
}
