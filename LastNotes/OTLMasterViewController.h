//
//  OTLMasterViewController.h
//  LastNotes
//
//  Created by Othmane Laousy on 3/26/13.
//  Copyright (c) 2013 Othmane Laousy. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <CoreData/CoreData.h>

@interface OTLMasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
