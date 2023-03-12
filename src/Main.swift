import SwiftUI

@main
class Main: App
{
/*    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var the_view_: ContentView!
    
    */
   /*
     @Environment(\.scenePhase) var scenePhase
    */
    var body: some Scene
    {
        WindowGroup
        {
            ContentView()
        }
    }
}


struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
            Text("I'm great!")
        }
    }
}
