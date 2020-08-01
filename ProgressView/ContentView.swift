//
//  ContentView.swift
//  ProgressView
//
//  Created by funway on 2020/7/31.
//  Copyright © 2020 funwaywang. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var progress = 0.3
    
    var body: some View {
        VStack(spacing: 10) {
            Button(">>") {
                self.progress += 0.05
            }
            
            Divider()
            
            LinearProgress(progress: CGFloat(self.progress)).frame(height: 50)
            
            CircularProgress(progress: CGFloat(self.progress)).frame(width: 100, height: 150)
                .overlay(Text("\(Int(progress*100))%"))
            
            FilledCircleProgress(progress: CGFloat(self.progress)).frame(width: 150, height: 200)
            
            ArcProgress(progress: CGFloat(self.progress)).frame(width: 200, height: 100)
                .overlay(Text("\(Int(progress*100))%"))
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
