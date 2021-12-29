//
//  PrefectureViewModel.swift
//  Kadai11
//
//  Created by daiki umehara on 2021/12/28.
//

import Foundation
import Combine

class PrefectureViewModel: ObservableObject {
    @Published var isShowPrefectures: Bool
    @Published var prefectures = [String]()

    init(isShowPrefectures: Published<Bool>) {
        self._isShowPrefectures = isShowPrefectures
    }

    func didTapCancelButton() {
        self.isShowPrefectures.toggle()
    }
}
