#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    // your code here
    [self addObstacle ];
}

-(void)update:(CCTime)delta
{
    // put update code here
}

// put new methods here
-(void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event {
    //this is called everytime the user touches the screen
    [character flap];
}

@end
