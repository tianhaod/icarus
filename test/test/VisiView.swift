//
//  VisiView.swift
//  test
//
//  Created by tianhao on 2021/4/17.
//

import SwiftUI

struct VisiView: View {
    @State var selection:String? = nil
    @State var exitVar:Bool = false
    var body: some View {
        VStack{
            Text("VMC-Safety")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom,20)
            Button(action: {self.selection = "clear"}, label: {
                clearButton(selection: $selection)
            })
            Text("VMC-Safety")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom,20)
            Button(action: {self.selection = "1mile"}, label: {
                oneMileButton(selection: $selection)
            })
            Button(action: {self.selection = "1/2mile"}, label: {
                halfMileButton(selection: $selection)
            })
            Button(action: {self.selection = "0mile"}, label: {
                zeroMileButton(selection: $selection)
            })
            .padding(.bottom,100)
            

           
            HStack{
                Spacer()
                Text("Confirm")
                    .font(Font.body.bold())
                    .foregroundColor(.black)
                    .padding()
                    .frame(width: 100, height: 60)
                    .background(Color.white)
                    .cornerRadius(35.0)
                    .border(Color.black, width: 5)
                    .padding(.bottom, 10)
                Spacer()
                Button(action: {self.exitVar = true}, label: {
                    exitButton()
                })
                Spacer()
                NavigationLink(destination:TrainingView(), isActive:$exitVar) {EmptyView()}
            }
            
        }
    }
}

struct VisiView_Previews: PreviewProvider {
    static var previews: some View {
        VisiView()
    }
}

struct oneMileButton: View {
    @Binding var selection: String?
    var body: some View {
        if selection == "1mile" {
            Text("1 Mile")
                .font(.headline)
                .foregroundColor(.black)
                .padding()
                .frame(width: 200, height: 60)
                .cornerRadius(35.0)
                .border(Color.black, width: 5)
                .background(Color.gray.opacity(0.5))
                .padding(.bottom, 10)
        } else {
            Text("1 Mile")
                .font(.headline)
                .foregroundColor(.black)
                .padding()
                .frame(width: 200, height: 60)
                .cornerRadius(35.0)
                .border(Color.black, width: 5)
                .background(Color.white)
                .padding(.bottom, 10)
        }
    }
}

struct clearButton: View {
    @Binding var selection: String?
    var body: some View {
        if selection == "clear" {
            Text("Clear")
                .font(.headline)
                .foregroundColor(.black)
                .padding()
                .frame(width: 200, height: 60)
                .cornerRadius(35.0)
                .border(Color.black, width: 5)
                .background(Color.gray.opacity(0.5))
                .padding(.bottom, 10)
        } else {
            Text("Clear")
                .font(.headline)
                .foregroundColor(.black)
                .padding()
                .frame(width: 200, height: 60)
                .cornerRadius(35.0)
                .border(Color.black, width: 5)
                .background(Color.white)
                .padding(.bottom, 10)
        }
    }
}

struct halfMileButton: View {
    @Binding var selection: String?
    var body: some View {
        if selection == "1/2mile" {
            Text("1/2mile")
                .font(.headline)
                .foregroundColor(.black)
                .padding()
                .frame(width: 200, height: 60)
                .cornerRadius(35.0)
                .border(Color.black, width: 5)
                .background(Color.gray.opacity(0.5))
                .padding(.bottom, 10)
        } else {
            Text("1/2mile")
                .font(.headline)
                .foregroundColor(.black)
                .padding()
                .frame(width: 200, height: 60)
                .cornerRadius(35.0)
                .border(Color.black, width: 5)
                .background(Color.white)
                .padding(.bottom, 10)
        }
    }
}

struct zeroMileButton: View {
    @Binding var selection: String?
    var body: some View {
        if selection == "0mile" {
            Text("0mile")
                .font(.headline)
                .foregroundColor(.black)
                .padding()
                .frame(width: 200, height: 60)
                .cornerRadius(35.0)
                .border(Color.black, width: 5)
                .background(Color.gray.opacity(0.5))
                .padding(.bottom, 10)
        } else {
            Text("0mile")
                .font(.headline)
                .foregroundColor(.black)
                .padding()
                .frame(width: 200, height: 60)
                .cornerRadius(35.0)
                .border(Color.black, width: 5)
                .background(Color.white)
                .padding(.bottom, 10)
        }
    }
}

struct exitButton: View {
    var body: some View {
        Text("Exit")
            .font(Font.body.bold())
            .foregroundColor(.black)
            .padding()
            .frame(width: 100, height: 60)
            .background(Color.white)
            .cornerRadius(35.0)
            .border(Color.black, width: 5)
            .padding(.bottom, 10)
    }
}
