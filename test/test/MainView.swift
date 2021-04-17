//
//  MainUIView.swift
//  test
//
//  Created by tianhao on 2021/4/17.
//

import SwiftUI

struct MainView:View {
    @State var startVar:Bool = false
    
    var body: some View {
        
            VStack{
                HStack{
                Text("Icarus")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .padding(.bottom,100)
                    
                }
                .offset(y:+100)
                Spacer()
                VStack{
                    Button(action:{self.startVar=true}){
                        startButton()
                    }
                    
                    Text("Create Scenario")
                        .font(.headline)
                        .foregroundColor(.black)
                        .padding()
                        .frame(width: 200, height: 60)
                        .background(Color.white)
                        .cornerRadius(35.0)
                        .border(Color.black, width: 5)
                    Text("Manage Scenario")
                        .font(.headline)
                        .foregroundColor(.black)
                        .padding()
                        .frame(width: 200, height: 60)
                        .background(Color.white)
                        .cornerRadius(35.0)
                        .border(Color.black, width: 5)
                }
                NavigationLink(destination:TrainingView(), isActive:$startVar) {EmptyView()}
                
                Spacer()
            }
        }
    
}


struct MainUIView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

struct startButton: View {
    var body: some View {
        Text("Start")
            .font(.headline)
            .foregroundColor(.black)
            .padding()
            .frame(width: 200, height: 60)
            .background(Color.white)
            .cornerRadius(35.0)
            .border(Color.black, width: 5)
    }
}


