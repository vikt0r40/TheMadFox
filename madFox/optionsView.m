//
//  optionsView.m
//  madFox
//
//  Created by Viktor on 10/3/13.
//  Copyright 2013 Viktor Todorov. All rights reserved.
//

#import "optionsView.h"
#import "mainMenuView.h"
#import "AppDelegate.h"


@implementation optionsView
+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	optionsView *layer = [optionsView node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
    //sssssss
	return scene;
}
-(id) init
{
	// always call "super" init
	// Apple recommends to re-assign "self" with the "super's" return value
	if( (self=[super init]) ) {
		
		CCLabelTTF *label = [CCLabelTTF labelWithString:@"Options Scene" fontName:@"Marker Felt" fontSize:24];
		CGSize size = [[CCDirector sharedDirector] winSize];
		label.position =  ccp( size.width /2 , size.height-25 );
		[self addChild: label];
        
        CCMenuItem *_backButton = [CCMenuItemFont itemWithString:@"Back" block:^(id sender) {
			
			[[CCDirector sharedDirector] replaceScene:[CCTransitionFade transitionWithDuration:0.5 scene:[mainMenuView scene] ]];
			
		}];
        
        CCMenu *menu = [CCMenu menuWithItems:_backButton, nil];
        menu.position = ccp(size.width-35, size.height-25);
        [self addChild:menu];
		
	}
	return self;
}

@end
