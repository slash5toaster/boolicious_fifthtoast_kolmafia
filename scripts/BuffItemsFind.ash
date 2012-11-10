## Buffs Item Find in Turns*10.
void main( int numTenTurns )
{
  ## If we do not have enough Polka Pops, buy more.
  if ( item_amount( $item[Polka Pop] ) < numTenTurns )
  {
    buy( numTenTurns - item_amount( $item[Polka Pop] ), $item[Polka Pop] );
  }
  use( numTenTurns, $item[Polka Pop] );
 
 
  if ( item_amount( $item[Knob Goblin eyedrops] ) < numTenTurns )
  {
    buy( numTenTurns - item_amount( $item[Knob Goblin eyedrops] ), $item[Knob Goblin eyedrops] );
  }
  use( numTenTurns, $item[Knob Goblin eyedrops] );
 
 
 
  if ( item_amount( $item[Love song of disturbing obsession] ) < numTenTurns*2 )
  {
    buy( numTenTurns*2 - item_amount( $item[Love song of disturbing obsession] ), $item[Love song of disturbing obsession] );
  }
  use( numTenTurns*2, $item[Love song of disturbing obsession] );
}


