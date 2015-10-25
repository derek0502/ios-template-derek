//
//  VerticalTableViewController.m
//  iosTemplate
//
//  Created by Derek Cheung on 25/10/15.
//  Copyright © 2015 Derek Cheung. All rights reserved.
//

#import "VerticalTableViewController.h"

// Controllers
#import "CollectionTableViewCellController.h"

// Views
#import "VerticalTableViewCell.h"
#import "CollectionTableViewCell.h"


@interface VerticalTableViewController ()<UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) CollectionTableViewCellController *collectionTableViewCellController;

@end


@implementation VerticalTableViewController


#pragma mark - View lifecycle

- (void)loadView {
    
    UITableView *tableView = [[UITableView alloc]init];
    tableView.delegate = self;
    tableView.dataSource = self;
    tableView.rowHeight = UITableViewAutomaticDimension;
    [tableView registerClass:[VerticalTableViewCell class] forCellReuseIdentifier:@"VerticalTableViewCell"];
    
    self.view = tableView;
}

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}


#pragma mark - Accessors

- (UITableView *)contentView {
    
    return (UITableView *)self.view;
}

- (CollectionTableViewCellController *)collectionTableViewCellController{
    
    if (!_collectionTableViewCellController) {
        
        _collectionTableViewCellController = [[CollectionTableViewCellController alloc]init];
    }
    
    return _collectionTableViewCellController;
}


#pragma mark - <UITableViewDataSource>

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = nil;
    
    if (indexPath.row == 0) {
        
        CollectionTableViewCell *theCell = (CollectionTableViewCell *)self.collectionTableViewCellController.view;
        
        cell = theCell;
        
    } else {
    
        VerticalTableViewCell *theCell = [tableView dequeueReusableCellWithIdentifier:@"VerticalTableViewCell"];
        
        if (indexPath.row == 1) {
            
            [theCell setTitle:@"kjdfahflksdjfhlkas fkjas dkjflks jf hkjdaf kjs ajkf ksjf djkas kdfks  fdkjl askfd"];
            
        } else if (indexPath.row == 2) {
            
            [theCell setTitle:@"skldfjlksdj"];
            
        } else if (indexPath.row == 3) {
            
            [theCell setTitle:@"sdklfjlks ksldjf lskdjf kdshfkj shfkjshjkfsk jdfhjksd jkf sjkdf jkshdfjk hsjkfhjk shfjkhsj kfdhjksd fkjhs jkdfhjksf jkshjkfd jksfdjk sjkdf skjf jkshfjkhs jkfdhk jsdf jkhsd jkf"];
        }
        
        cell = theCell;
    }
    
    
    return cell;
}

@end
