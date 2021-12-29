//
//  Router.swift
//  Kadai11
//
//  Created by daiki umehara on 2021/12/29.
//

import SwiftUI

class HomeRouter {
    func presentPrefectureList() -> PrefectureList {
        return PrefectureList(isShowPrefectures: .constant(true), prefectures: [])
    }
}
