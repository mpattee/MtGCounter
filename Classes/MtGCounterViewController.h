//
//  MtGCounterViewController.h
//  MtGCounter
//
//  Created by Mike Pattee on 1/29/11.
//  Copyright 2011 Cordax Software LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MtGCounterViewController : UIViewController 
	{
	IBOutlet UILabel *topLifePoints;
	IBOutlet UILabel *topPoisonPoints;
	IBOutlet UILabel *topLifePointsTitle;
	IBOutlet UILabel *topPoisonPointsTitle;
	IBOutlet UILabel *bottomLifePoints;
	IBOutlet UILabel *bottomPoisonPoints;
	IBOutlet UILabel *bottomLifePointsTitle;
	IBOutlet UILabel *bottomPoisonPointsTitle;
	
	NSInteger _topLife;
	NSInteger _topPoison;
	NSInteger _bottomLife;
	NSInteger _bottomPoison;
	}
	
- (IBAction)incrementTopLifePoint:(id)sender;
- (IBAction)decrementTopLifePoint:(id)sender;
- (IBAction)incrementTopPoisonPoint:(id)sender;
- (IBAction)decrementTopPoisonPoint:(id)sender;
- (IBAction)incrementBottomLifePoint:(id)sender;
- (IBAction)decrementBottomLifePoint:(id)sender;
- (IBAction)incrementBottomPoisonPoint:(id)sender;
- (IBAction)decrementBottomPoisonPoint:(id)sender;

@end

