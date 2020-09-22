//___FILEHEADER___

import SwiftUI

struct  ___FILEBASENAMEASIDENTIFIER___: View {
    
    var title: String               // FIXME: - Title and Image ต้องเป็นชื่อเดียวกัน
    var metric: GeometryProxy
    @Binding var selectedTab: String    // FIXME: - ต้องมี Binding เพื่อเลือก ว่า ปุ่มไหนถูกเลือก ตาม Title
    
    
    func proxyHeight(for metric: GeometryProxy) -> CGFloat {
        let proxyHeight = metric.size.height * 0.1
        
        return proxyHeight
    }
    
    var body: some View {
            
            Button(action: {
                
                selectedTab = title
            }, label: {
                
                Label(title: {
                    
                    Text(title)
                        .font(.system(size: proxyHeight(for: metric) * 0.2, weight: .bold))
                    
                }, icon: {
                    
                    Image(title)
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: proxyHeight(for: metric) * 0.3, height: proxyHeight(for: metric) * 0.3)
                })
            })
            .foregroundColor(selectedTab == title ? Color(.systemRed) : Color(.systemGray))
            .padding(.vertical, proxyHeight(for: metric) * 0.1)
            .padding(.horizontal, proxyHeight(for: metric) * 0.2)
            
            .background(Color("yellow").opacity(selectedTab == title ? 0.4 : 0))
            .clipShape(Capsule())
            
           
    }
}


