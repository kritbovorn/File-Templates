//___FILEHEADER___

import SwiftUI

struct  ___FILEBASENAMEASIDENTIFIER___: View {
    
    func proxyHeight(for metric: GeometryProxy) -> CGFloat {
        let proxyHeight = metric.size.height * 0.1
        
        return proxyHeight
    }
    
    var metric: GeometryProxy
    
    var body: some View {
        
        HStack {
            Text("Top Recipes")
                .foregroundColor(.primary)
                .font(.system(size: proxyHeight(for: metric) * 0.35, weight: .heavy))
            Spacer()
        }
        .padding(.horizontal)
        
    }
}


