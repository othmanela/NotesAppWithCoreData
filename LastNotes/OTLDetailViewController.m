//
//  OTLDetailViewController.m
//  LastNotes
//
//  Created by Othmane Laousy on 3/26/13.
//  Copyright (c) 2013 Othmane Laousy. All rights reserved.
//

#import "OTLDetailViewController.h"

@interface OTLDetailViewController ()
- (void)configureView;
@end

@implementation OTLDetailViewController

#pragma mark - Managing the detail item
-(void)mapViewDidFinishLoadingMap:(MKMapView *)mapView{
    NSNumber *lat = [self.detailItem valueForKey:@"lat"] ;
    double dlat = [lat doubleValue];
    NSNumber *lon = [self.detailItem valueForKey:@"lon"] ;
    double dlon = [lon doubleValue];
    CLLocationCoordinate2D coord= { dlat , dlon };
    [self addPinToMapAtLocation: coord];
    
}

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        self.detailDescriptionLabel.text = [[self.detailItem valueForKey:@"timeStamp"] description];
        self.detailTitle.text= [[self.detailItem valueForKey:@"title"] description];
        self.detailContent.text= [[self.detailItem valueForKey:@"content"] description];
        NSNumber *lat = [self.detailItem valueForKey:@"lat"] ;
        double dlat = [lat doubleValue];
        NSNumber *lon = [self.detailItem valueForKey:@"lon"] ;
        double dlon = [lon doubleValue];
        CLLocationCoordinate2D coord= { dlat , dlon };
        [self addPinToMapAtLocation: coord];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Location
- (void)addPinToMapAtLocation:(CLLocationCoordinate2D)location
{
    MKPointAnnotation *pin = [[MKPointAnnotation alloc] init];
    pin.coordinate = location;
    [self.mapView addAnnotation:pin];
    [self.mapView setCenterCoordinate:pin.coordinate];
    MKCoordinateSpan span;
    span.latitudeDelta=0.03;
    span.longitudeDelta=0.03;
    MKCoordinateRegion region=[self.mapView regionThatFits:MKCoordinateRegionMakeWithDistance(location, 200,  200)];
    region.center=pin.coordinate;
    region.span= span;
    [self.mapView setRegion:region animated:FALSE];
    
}
@end
