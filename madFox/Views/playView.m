//
//  playView.m
//  madFox
//
//  Created by Viktor on 10/3/13.
//  Copyright 2013 Viktor Todorov. All rights reserved.
//

#import "playView.h"
#import "AppDelegate.h"
#import "mainMenuView.h"




@implementation playView

+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	playView *layer = [playView node];
	
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
		
		CCLabelTTF *label = [CCLabelTTF labelWithString:@"Play Scene" fontName:@"Marker Felt" fontSize:24];
		CGSize size = [[CCDirector sharedDirector] winSize];
		label.position =  ccp( size.width /2 , size.height-25 );
		[self addChild: label];
        
        CCMenuItem *_backButton = [CCMenuItemFont itemWithString:@"Back" block:^(id sender) {
			
			[[CCDirector sharedDirector] replaceScene:[CCTransitionFade transitionWithDuration:0.5 scene:[mainMenuView scene] ]];
			
		}];
        
        CCMenu *menu = [CCMenu menuWithItems:_backButton, nil];
        menu.position = ccp(size.width-35, size.height-25);
        [self addChild:menu];
        //Hello
        //Set Random Spirtes on the screen
        for (int i = 0; i < 4; i++)
        {
            s = [CCSpriteHelper spriteWithFile:@"Blue_dot.png"];
            NSLog(@"Sprite Name %@",s);
            s.position=ccp(arc4random() % 420,arc4random() % 300);
            [self addChild:s z:nil tag:i];
            [self resizeSprite:s toWidth:25 toHeight:25];
        }
        [self draw];
		
	}
	return self;
}
-(void)resizeSprite:(CCSprite*)sprite toWidth:(float)width toHeight:(float)height {
    sprite.scaleX = width / sprite.contentSize.width;
    sprite.scaleY = height / sprite.contentSize.height;
}
-(void)draw
{
    [super draw];
    for (int i = 0; i < 4; i++)
    {
        CCSprite *s1 = (CCSprite*)[self getChildByTag:i];
        if(i == 4) {
            CCSprite *s2 = (CCSprite*)[self getChildByTag:0];
            ccDrawColor4B(255, 255, 255, 255); //Color of the line RGBA
            glLineWidth(5.0f); //Stroke width of the line
            ccDrawLine(ccp(s1.position.x, s1.position.y), ccp(s2.position.x, s2.position.y));
        }
        else {
            CCSprite *s2 = (CCSprite*)[self getChildByTag:i+1];
            ccDrawColor4B(255, 255, 255, 255); //Color of the line RGBA
            glLineWidth(5.0f); //Stroke width of the line
            ccDrawLine(ccp(s1.position.x, s1.position.y), ccp(s2.position.x, s2.position.y));
        }
            
        
    }
    //CCSprite *s1 = (CCSprite*)[self getChildByTag:1];
    //CCSprite *s2 = (CCSprite*)[self getChildByTag:2];

    

}
@end
