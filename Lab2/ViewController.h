//
//  ViewController.h
//  Lab2
//
//  Created by Tommy Andersson on 2019-02-21.
//  Copyright © 2019 Tommy Andersson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableViewController.h"
#import "TableViewCell.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *theWordLabel;
@property (nonatomic, strong) NSString *passedWord;




@end

