//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Kamil Wójcicki on 01/03/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var shownigAlert  = false
    
    var body: some View {
        Button("show alert!"){
            shownigAlert = true
        }
        .alert("important message", isPresented: $shownigAlert){
            Button("Delete", role: .destructive){}
            Button("Cancel", role: .cancel){}
            //wiadomość która wyświetli się pod głównym tekstem po kliknięciu przycisku.
        }message: {
            Text("please read this")
        }
//        VStack {
//            HStack {
//                Text("1")
//                Text("2")
//                Text("3")
//            }
//            HStack {
//                Text("4")
//                Text("5")
//                Text("6")
//            }
//            HStack {
//                Text("7")
//                Text("8")
//                Text("9")
//            }
//        }
        
        //ZStack {
//        Button{
//            print("edit the button")
//        }label: {
//            Label("Edit", systemImage: "pencil")
//        }
//        VStack{
//            Button("button1"){}
//                .buttonStyle(.bordered)
//                .tint(.blue)
//            Button("button2", role: .destructive){}
//                .buttonStyle(.bordered)
//            Button("button3"){}
//
//            Button{
//                print("button was tapped!")
//            }label: {
//                Text("tap me!")
//                    .padding()
//                    .foregroundColor(.white)
//                    .background(.red)
//            }
//            Image(systemName: "pencil")
//                .padding()
//            Button{
//                print("edit the button")
//            }label: {
//                Label("Edit the button", systemImage: "pencil")
//            }
            //jeśli chcemy aby nasz obrazek miał kolory oryginalne a nie zmienione automatycznie przez swifta to stosujemy renderingMode
            //.renderingMode(.original)
       // }
        
           // LinearGradient(colors: [.white, .black], startPoint: .top, endPoint: .bottom)
//        LinearGradient(gradient: Gradient(stops: [
//            .init(color: .white, location: 0.45),
//            .init(color: .blue, location: 0.55)
//        ]), startPoint: .top, endPoint: .bottom)
        
//        RadialGradient(gradient: Gradient(colors: [.yellow, .blue]), center: .topLeading, startRadius: 50, endRadius: 300)
        
//        AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center)
//        AngularGradient(gradient: Gradient(stops: [
//            .init(color: .red, location: 0.23),
//            .init(color: .yellow, location: 0.12),
//            .init(color: .blue, location: 0.56)
//        ]), center: .center, startAngle: .degrees(8), endAngle: .degrees(100.6))
//            VStack(spacing: 0) {
//                Color.red
//                Color.blue
//            }
            //Color(red:1, green: 0.789, blue: 1)
//            Color.green
//            Color.secondary//Color.red
                //.frame(minWidth: 200, maxWidth: .infinity, maxHeight: 200)//.frame(width: 100, height: 100)
//            Text("test content")
//
//                .foregroundStyle(.secondary)
//                .padding(50)
//                .background(.ultraThinMaterial)
       // }
        //.background(.red)
       // .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
