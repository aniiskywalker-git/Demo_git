//
//  ContentView.swift
//  CustomViews
//
//  Created by Ana Victoria Frias on 09/12/20.
//

import SwiftUI

public enum ViewRequested {
    case noInternetConnection
    case Loading
}

struct ContentView: View {
    
    private let message: String = "No internet connection"
    private let isHidden = false //have to be an enum
    
    @State private var isLoading = false
    @State private var showPopover = true

    var body: some View {
        
        if self.isHidden {
            Text(message)
        }else{
           
                Circle()
                    .stroke(style: StrokeStyle(lineWidth: 8, lineCap: .butt, dash: [4, 20]))
                    .frame(width: 100, height: 100, alignment: .center)
                    .foregroundColor(.gray)
                    .onAppear(perform: {
                        withAnimation(  Animation.linear(duration: 2.0).repeatForever(autoreverses: false)) {
                            isLoading.toggle()
                        }
                    }).rotationEffect(Angle(degrees: isLoading ? 0 : 360))
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().frame(width: 200, height: 200, alignment: .center)
    }
}
