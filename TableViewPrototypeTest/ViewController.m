//
//  ViewController.m
//  TableViewPrototypeTest
//
//  Created by SDT1 on 2014. 1. 6..
//  Copyright (c) 2014년 SDT1. All rights reserved.
//

#import "ViewController.h"

#define CELL_ID  @"CELL_ID"

@interface ViewController () <UITableViewDataSource>
{
    NSArray *data;
}

@end

@implementation ViewController

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CELL_ID forIndexPath:indexPath];
    cell.textLabel.text = data[indexPath.row];
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [data count];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    data = @[@"a", @"b", @"c", @"d", @"e", @"f", @"g", @"h", @"i", @"j", @"k", @"l", @"m", @"n", @"o", @"p"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
