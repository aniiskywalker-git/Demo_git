//
//  CustomText.swift
//  CustomViews
//
//  Created by Ana Victoria Frias on 10/12/20.
//

import SwiftUI


struct CustomViews: View {
    
    @State private var isLoading = false

    var body: some View {
        Circle()
            .stroke(style: StrokeStyle(lineWidth: 8, lineCap: .butt, dash: [4, 20]))
            .frame(width: 45, height: 45, alignment: .center)
            .foregroundColor(.gray)
            .onAppear(perform: {
                withAnimation(  Animation.linear(duration: 2.0).repeatForever(autoreverses: false)) {
                    isLoading.toggle()
                    
                }
            }).rotationEffect(Angle(degrees: isLoading ? 0 : 360))
    }
}


struct CustomViews_Previews: PreviewProvider {
    static var previews: some View {
        CustomViews().frame(width: 200, height: 200, alignment: .center)
    }
}
