//
//  AddView.swift
//  TDo
//
//  Created by 지현정 on 2021/11/17.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel: ListViewModel
    
    @State var textFieldText: String = ""
    
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("할 일을 적어주세요", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height:55)
                    .background(Color(UIColor.secondarySystemBackground))
                    .cornerRadius(10)
                Button(action: saveButtonPressed, label: {
                    Text("저장하기".uppercased())
                        .foregroundColor(.white)
                        .frame(height:55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })
            }
            .padding(15)
        }
        .navigationTitle("2 :Do 작성 🖊")
        .alert(isPresented: $showAlert, content: getAlert)
    }
    
    func saveButtonPressed(){
        if textIsAppropriate() {
            listViewModel.addItem(title: textFieldText)
            presentationMode.wrappedValue.dismiss()
        }
    }
    
    func textIsAppropriate() -> Bool {
        if textFieldText.count < 3 {
            alertTitle = "3글자 이상 입력하세요😰"
            showAlert.toggle()
            return false
        }
        return true
    }
    
    func getAlert() -> Alert {
        return Alert(title: Text(alertTitle))
    }
    
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }
        .environmentObject(ListViewModel())
    }
}
