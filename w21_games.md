# Breakout
## What is the purpose of the game?
It is to break all of the blocks on the top of the screen by directing the ball to the blocks, in which the ball would break it and bounce off. You have a paddle at  the  bottom to direct it back to the blocks
## What element(s) are controlled by the player?
The paddle are starting the game by propelling the ball are the only things controlled by the player
## What element(s) are controlled by the computer?
The ball's magnitude, direction, and speed, and it's reset. The blocks orientation and when they dissappear is also controlled by the computer
## How does the player control their element.
Using left-right directional keys to control the paddle, and space key to start the ball.
## How do the non-player controlled elements behave (movement, positions, randomness, etc)
The ball bounces off the blocks and walls and paddle using the law of reflection. When the ball first hits one block in the third row of blocks, speed increases. The direction of the ball when initializing is random. Blocks are in a set orientation.
## If you were to program this, what classes would you write?
Class block, Class ball, class Paddle
## If you were to program this, would you use an array for some parts? What kind of array? What would you be storing in it?
I will use an array of blocks for the blocks; probably a 2d array where each row is a single array that may have different properties from other rows.

# Space Invaders
## What is the purpose of the game?
The purpose of the game is to kill all the aliens on the top of the screen, through the obstacles.
## What element(s) are controlled by the player?
The spaceship is controlled by the player, as well as when to shoot (the bullets)
## What element(s) are controlled by the computer?
The movement of the aliens, and when the aliens shoot
## How does the player control their element.
The left right arrow keys are used to move the spaceship, and the space key is used to shoot.
## How do the non-player controlled elements behave (movement, positions, randomness, etc)
Aliens move accross the screen and then down the screen. The shooting looks random. The position of the obstacles is constant unless destroyed by bullets, in which they disappear 
## If you were to program this, what classes would you write?
Class obstacle, class aliens, class bullet, class spaceship 
## If you were to program this, would you use an array for some parts? What kind of array? What would you be storing in it?

Use the 2d array for the aliens the same way as the array for the blocks in Breakout. The obstacles can have an array as well
