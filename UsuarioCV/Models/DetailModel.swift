//
//  DetailModel.swift
//  UsuarioCV
//
//  Created by Alexander Moreno Guillén on 8/12/19.
//  Copyright © 2019 Alexander Moreno Guillén. All rights reserved.
//

import Foundation
import RealmSwift

class DetailModel {
    let realm = try! Realm()
    
    func getCurriculum(id: Int) -> Curriculum {
        let curriculums = realm.objects(Curriculum.self)
        return curriculums[id]
    }
}
