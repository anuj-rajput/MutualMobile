//
//  ListViewController.h
//  MutualMobile
//
//  Created by Anuj Rajput on 05/04/2017.
//  Copyright © 2017 . All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ListProtocols.h"

@interface ListViewController : UITableViewController <ListViewProtocol>

@property (nonatomic, strong) id <ListPresenterProtocol> presenter;

@end
