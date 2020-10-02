//___FILEHEADER___

//  https://swiftwithmajid.com/2019/12/18/the-power-of-viewbuilder-in-swiftui/

import SwiftUI

struct  ___FILEBASENAMEASIDENTIFIER___<Content: View>: View {
    
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
            
            content
                .padding()
                .background(BlurView(style: .systemUltraThinMaterialLight))
                .cornerRadius(16)
                .transition(.move(edge: .leading))  //  แสดง View โดยมาจากด้าน บน, ล่าง, ขวา, ซ้าย
                .animation(.spring())
        
    }
}


// FIXME: - ต้องสร้าง  BlurView()  เพื่อมารับค่า .background()

//      struct BlurView: UIViewRepresentable {
//
//          var style: UIBlurEffect.Style
//
//          func makeUIView(context: Context) -> UIVisualEffectView {
//              let view = UIVisualEffectView(effect: UIBlurEffect(style: style))
//
//              return view
//          }
//
//          func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
//
//          }
//      }
