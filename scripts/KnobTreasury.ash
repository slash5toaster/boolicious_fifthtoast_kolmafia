## Get daily Money at Knob Treasury
void main( )
{
	if (have_outfit("knob goblin harem girl disguise"))
	{
		## get our current outfit
		cli_execute("checkpoint");
		if (my_adventures() == 0)
		{
			abort("Ran out of adventures");
		}
		outfit("Knob Goblin Harem Girl Disguise");
		adventure(1, $location[Knob Treasury]);
		cli_execute("outfit checkpoint");
	}
	else
	{
		print("You need the Harem Girl Disguise!");
	}
}
