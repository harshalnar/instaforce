//
//  CustomTableViewCell.m
//  instaforce
//
//  Created by Raja Rao DV on 2/10/14.
//  Copyright (c) 2014 Salesforce. All rights reserved.
//

#import "CustomTableViewCell.h"

@implementation CustomTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}




- (IBAction)likesBtnPressed:(id)sender {
    //Is anyone listening
    if([self.delegate respondsToSelector:@selector(likeButtonClickedOnCell:)])
    {
        //send the delegate function with the amount entered by the user
        [self.delegate likeButtonClickedOnCell:self];
    }
}
@end
