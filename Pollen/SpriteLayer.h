//
//  SpriteLayer.h
//  Pollen
//
//  Created by Eric Nelson on 5/1/14.
//  Copyright (c) 2014 bathtubindustries. All rights reserved.
//

#import "cocos2d.h"

@class GameplayScene;
@class TreeLayer;

@class PlayerSprite;
@class FlowerSpawner;
@class Spiddderoso;
@class HaikuSpawner;

@class ClipSprite;


#define INITIAL_FLOWER_AMOUNT 6

@interface SpriteLayer : CCLayer {
    //references
    CGSize size;
    GameplayScene *scene;
    TreeLayer *bgLayer;
    
    //members
    PlayerSprite *player_;
    FlowerSpawner *spawner_;
    Spiddderoso *spiddder_;
    HaikuSpawner *haikuSpawner_;
    
    
    CGPoint touchBeganLocation_;
    
    CCLabelTTF *highScoreLabel_;
    CCLabelTTF *heightLabel_;
    CCLabelTTF *spidderEyeLabel_;
    CCLabelTTF *haikuLabel_;
    float highScore_;
    float playerHeight_;
    
    ClipSprite *pollenBar_;
    CCSprite *pollenBarBackground_;
    CCSprite *spidderEyeCounter_;
    CCSprite *haikuCounter_;
    
    NSMutableArray *eyes_;
    NSMutableArray *eyesToRemove_;
    
    //animations
    CCAnimation *eyeAnim;
    CCSpriteBatchNode *eyeSpriteSheet;
    NSMutableArray *eyeAnimFrames;
    
    //more animations
    CCAnimation *counterAnim;
    CCSpriteBatchNode *counterSpriteSheet;
    NSMutableArray *counterAnimFrames;
    

    
    
    
}
@property float playerHeight;
@property(nonatomic) float topBuffer;

//keeps track of what level player is on, spidder drops more eyes
//on higher levels to encourage players to get to higher altitudes to farm spidder eyes
//instead of just restarting game for the easy hits at the start
@property(nonatomic, assign) int treeLevel;

-(void) revivePlayer;

//setters
-(float) getPollenMeter;
-(float) getHeight;

-(void) setScene:(GameplayScene*)s;
-(void) setBackgroundLayer:(TreeLayer*)l;

//update
-(void) update:(ccTime)dt;

@end
