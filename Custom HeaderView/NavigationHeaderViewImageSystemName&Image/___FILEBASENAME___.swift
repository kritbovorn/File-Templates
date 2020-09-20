//___FILEHEADER___

import SwiftUI

struct  ___FILEBASENAMEASIDENTIFIER___: View {
    
    var size: CGSize
    
    var body: some View {
        
        HStack {
            Button(action: {
                
            }, label: {
                Image(systemName: "line.horizontal.3")
                    .font(.system(size: size.height * 0.5, weight: .bold))
                    .foregroundColor(.primary)
            })
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                Image("profile")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: size.height * 0.6, height: size.height * 0.6)
                    .clipShape(Circle())
            })
        }
        .padding(.horizontal)
    }
}

struct  ___FILEBASENAMEASIDENTIFIER____Previews: PreviewProvider {
    static var previews: some View {
        ___FILEBASENAMEASIDENTIFIER___(size: CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.1))
    }
}
