//___FILEHEADER___

import SwiftUI

struct  ___FILEBASENAMEASIDENTIFIER___: View {
    
    var title: String               // FIXME: - ชื่อ title กับ ชื่อ Image  ต้องเป็นชื่อเดียวกัน
    var metric: GeometryProxy
    
    func proxyHeight(for metric: GeometryProxy) -> CGFloat {
        let proxyHeight = metric.size.height * 0.1
        
        return proxyHeight
    }
    
    var body: some View {
        
        VStack(spacing: proxyHeight(for: metric) * 0.5) {
            
            Image(title)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: proxyHeight(for: metric) / 2, height: proxyHeight(for: metric) / 2)
                .padding()
                .background(Color(.systemGray6))
                .clipShape(Circle())
            
            Text(title)
                .foregroundColor(Color("orange"))
                .font(.system(size: proxyHeight(for: metric) * 0.3, weight: .bold))
        }
        .padding(.vertical)
        .padding(.horizontal)
        .frame(height: proxyHeight(for: metric) * 2.5)    // FIXME: - กำหนดความสูง ของ View
        .background(Color("yellow").opacity(0.2))
        .clipShape(Capsule())
    }
}

    // FIXME: -  Data()   เดี๋ยวต้อง ลบ ออกไป
var categories = ["Fruits","Meats","Sushi","Fries", "Fruits","Meats","Sushi","Fries", "Fruits","Meats","Sushi","Fries"]
