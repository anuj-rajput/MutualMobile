//
//  DetailViewController.h
//  MutualMobile
//
//  Created by Anuj Rajput on 05/04/2017.
//  Copyright © 2017 . All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailProtocols.h"

@interface DetailViewController : UIViewController <DetailViewProtocol>

@property (nonatomic, strong) id <DetailPresenterProtocol> presenter;

@end
