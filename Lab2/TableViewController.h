//
//  TableViewController.h
//  Lab2
//
//  Created by Tommy Andersson on 2019-02-21.
//  Copyright © 2019 Tommy Andersson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

NS_ASSUME_NONNULL_BEGIN
static NSString *word;

@interface TableViewController : UITableViewController
@property (nonatomic, strong) NSMutableArray *names;
@property (weak, nonatomic) IBOutlet UITextField *noteTextField;






- (void) setupArray; 


@end

NS_ASSUME_NONNULL_END
