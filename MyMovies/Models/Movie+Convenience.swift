//
//  Movie+Convenience.swift
//  MyMovies
//
//  Created by Chad Parker on 5/1/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation
import CoreData

extension Movie {
    
    @discardableResult convenience init(identifier: UUID = UUID(), title: String, hasWatched: Bool, context: NSManagedObjectContext) {
        
        self.init(context: context)
        
        self.identifier = identifier
        self.title = title
        self.hasWatched = hasWatched
    }
    
    @discardableResult convenience init?(movieRepresentation: MovieRepresentation, context: NSManagedObjectContext = CoreDataStack.shared.mainContext) {
        
        guard let identifier = movieRepresentation.identifier,
            let hasWatched = movieRepresentation.hasWatched else { fatalError() }
        
        self.init(identifier: identifier,
                   title: movieRepresentation.title,
                   hasWatched: hasWatched,
                   context: context)
    }
    
    var entryRepresentation: MovieRepresentation? {
        guard let title = title,
            let identifier = identifier else { fatalError() }
        
        return MovieRepresentation(title: title,
                                   identifier: identifier,
                                   hasWatched: hasWatched)
    }
}