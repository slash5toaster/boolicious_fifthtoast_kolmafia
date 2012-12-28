void main()
{

    if ( !have_mushroom_plot() )
    {
        print( "You do not have a mushroom plot." );
        return;
    }

    if ( get_property( "plantingScript" ) != "spooky" )
    {
        set_property( "plantingDay", -1 );
        set_property( "plantingDate", -1 );
        set_property( "plantingLength", 1 );
        set_property( "plantingScript", "spooky" );
    }

    if ( get_property( "plantingDate" ).string_to_int() == moon_phase() )
        return;

    set_property( "plantingDate", moon_phase() );
    int index = (get_property( "plantingDay" ).string_to_int() + 1) % 1;
    set_property( "plantingDay", index );

    if ( index == 0 )
        cli_execute( "field pick 1;field plant 1 knob;field pick 2;field plant 2 knob;field pick 3;field pick 4;field pick 5;field plant 5 knob;field pick 6;field plant 6 knob;field pick 7;field pick 8;field pick 9;field pick 10;field pick 11;field pick 12;field pick 13;field pick 14;field pick 15;field pick 16" );

}
