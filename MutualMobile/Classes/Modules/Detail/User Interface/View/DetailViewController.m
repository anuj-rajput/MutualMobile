//
//  DetailViewController.m
//  MutualMobile
//
//  Created by Anuj Rajput on 05/04/2017.
//  Copyright © 2017 . All rights reserved.
//

#import "DetailViewController.h"
#import "Photo.h"

#import <AFNetworking/UIImageView+AFNetworking.h>

@interface DetailViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@property (nonatomic, strong) Photo *photoItem;

@end

@implementation DetailViewController

#pragma mark - ViewController Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self showDetails:self.photoItem];
}

- (void)setPhotoItem:(Photo *)photoItem {
    self.photoItem = photoItem;
}

- (void)showDetails:(Photo *)photoItem {
    [self.imageView setImageWithURL:photoItem.url];
    self.titleLabel.text = photoItem.title;
}


@end
