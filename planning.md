# Details

Both [players] start with 3 [lives]. They lose a life if they mis-answer a [question]. At the end of every [turn], the [game] should output the new [scores] for both players, so players know where they stand.

The game doesn’t end until one of the players loses all their lives. At this point, the game should announce who won and what the other player’s score is.

## Example Prompt
```Player 1: What does 5 plus 3 equal?
> 9 
Player 1: ...That is incorrect. Lose a life!
Score: P1 - 2/3 lives / P2 - 3/3 lives 
-- New Turn -- 
Player 2: What does 2 plus 6 equal?
> 8 
Player 2: ...That is correct! 
Score: P1 - 2/3 lives / P2 - 3/3 lives 
-- New Turn -- 
[eventually]
Player 1 wins with a score of 1 life left
-- GAME OVER -- 
``` 

## Extracted Nouns for Classes 
* players 
* questions
* game 

## Player Class
* player initiated (state)
* player loses life (method)

## Question Class
* question initiated (state)
* question generated (method)
* question verified (method)

## Game Class
* game initialized (state)
* game plays (method)
* game switches players turn (method)
* game displays score (method) 
* game over (state)