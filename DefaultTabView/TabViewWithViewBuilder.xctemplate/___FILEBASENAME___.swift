//___FILEHEADER___


import SwiftUI

// FIXME: - Sameple Array()
var titles = ["Home", "Shopping Cart", "Activity", "Contact Us", "Trash"]

// FIXME: - ContentView()
struct ___FILEBASENAMEASIDENTIFIER___: View {
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor(named: "AccentColor") ?? Color.primary]
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor(named: "AccentColor") ?? Color.primary]
    }
    
    @State private var indexOfTag: Int = 0
    
    var body: some View {
        
        NavigationView {
            
            GeometryReader { main in
                VStack(spacing: 0) {
                    
                    TabView(selection: $indexOfTag) {
                        
                        CustomTabViewWithViewBuilder(imageName: "house.fill", tabTitle: titles[0], index: 0) {
                            <#EmptyView()#>
                        }
                        
                        CustomTabViewWithViewBuilder(imageName: "cart.fill", tabTitle: titles[1], index: 1) {
                            <#EmptyView()#>
                        }
                        
                        CustomTabViewWithViewBuilder(imageName: "waveform.path.ecg", tabTitle: titles[2], index: 2) {
                            <#EmptyView()#>
                        }
                        
                        CustomTabViewWithViewBuilder(imageName: "tray.2.fill", tabTitle: titles[3], index: 3) {
                            <#EmptyView()#>
                        }
                        
                        CustomTabViewWithViewBuilder(imageName: "trash.fill", tabTitle: titles[4], index: 4) {
                            <#EmptyView()#>
                        }
                    }
                    .navigationTitle(titles[indexOfTag])
                    .toolbar {
                        ToolbarItem(placement: ToolbarItemPlacement.navigationBarLeading) {
                            Button(action: {
                                
                            }, label: {
                                Image(systemName: "gear")
                                    .foregroundColor(.accentColor)
                            })
                        }
                        
                        ToolbarItem(placement: ToolbarItemPlacement.navigationBarTrailing) {
                            Button(action: {
                                
                            }, label: {
                                Image(systemName: "gear")
                                    .foregroundColor(.accentColor)
                            })
                        }
                    }
                    
                    
                }
                
            }
            
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}




struct ___FILEBASENAMEASIDENTIFIER____Previews: PreviewProvider {
    static var previews: some View {
        ___FILEBASENAMEASIDENTIFIER___()
    }
}


// FIXME: - View Builder()

struct CustomTabViewWithViewBuilder<Content: View>: View {
    
    var imageName: String
    var tabTitle: String
    var index: Int
    
    let content: Content
    
    
    init(imageName: String, tabTitle: String, index: Int, @ViewBuilder content: () -> Content) {
        self.content = content()
        self.imageName = imageName
        self.tabTitle = tabTitle
        self.index = index
    }
    
    var body: some View {
        
        VStack {
            
            content
        }
        .tabItem {
            Image(systemName: imageName)
            Text(tabTitle)
        }
        .tag(index)
    }
}
