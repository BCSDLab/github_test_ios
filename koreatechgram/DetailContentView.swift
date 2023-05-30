//
//  DetailContent.swift
//  koreatechgram
//
//  Created by 정태훈 on 2023/05/09.
//

import SwiftUI

struct DetailContentView: View {
    var index: Int
    var body: some View {
        ContentItem()
    }
}

struct DetailContentView_Previews: PreviewProvider {
    static var previews: some View {
        DetailContentView(index: 0)
    }
}
