//
//  PrefectureList.swift
//  Kadai11
//
//  Created by daiki umehara on 2021/12/28.
//

import SwiftUI

struct PrefectureList: View {
    @ObservedObject var viewModel: PrefectureViewModel

    var body: some View {
        NavigationView {
            List {
                ForEach(self.viewModel.prefectures, id: \.self) { prefecture in
                    Text(prefecture)
                }
            }
            .navigationBarTitle("都道府県", displayMode: .inline)
            .listStyle(.plain)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        self.viewModel.didTapCancelButton()
                    } label: {
                        Text("cancel")
                    }
                }
            }
        }
        .onAppear {
            self.viewModel.onAppear()
        }
    }
}

struct PrefectureList_Previews: PreviewProvider {
    static var value = Published(initialValue: false)
    static var previews: some View {
        PrefectureList(
            viewModel: PrefectureViewModel(
                prefectureDisplayManager: PrefecturesDisplayStatusManager(isShow: false), prefectureUseCase: PrefectureUseCase(prefectureRepo: PrefectureRepository())
            )
        )
    }
}
