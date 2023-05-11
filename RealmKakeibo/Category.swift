//
//  Category.swift
//  RealmKakeibo
//
//  Created by Haruto Hamano on 2023/05/11.
//

import Foundation
import RealmSwift

class Category: Object {
    @Persisted var title :String = ""
}
