//
//  PrefectureViewModel.swift
//  Kadai11
//
//  Created by daiki umehara on 2021/12/28.
//

import Foundation
import SwiftUI

class PrefectureViewModel: ObservableObject {
    private let prefectureUseCase: PrefectureUseCaseProtocol
    @Published var prefectures = [String]()
    @Published var isPresented: Binding<Bool>

    init(prefectureUseCase: PrefectureUseCaseProtocol,
         isPresented: Binding<Bool>) {
        self.prefectureUseCase = prefectureUseCase
        self.isPresented = isPresented
    }

    private func fetchPrefectures() {
        DispatchQueue.main.async {
            Task {
                self.prefectures = await self.prefectureUseCase.getPrefectures()
            }
        }
    }

    func onTapCancelButton() {
        isPresented.wrappedValue = false
    }

    func onTapCell(_ prefecture: String) {
        self.prefectureUseCase.saveSelectedPrefecture(prefecture)
        isPresented.wrappedValue = false
    }

    func onAppear() {
        self.fetchPrefectures()
    }
}
