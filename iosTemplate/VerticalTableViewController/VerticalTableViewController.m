//
//  VerticalTableViewController.m
//  iosTemplate
//
//  Created by Derek Cheung on 25/10/15.
//  Copyright © 2015 Derek Cheung. All rights reserved.
//

#import "VerticalTableViewController.h"

// Models
#import "ResponseModel.h"

// Controllers
#import "CollectionTableViewCellController.h"

// Views
#import "VerticalTableViewCell.h"
#import "CollectionTableViewCell.h"

// Constants
enum {
    kSectionHorizontal = 0,
    kSectionVertical,
    kSectionCount
}typedef kSection;


@interface VerticalTableViewController ()<UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) CollectionTableViewCellController *collectionTableViewCellController;
@property (nonatomic, strong) ResponseModel *dataSource;

@end


@implementation VerticalTableViewController


#pragma mark - View lifecycle

- (void)loadView {
    
    UITableView *tableView = [[UITableView alloc]init];
    
    [tableView setBackgroundColor:MYCOLOR_WHITE];
    
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

- (ResponseModel *)dataSource {
    
    if (!_dataSource) {
        
        _dataSource = [self generateFakeReponseModel];
    }
    
    return _dataSource;
}


#pragma mark - <UITableViewDataSource>

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return kSectionCount;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    NSInteger numberOfRow = 0;
    
    if (section == kSectionHorizontal) {
        
        if (self.dataSource.horizontalPosts.count > 0) {
            
            numberOfRow = 1;
            
        } else {
            
            numberOfRow = 0;
        }
    } else if (section == kSectionVertical) {
        
        numberOfRow = self.dataSource.verticalPosts.count;
    }
    
    return numberOfRow;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = nil;
    
    if (indexPath.section == kSectionHorizontal) {
        
        CollectionTableViewCell *theCell = (CollectionTableViewCell *)self.collectionTableViewCellController.view;
        
        [self.collectionTableViewCellController setDataSource:self.dataSource.horizontalPosts];
        
        cell = theCell;
        
    } else if (indexPath.section == kSectionVertical) {
    
        VerticalTableViewCell *theCell = [tableView dequeueReusableCellWithIdentifier:@"VerticalTableViewCell"];
        
        [theCell setModel:[self.dataSource.verticalPosts objectAtIndex:indexPath.row]];

        cell = theCell;
    }
    
    
    return cell;
}


#pragma mark - Helpers

- (ResponseModel *)generateFakeReponseModel{
    
    ResponseModel *reponse = [[ResponseModel alloc]init];
    
    PostModel *horizontalPost;
    
    NSMutableArray *horizontalPosts = [[NSMutableArray alloc]init];
    
    horizontalPost = [[PostModel alloc]init];
    horizontalPost.title = @"They are genius.";
    horizontalPost.imageName = @"horzontalImage0.png";
    [horizontalPosts addObject:horizontalPost];
    
    horizontalPost = [[PostModel alloc]init];
    horizontalPost.title = @"The Worst Fears That All Designers Have";
    horizontalPost.imageName = @"horzontalImage1.png";
    [horizontalPosts addObject:horizontalPost];
    
    horizontalPost = [[PostModel alloc]init];
    horizontalPost.title = @"Operations team before leaving for hoildays!";
    horizontalPost.imageName = @"horzontalImage2.png";
    [horizontalPosts addObject:horizontalPost];
    
    horizontalPost = [[PostModel alloc]init];
    horizontalPost.title = @"Everthing the dark touches is ours!";
    horizontalPost.imageName = @"horzontalImage3.png";
    [horizontalPosts addObject:horizontalPost];
    
    horizontalPost = [[PostModel alloc]init];
    horizontalPost.title = @"Pug Marching as Slimer in the Spooky Pooch Parade";
    horizontalPost.imageName = @"horzontalImage4.png";
    [horizontalPosts addObject:horizontalPost];
    
    horizontalPost = [[PostModel alloc]init];
    horizontalPost.title = @"Look a doge!";
    horizontalPost.imageName = @"horzontalImage5.png";
    [horizontalPosts addObject:horizontalPost];
    
    reponse.horizontalPosts = horizontalPosts;
    
    PostModel *verticalPost;
    
    NSMutableArray *verticalPosts = [[NSMutableArray alloc]init];
    
    verticalPost = [[PostModel alloc]init];
    verticalPost.title = @"Not beign apolgetic with evil inventions, but life has not being the pile of rose it's being sold to be...";
    verticalPost.imageName = @"verticalImage0.png";
    [verticalPosts addObject:verticalPost];
    
    verticalPost = [[PostModel alloc]init];
    verticalPost.title = @"Chivalry is not dead";
    verticalPost.imageName = @"verticalImage1.png";
    [verticalPosts addObject:verticalPost];
    
    verticalPost = [[PostModel alloc]init];
    verticalPost.title = @"Gotta always use protection";
    verticalPost.imageName = @"verticalImage2.png";
    [verticalPosts addObject:verticalPost];
    
    verticalPost = [[PostModel alloc]init];
    verticalPost.title = @"Switch flipping machine";
    verticalPost.imageName = @"verticalImage3.png";
    [verticalPosts addObject:verticalPost];
    
    verticalPost = [[PostModel alloc]init];
    verticalPost.title = @"Koulibaly gives a 50-metre pass, Callejon chips it over Midtjlland's kepper (0-1)";
    verticalPost.imageName = @"verticalImage4.png";
    [verticalPosts addObject:verticalPost];
    
    verticalPost = [[PostModel alloc]init];
    verticalPost.title = @"Surprise!";
    verticalPost.imageName = @"verticalImage5.png";
    [verticalPosts addObject:verticalPost];
    
    reponse.verticalPosts = verticalPosts;
    
    return reponse;
}


@end
