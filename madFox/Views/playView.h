//
//  playView.h
//  madFox
//
//  Created by Viktor on 10/3/13.
//  Copyright 2013 Viktor Todorov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import <GameKit/GameKit.h>
#import "CCSpriteHelper.h"

@interface playView : CCLayer {
    CCSpriteHelper *s;
}
+(CCScene *) scene;
-(void)draw;
-(void)resizeSprite:(CCSprite*)sprite toWidth:(float)width toHeight:(float)height;
@end
