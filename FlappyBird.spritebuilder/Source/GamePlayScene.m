#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    // your code here
    character = (Character*)[CCBReader load:@"Character"];
    [physicsNode addChild:character ];
    [self addObstacle ];
    timeSinceObstacle =0.0f; //add new obstacles at regular intervals
}

-(void)update:(CCTime)delta
{
    // put update code here
    timeSinceObstacle += delta; //delata is approxamately 1/60 sec
    
    //check if 2 secs has passed
    if (timeSinceObstacle > 2.0f) {
        //add an obstacle
        [self addObstacle];
        
        //Then reset the timer
        timeSinceObstacle = 0.0f;
    }
}

// put new methods here
-(void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event {
    //this is called everytime the user touches the screen
    [character flap];
}

@end
