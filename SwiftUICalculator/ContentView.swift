//
//  ContentView.swift
//  SwiftUICalculator
//
//  Created by OTSI on 27/2/21.
//

import SwiftUI

struct ContentView: View {
    
    let buttons = [
        ["AC","±","%","÷"],
        ["7","8","9","x"],
        ["4","5","6","-"],
        ["1","2","3","+"],
        ["%","0",".","="],
    ]
    
    var body: some View {
        ZStack (alignment: .bottom){
            Color.black.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack(spacing: 12){
                HStack{
                    Spacer()
                    Text("45").foregroundColor(.white)
                        .font(.system(size: 64))
                }.padding()
                ForEach(buttons, id: \.self){
                    row in
                    HStack(spacing: 12){
                        /*ForEach(row, id: \.self){
                            button in
                            Text(button)
                                .font(.system(size: 32))
                                .frame(width: self.buttonWidth(), height: self.buttonWidth())
                                .foregroundColor(.white)
                                .background(Color.yellow)
                                .cornerRadius(40)
                        }*/
                        ForEach(row, id: \.self){digit in
                            Button("\(digit)", action: {
                                print("\(digit)")
                            })
                            .font(.system(size: 32))
                            .frame(width: self.buttonWidth(), height: self.buttonWidth())
                            .foregroundColor(.white)
                            .background(self.getButtonColor(digit))
                            .cornerRadius(40)
                            
                        }
                    }
                }
            }.padding(.bottom)
        }
    }
    func getButtonColor(_ style: String) -> Color{
        if style == "+" || style == "-" || style == "=" || style == "x"  || style == "÷" {
            return Color.yellow
        }
        else {
            return Color.gray
        }
    }
    
    func buttonWidth() -> CGFloat {
        return (UIScreen.main.bounds.width - 5 * 12)  / 4
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
