//
//  PlayerSprite.m
//  jesusgetshigh
//
//  Created by Eric Nelson on 4/12/14.
//  Copyright 2014 bathtubindustries. All rights reserved.
//

#import "PlayerSprite.h"
#define GRAVITY -25.8

@implementation PlayerSprite

-(id)init{
    
    
    size = [[CCDirector sharedDirector] winSize];
    self=[super initWithFile:@"Icon-Small-50.png"];
    posx=100;
    ySpeed=0;
    xSpeed=0;
    return self;
    
}

-(void) update:(ccTime)dt
{
    //gravity *=gravity;
    ySpeed += GRAVITY *dt; // drop the dt if you don't want to use it
    
    // Step the position values and update the sprite position accordingly
    
    
    
    
    if(self.position.x+xSpeed>size.width)
    {
        xSpeed=-xSpeed;
        
        
    }
    if(self.position.x+xSpeed<0)
    {
        xSpeed=-xSpeed;
        
    }
    
    if(self.position.y+gravity+ySpeed>size.height)
    {
        self.position = ccp(self.position.x, self.position.y-20);
        
    }
    else if(self.position.y+gravity<10)
    {
        self.position = ccp(self.position.x, self.position.y);
        gravity=-1.8;
        
    }
    
    //   [self setupAnim];
    else{
     self.position = ccp(posx, self.position.y + ySpeed* dt);
    }
    //self.position = ccpAdd(self.position, ccpMult(m_Direction, speed * dt));
    
    if (ySpeed>0)
        ySpeed=ySpeed+gravity;
    
}


@end