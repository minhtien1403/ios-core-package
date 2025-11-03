//
//  File.swift
//  Core
//
//  Created by partnertientm2 on 3/11/25.
//

import Foundation
import Combine

open class BaseViewModel {
    
    public var cancellables = Set<AnyCancellable>()
    public init() {}
}
