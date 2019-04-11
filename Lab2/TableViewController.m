//
//  TableViewController.m
//  Lab2
//
//  Created by Tommy Andersson on 2019-02-21.
//  Copyright © 2019 Tommy Andersson. All rights reserved.
//

#import "TableViewController.h"
#import "TableViewCell.h"
#import "ViewController.h"


@interface TableViewController ()



@end

@implementation TableViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupArray];
  
  
}

-(void) setupArray {
 _names = [NSMutableArray arrayWithObjects:@"Hej", @"På", @"Dig", @"Jag", @"Hoppas", @"Allt", @"Är", @"Bra", @"Med", @"Dig", nil];

}

- (IBAction)editCell:(id)sender {
    self.tableView.editing = !self.tableView.editing;
}

- (IBAction)refreshTable:(id)sender {
    [self.tableView reloadData]; 

}
- (IBAction)addNewNote:(id)sender {
    [_names addObject:_noteTextField.text];
    [self refreshTable:sender];
}



#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [_names count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"mytablecell" forIndexPath:indexPath];
    
    if (cell == nil) {
        cell = [[TableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"mytablecell"];
    }
    
    cell.textLabel.text = [_names objectAtIndex:indexPath.row];
    cell.numberLabel.text = [NSString stringWithFormat:@"%d", (int)indexPath.row +1];

    
    
    return cell;

}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/


// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [_names removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths: [NSArray arrayWithObjects:indexPath, nil] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}


/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
       NSIndexPath *selectedRow = [self.tableView indexPathForSelectedRow];
    if ([segue.identifier isEqualToString:@"segueToDetail"]) {
        
        
        ViewController *view = [segue destinationViewController];
        view.passedWord = [_names objectAtIndex:selectedRow.row];
        
        
    
    }
}

@end
