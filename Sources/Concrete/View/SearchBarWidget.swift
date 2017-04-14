//
//  SearchBarWidget.swift
//  ecommerce
//
//  Created by Guy Daher on 08/03/2017.
//  Copyright © 2017 Guy Daher. All rights reserved.
//

import Foundation
import InstantSearchCore

@objc public class SearchBarWidget: UISearchBar, SearchableViewModel, ResettableDelegate, AlgoliaView, UISearchBarDelegate {
    
    public var searcher: Searcher! {
        didSet {
            delegate = self
        }
    }
    
    public func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        searcher.params.query = searchText
        searcher.search()
    }
    
    public func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        searcher.params.query = ""
        searcher.search()
    }
    
    public func onReset() {
        resignFirstResponder()
        text = ""
    }
}