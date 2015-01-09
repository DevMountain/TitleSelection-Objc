//
//  TitleSelectorViewController.m
//  TitleSelection
//
//  Created by Joshua Howland on 8/23/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "TitleSelectorViewController.h"

@interface TitleSelectorViewController () <UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation TitleSelectorViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self titles].count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [UITableViewCell new];
    }
    cell.textLabel.text = [self titles][indexPath.row];
    return cell;
}

- (NSArray *)titles {
    return @[@"The Constant Gardener", @"How the West Was Fun", @"Every Which Way But Loose", @"Riding In Cars With Boys", @"It Happened One Night", @"Firday After Next", @"Herbie: Fully Loaded", @"The Owls of GaHoole", @"Surfer Dude", @"The Day After Tomorrow", @"John Carter", @"Octopussy", @"Face Off", @"I Still Know What You Did Last Summer", @"Gigli"];
}


@end
