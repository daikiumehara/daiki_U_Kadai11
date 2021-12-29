//
//  HomeViewModel.swift
//  Kadai11
//
//  Created by daiki umehara on 2021/12/29.
//

import Foundation
import Combine

protocol HomeViewModelProtocol: ObservableObject {
    var isShowPrefectures: Bool { get }
    var prefecture: String { get }
}

class HomeViewModel: NSObject, HomeViewModelProtocol {
    @Published var isShowPrefectures: Bool = false
    @Published var prefecture: String = "未選択"
    
}
