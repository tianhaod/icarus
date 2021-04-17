//
//  TrainingView.swift
//  test
//
//  Created by tianhao on 2021/4/17.
//

import SwiftUI

struct TrainingView: View {
    @State var visibility:Bool = false
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
                Button(action:{self.visibility=true}){
                    VisiButton()
                }
                
                Text("Scenerio Setting")
                    .font(.headline)
                    .foregroundColor(.black)
                    .padding()
                    .frame(width: 200, height: 60)
                    .background(Color.white)
                    .cornerRadius(35.0)
                    .border(Color.black, width: 5)
                Text("Quit")
                    .font(.headline)
                    .foregroundColor(.black)
                    .padding()
                    .frame(width: 200, height: 60)
                    .background(Color.white)
                    .cornerRadius(35.0)
                    .border(Color.black, width: 5)
            }
            NavigationLink(destination:VisiView(), isActive:$visibility) {EmptyView()}
            
            Spacer()
        }    }
}

struct TrainingView_Previews: PreviewProvider {
    static var previews: some View {
        TrainingView()
    }
}
struct VisiButton: View {
    var body: some View {
        Text("Visibility")
            .font(.headline)
            .foregroundColor(.black)
            .padding()
            .frame(width: 200, height: 60)
            .background(Color.white)
            .cornerRadius(35.0)
            .border(Color.black, width: 5)
    }
}
