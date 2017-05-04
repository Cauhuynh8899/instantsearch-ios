//
//  ResultingDelegate.swift
//  InstantSearch
//
//  Created by Guy Daher on 05/04/2017.
//
//

import Foundation
import InstantSearchCore

@objc public protocol ResultingDelegate: class {
    @objc func on(results: SearchResults?, error: Error?, userInfo: [String: Any])
}