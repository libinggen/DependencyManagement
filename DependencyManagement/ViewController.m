//
//  ViewController.m
//  CallBack
//
//  Created by LiBinggen on 15/9/6.
//  Copyright (c) 2015年 qingqing. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, strong) NSArray *list;
@property (nonatomic, strong) UITableView *tableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initUI];
    [[self.postHelper hotAPI] loadData];
}

-(void)initUI
{
    self.title = @"最热-最新主题";
    CGRect frame = [[UIScreen mainScreen]bounds];
    self.tableView = [[UITableView alloc]initWithFrame:frame];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
    
//    self.list = [self.hotStoreHelper unarchive];
//    [self tableViewReloadData];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.list.count;
//    [self.postHelper routeHandle];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"cellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellIdentifier];
    }
    
    return [self configureWithCell:cell forRowAtIndexPath:indexPath];
}

- (UITableViewCell *)configureWithCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    cell.textLabel.text = [self.postHelper titleForPost:self.list[indexPath.row]];
    cell.imageView.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:[NSString stringWithFormat:@"http:%@",[self.postHelper imageURLStringForPost:self.list[indexPath.row]]]]]];
    return cell;
}

-(NSDictionary *)paramSourceAPIHandle:(id<APIInterface>)apiHandle
{
    if ([apiHandle isKindOfClass:[[self.postHelper hotAPI] class]]) {
        return @{
                 @"URLString" : @"https://www.v2ex.com/api/topics/hot.json"
                 };
    }
    else if ([apiHandle isKindOfClass:[[self.postHelper latestAPI] class]]) {
        return @{
                 @"URLString" : @"https://www.v2ex.com/api/topics/latest.json"
                 };
    }
    
    return nil;
}

- (void)listWtihData:(NSArray *)data apiHandle:(id<APIInterface>)apiHandle
{
    if ([apiHandle isKindOfClass:[[self.postHelper hotAPI] class]]) {
        self.list = data;
        [[self.postHelper latestAPI] loadData];
//        [self.hotStoreHelper archiveWithObject:data];
    }
    else if ([apiHandle isKindOfClass:[[self.postHelper latestAPI] class]]) {
        self.list = data;
    }
        
    [self tableViewReloadData];
}

- (void)tableViewReloadData
{
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end
