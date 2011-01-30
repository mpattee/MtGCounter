//
//  MtGCounterViewController.m
//  MtGCounter
//
//  Created by Mike Pattee on 1/29/11.
//  Copyright 2011 Cordax Software LLC. All rights reserved.
//

#import "MtGCounterViewController.h"

@implementation MtGCounterViewController

- (id)init
	{
	self = [super initWithNibName:nil bundle:nil];
    if (self) 
		{
        _topLife = 20;
		_topPoison = 0;
		_bottomLife = 20;
		_bottomPoison = 0;
		}
    return self;
	}

// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) 
		{
        _topLife = 20;
		_topPoison = 0;
		_bottomLife = 20;
		_bottomPoison = 0;
		}
    return self;
	}

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/

- (void)reset
	{
	_topLife = 20;
	_topPoison = 0;
	_bottomLife = 20;
	_bottomPoison = 0;
	}

- (void)updateView
	{
	topLifePoints.text = [NSString stringWithFormat:@"%d", _topLife];
	topPoisonPoints.text = [NSString stringWithFormat:@"%d", _topPoison];
	bottomLifePoints.text = [NSString stringWithFormat:@"%d", _bottomLife];
	bottomPoisonPoints.text = [NSString stringWithFormat:@"%d", _bottomPoison];
	}
	
- (IBAction)incrementTopLifePoint:(id)sender
	{
	_topLife++;
	[self updateView];
	}
	
- (IBAction)decrementTopLifePoint:(id)sender
	{
	_topLife--;
	[self updateView];
	}
	
- (IBAction)incrementTopPoisonPoint:(id)sender
	{
	_topPoison++;
	[self updateView];
	}

- (IBAction)decrementTopPoisonPoint:(id)sender
	{
	_topPoison--;
	[self updateView];
	}
	
- (IBAction)incrementBottomLifePoint:(id)sender
	{
	_bottomLife++;
	[self updateView];
	}
	
- (IBAction)decrementBottomLifePoint:(id)sender;
	{
	_bottomLife--;
	[self updateView];
	}
	
- (IBAction)incrementBottomPoisonPoint:(id)sender
	{
	_bottomPoison++;
	[self updateView];
	}
	
- (IBAction)decrementBottomPoisonPoint:(id)sender
	{
	_bottomPoison--;
	[self updateView];
	}


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad 
	{
    [super viewDidLoad];
	topLifePoints.transform = CGAffineTransformMakeRotation(M_PI);
	topLifePointsTitle.transform = CGAffineTransformMakeRotation(M_PI);
	topPoisonPoints.transform = CGAffineTransformMakeRotation(M_PI);
	topPoisonPointsTitle.transform = CGAffineTransformMakeRotation(M_PI);
	[self reset];
	}
	
- (void)viewWillAppear:(BOOL)animated
	{
	[super viewWillAppear:animated];
	[self updateView];
	}


// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation 
	{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
	}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
