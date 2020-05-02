//
//  MyMovieCell.swift
//  MyMovies
//
//  Created by Chad Parker on 5/1/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MyMovieCell: UITableViewCell {
    
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var hasWatchedButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

    @IBAction func toggleHasWatched(_ sender: Any) {
        
    }
}