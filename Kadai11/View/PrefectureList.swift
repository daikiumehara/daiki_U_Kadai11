//
//  PrefectureList.swift
//  Kadai11
//
//  Created by daiki umehara on 2021/12/28.
//

import SwiftUI

struct PrefectureList: View {

    @Binding var isShowPrefectures: Bool
    var prefectures: [String]

    var body: some View {
        NavigationView {
            List {
                ForEach(self.prefectures, id: \.self) { prefecture in
                    Text(prefecture)
                }
            }
            .navigationBarTitle("都道府県", displayMode: .inline)
            .listStyle(.plain)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        self.isShowPrefectures.toggle()
                    } label: {
                        Text("cancel")
                    }
                }
            }
        }
    }
}

struct PrefectureList_Previews: PreviewProvider {
    static var previews: some View {
        PrefectureList(isShowPrefectures: .constant(true),
                       prefectures: ["a", "b", "c", "d"])
    }
}
