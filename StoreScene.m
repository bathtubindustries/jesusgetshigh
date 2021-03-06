//
//  StoreScene.m
//  PollenBug
//
//  Created by Eric Nelson on 7/11/14.
//  Copyright (c) 2014 bathtubindustries. All rights reserved.
//

#import "StoreScene.h"
#import "StoreLayer.h"
#import "SimpleAudioEngine.h"

@implementation StoreScene

-(id) init
{
	if(self = [super init])
	{
        storeLayer_ = [StoreLayer node];
        [self addChild:storeLayer_ z:1];
        [self scheduleUpdate];
        [[SimpleAudioEngine sharedEngine] preloadEffect:@"wandSelect.aiff"];
        [[SimpleAudioEngine sharedEngine] setEffectsVolume:[[SimpleAudioEngine sharedEngine] effectsVolume]];
    }
    return self;
}

-(void) update:(ccTime)delta
{
    [storeLayer_ update:delta];
}
@end
