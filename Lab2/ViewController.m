//
//  ViewController.m
//  Lab2
//
//  Created by Tommy Andersson on 2019-02-21.
//  Copyright © 2019 Tommy Andersson. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _theWordLabel.text = [NSString stringWithFormat: @"You pressed: "  "%@", _passedWord];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}



@end
