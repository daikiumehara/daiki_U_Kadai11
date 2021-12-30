//
//  PrefectureRepository.swift
//  Kadai11
//
//  Created by daiki umehara on 2021/12/29.
//

import Foundation

protocol PrefectureRepositoryProtocol {
    func getPrefectures() async -> [String]
    func saveSelectedPrefecture(_ prefecture: String)
    func getSelectedPrefecture() -> String
}

class PrefectureRepository: PrefectureRepositoryProtocol {
    static let `default` = PrefectureRepository()
    private var prefecture: String = "未選択"

    func saveSelectedPrefecture(_ prefecture: String) {
        self.prefecture = prefecture
    }

    func getSelectedPrefecture() -> String {
        self.prefecture
    }

    func getPrefectures() async -> [String] {
        await APIClient.fetchData()
    }
}
