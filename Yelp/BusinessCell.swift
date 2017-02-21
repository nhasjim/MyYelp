//
//  BusinessCell.swift
//  Yelp
//
//  Created by Nick Hasjim on 2/20/17.
//  Copyright © 2017 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {

    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var ratingsImage: UIImageView!
    @IBOutlet weak var categoriesLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var numReviewsLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var thumbnail: UIImageView!
    
    var business: Business! {
        didSet {
            nameLabel.text = business.name;
            thumbnail.setImageWith(business.imageURL!);
            categoriesLabel.text = business.categories;
            addressLabel.text = business.address;
            numReviewsLabel.text = "\(business.reviewCount!) Reviews"
            ratingsImage.setImageWith(business.ratingImageURL!);
            distanceLabel.text = business.distance;
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        thumbnail.layer.cornerRadius = 5;
        thumbnail.clipsToBounds = true;
        
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width;
        
        // Initialization code
    }
    
    override func layoutSubviews() {
        super.layoutSubviews();
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width;

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
