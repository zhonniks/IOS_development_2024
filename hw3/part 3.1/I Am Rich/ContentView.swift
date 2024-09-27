import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            // Image View
            Image("diamond")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
                .padding()

            // Label View
            Text("I Am Rich")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding()
        }
        .background(Color.black)
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

