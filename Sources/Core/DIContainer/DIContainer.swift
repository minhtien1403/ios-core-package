//
//  File.swift
//  Core
//
//  Created by partnertientm2 on 3/11/25.
//

import Foundation

public final class DependencyContainer {
    
    @MainActor public static let shared = DependencyContainer()
    private init() {}
}
