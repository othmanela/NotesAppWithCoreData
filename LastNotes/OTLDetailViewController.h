//
//  OTLDetailViewController.h
//  LastNotes
//
//  Created by Othmane Laousy on 3/26/13.
//  Copyright (c) 2013 Othmane Laousy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
@interface OTLDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UITextView *detailTitle;
@property (weak, nonatomic) IBOutlet UITextView *detailContent;
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;


- (void)addPinToMapAtLocation:(CLLocationCoordinate2D)location;

@end
