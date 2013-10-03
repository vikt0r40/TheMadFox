//
//  CCSpriteHelper.h
//  The Mad Fox iOS
//
//  Created by Viktor on 9/20/13.
//  Copyright 2013 Viktor Todorov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@interface CCSpriteHelper : CCSprite
{
	
	BOOL isDrag;
	CGPoint whereTouch;
	
}

-(BOOL) isTouchOnSprite:(CGPoint)touch;

@end
