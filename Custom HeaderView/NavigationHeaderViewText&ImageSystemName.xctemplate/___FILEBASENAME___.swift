//___FILEHEADER___

import SwiftUI

struct  ___FILEBASENAMEASIDENTIFIER___: View {
    
    @Binding var isDark: Bool
    var size: CGSize
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            HStack {
                
                Spacer()
                
                HStack {
                    Text("Analog Clock")
                        .foregroundColor(Color.primary)
                        .font(.system(size: size.height * 0.4, weight: .bold))
                    
                    Spacer()
                    
                    Button(action: {
                        
                        withAnimation {
                            isDark.toggle()
                        }
                        
                    }, label: {
                        Image(systemName: isDark ? "sun.min.fill" : "moon.fill")
                            .font(.system(size: size.height * 0.25, weight: .bold))
                            .foregroundColor(isDark ? Color.black : Color.white )
                            .frame(width: size.height * 0.5, height: size.height * 0.5)
                            .background(Color.primary)
                            .clipShape(Circle())
                    })
                }
                
                Spacer()
                
            }
            
            Spacer()
        }
    }
}

struct  ___FILEBASENAMEASIDENTIFIER____Previews: PreviewProvider {
    static var previews: some View {
        ___FILEBASENAMEASIDENTIFIER___(isDark: .constant(true), size: CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.1))
    }
}
