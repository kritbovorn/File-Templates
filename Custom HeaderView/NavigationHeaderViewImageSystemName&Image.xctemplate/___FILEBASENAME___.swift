//___FILEHEADER___

import SwiftUI

struct  ___FILEBASENAMEASIDENTIFIER___: View {
    
    var metric: GeometryProxy
    
    func proxyHeight(for metric: GeometryProxy) -> CGFloat {
        let proxyHeight = metric.size.height * 0.1
        
        return proxyHeight
    }
    
    var body: some View {
        
        HStack {
            Button(action: {
                
            }, label: {
                Image(systemName: "line.horizontal.3")
                    .font(.system(size: proxyHeight(for: metric) * 0.4, weight: .bold))
                    .foregroundColor(.primary)
            })
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                Image("profile")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: proxyHeight(for: metric) * 0.4, height: proxyHeight(for: metric) * 0.4)
                    .clipShape(Circle())
            })
        }
        .padding(.horizontal)
    }
}

