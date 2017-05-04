//
//  ListViewController.m
//  MutualMobile
//
//  Created by Anuj Rajput on 05/04/2017.
//  Copyright © 2017 . All rights reserved.
//

#import "ListViewController.h"
#import "Photo.h"

#import <AFNetworking/UIImageView+AFNetworking.h>

static NSString * const cellIdentifier = @"photoCell";

@interface ListViewController () <UISearchBarDelegate>

@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;
@property (nonatomic, strong) UITableView *strongTableView;

@property (nonatomic, strong) NSArray <Photo *> *photoItems;

@end

@implementation ListViewController

#pragma mark - ViewController Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.strongTableView = self.tableView;
    self.searchBar.delegate = self;
    [self configureView];
}

- (void)configureView {
    self.title = @"Search Photos";
    self.tableView.rowHeight = UITableViewAutomaticDimension;
}

- (void)reloadItems {
    [self.tableView reloadData];
}

- (void)showPhotoItems:(NSArray *)photoItems {
    self.view = self.strongTableView;
    
    self.photoItems = photoItems;
    [self reloadItems];
}

// MARK: UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.photoItems.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    cell.textLabel.text = self.photoItems[indexPath.row].title;
    [cell.imageView setImageWithURL:self.photoItems[indexPath.row].url];
    
    return cell;
}

// MARK: UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // Navigate to DetailViewController with Photo object
    [self.presenter photoTapped:self.photoItems[indexPath.row]];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100.f;
}

// MARK: UISearchBarDelegate
- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
    // Pass the search text to ListInteractor to be passed on to the API
    [self.presenter searchForPhotos:searchBar.text];
}

@end
