//
//  ContentView.swift
//  Icarus
//
//  Created by tianhao on 2021/4/15.
//

import SwiftUI

let grey = Color(red: 239.0/255.0, green:243/255,blue:244/255)
let testUsername = "Test"
let testPassword = "test"
struct ContentView: View {
    @State var username: String = ""
    @State var password: String = ""
    @State var wait:Bool = true
    @State var authentication: Bool = false
    var body: some View {
        ZStack{
            VStack{
                ICARUS()
                blackHawk()
                UsernameField(username: $username)
                PasswordField(password: $password)
                if !authentication && !wait {
                    Text("Incorrect Login information, try again")
                        .offset(y:-10)
                        .foregroundColor(.red)
                }
                Button(action: {if self.username == testUsername && self.password == testPassword {
                    self.authentication = true
                    self.wait = false
                } else {
                    self.authentication = false
                    self.wait = false
                }
                    
                }){
                LoginButtonContent()
                }
            }
            .padding()
            if authentication && !wait{
                Text("Login Succeed!")
                    .foregroundColor(.green)
            }
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11")
    }
}

struct ICARUS: View {
    var body: some View {
        Text("ICARUS")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom,20)
    }
}

struct blackHawk: View {
    var body: some View {
        Image("blackhawk")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width:300, height: 200)
            .clipped()
            .padding(.bottom, 75)
    }
}

struct LoginButtonContent: View {
    var body: some View {
        Text("LOGIN")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 200, height: 60)
            .background(Color.black)
            .cornerRadius(35.0)
    }
}

struct UsernameField: View {
    @Binding var username:String
    var body: some View {
        
        TextField("Username", text: $username)
            .padding()
            .background(grey)
            .cornerRadius(5.0)
            .padding(.bottom,10)
    }
}

struct PasswordField: View {
    @Binding var password:String
    var body: some View {
        SecureField("Password", text: $password)
            .padding()
            .background(grey)
            .cornerRadius(5.0)
            .padding(.bottom,20)
    }
}
