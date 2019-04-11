//
//  TableViewCell.h
//  Lab2
//
//  Created by Tommy Andersson on 2019-02-21.
//  Copyright © 2019 Tommy Andersson. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *numberLabel;

@end

NS_ASSUME_NONNULL_END
