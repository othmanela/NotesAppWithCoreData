//
//  OTLDetailViewController.h
//  LastNotes
//
//  Created by Othmane Laousy on 3/26/13.
//  Copyright (c) 2013 Othmane Laousy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OTLDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
