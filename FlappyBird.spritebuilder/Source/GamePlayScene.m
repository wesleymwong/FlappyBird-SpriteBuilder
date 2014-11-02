#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    // your code here
    //creates new character
    character = (Character*)[CCBReader load:@"Character"];
    //method: [ObjectName: methodName:parameter]
    [physicsNode addChild:character];
    [self addObstacle]; 
}

-(void)update:(CCTime)delta
{
    // put update code here
}

// put new methods here
- (void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event {
    // this will get called every time the player touches the screen
    [character flap];
}

@end
