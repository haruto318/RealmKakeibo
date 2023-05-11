//
//  ShoppingItem.swift
//  RealmKakeibo
//
//  Created by Haruto Hamano on 2023/05/10.
//

import Foundation
import RealmSwift

class ShoppingItem: Object {
    @Persisted var title: String = ""
    @Persisted var price: Int = 0
    @Persisted var isMarked: Bool = false
    @Persisted var category: Category?
}
