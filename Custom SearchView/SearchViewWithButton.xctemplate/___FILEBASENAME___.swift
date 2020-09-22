//___FILEHEADER___

import SwiftUI

struct  ___FILEBASENAMEASIDENTIFIER___: View {
    
    func proxyHeight(for metric: GeometryProxy) -> CGFloat {
        let proxyHeight = metric.size.height * 0.1
        
        return proxyHeight
    }
    
    var metric: GeometryProxy
    @Binding var searchText: String
    
    var body: some View {
        
        HStack {
            
            HStack {
                Image(systemName: "magnifyingglass")
                    .font(.system(size: proxyHeight(for: metric) * 0.3, weight: .bold))
                    .foregroundColor(Color(.systemGray))
                TextField("Search Recipes !!!", text: $searchText)
                
                    
            }
            .padding()
            .background(Color.black.opacity(0.06))
            .cornerRadius(proxyHeight(for: metric) * 0.2)
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                Image("filter")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: proxyHeight(for: metric) * 0.4, height: proxyHeight(for: metric) * 0.4)
                    .padding()
                    .background(Color.yellow.opacity(0.2))
            })
            
            .cornerRadius(proxyHeight(for: metric) * 0.2)
        }
        .padding(.horizontal)
    }
    
}


