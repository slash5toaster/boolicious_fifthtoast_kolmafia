## Original script from: http://kolmafia.us/index.php/topic,527.msg2569.html#msg2569 [19 October 2006]
## Updated by Hippymon 13 November 2007
### Updated by Raven434 - 2009-02-13 
### There are 49 outfit based tattoos now, up from Hippymon's last update of 38.
record tatdata{
   string gear;
   string Img;
};
tatdata[int] Tat;
void load_table(){
##data obtained from http://kol.coldfront.net/thekolwiki/index.php/Outfits_by_number
### - there is no #13 listed in the outfits_by_number page
   Tat[ 1].Img = "bugbear.gif";     Tat[1].gear = "Bugbear Costume";
   Tat[ 2].Img = "hippy.gif";       Tat[2].gear = "Filthy Hippy Disguise";
   Tat[ 3].Img = "fratboy.gif";     Tat[3].gear = "Frat Boy Ensemble";
   Tat[ 4].Img = "haremgirl.gif";   Tat[4].gear = "Knob Goblin Harem Girl Disguise";
   Tat[ 5].Img = "eliteguard.gif";  Tat[5].gear = "Knob Goblin Elite Guard Uniform";
   Tat[ 6].Img = "ninja.gif";       Tat[6].gear = "Hot and Cold Running Ninja Suit";
   Tat[ 7].Img = "coldgear.gif";    Tat[7].gear = "eXtreme-Cold Weather gear";
   Tat[ 8].Img = "miner.gif";       Tat[8].gear = "Mining Gear";
   Tat[ 9].Img = "pirate.gif";      Tat[9].gear = "Swashbuckling Getup";
   Tat[ 10].Img = "Clowntat.gif";   Tat[10].gear = "Terrifying Clown Suit";   
   Tat[ 11].Img = "pressietat.gif"; Tat[11].gear = "Crimbo Duds";
   Tat[ 12].Img = "startat.gif";    Tat[12].gear = "Star Garb";
                                    Tat[13].gear = "#13 is a placeholder in the table.";
   Tat[ 14].Img = "losertat.gif";   Tat[14].gear = "Furry Suit";
   Tat[ 15].Img = "swordtat.gif";   Tat[15].gear = "8-Bit Finery";
   Tat[ 16].Img = "elbereth.gif";   Tat[16].gear = "Yendorian Finery";
   Tat[ 17].Img = "canadiatat.gif"; Tat[17].gear = "OK Lumberjack Outfit";
   Tat[ 18].Img = "radiotat.gif";   Tat[18].gear = "Radio Free Regalia";
   Tat[ 19].Img = "bowtat.gif";     Tat[19].gear = "Bow Tux";
   Tat[ 20].Img = "clocktat.gif";   Tat[20].gear = "Clockwork Apparatus";
   Tat[ 21].Img = "gnaugatat.gif";  Tat[21].gear = "Gnauga Hides";
   Tat[ 22].Img = "hourtat.gif";    Tat[22].gear = "Time Trappings";
   Tat[ 23].Img = "cola1tat.gif";   Tat[23].gear = "Cloaca-Cola Uniform";
   Tat[ 24].Img = "cola2tat.gif";   Tat[24].gear = "Dyspepsi-Cola Uniform";
   Tat[ 25].Img = "wreathtat.gif";  Tat[25].gear = "Arboreal Raiment";
   Tat[ 26].Img = "eggtat.gif";     Tat[26].gear = "Grass Guise";
   Tat[ 27].Img = "jfishtat.gif";   Tat[27].gear = "Encephalic Ensemble";
   Tat[ 28].Img = "recyctat.gif";   Tat[28].gear = "Glad Bag Glad Rags";
   Tat[ 29].Img = "armortat.gif";   Tat[29].gear = "Antique Arms And Armor";
   Tat[ 30].Img = "toweltat.gif";   Tat[30].gear = "Terrycloth Tackle";
   Tat[ 31].Img = "tropictat.gif";  Tat[31].gear = "Tropical Crimbo Duds";
   Tat[ 32].Img = "warhiptat.gif";  Tat[32].gear = "War Hippy Fatigues";
   Tat[ 33].Img = "warfrattat.gif"; Tat[33].gear = "Frat Warrior Fatigues";
   Tat[ 34].Img = "meattat.gif";    Tat[34].gear = "Bounty-Hunting Rig";
   Tat[ 35].Img = "blacktat.gif";   Tat[35].gear = "Black Armaments";
   Tat[ 36].Img = "palmtat.gif";    Tat[36].gear = "Palmist Paraphernalia";
   Tat[ 37].Img = "ducttat.gif";    Tat[37].gear = "Tapered Threads";
   Tat[ 38].Img = "Orbisontat.gif"; Tat[38].gear = "Roy Orbison Disguise";
   Tat[ 39].Img = "Zompirtat.gif";  Tat[39].gear = "Cursed Zombie Pirate Costume";
   Tat[ 40].Img = "Halotat.gif";    Tat[40].gear = "Crimborg Assault Armor";
   Tat[ 41].Img = "Elvtat.gif";     Tat[41].gear = "El Vibrato Relics";
   Tat[ 42].Img = "Hothobotat.gif"; Tat[42].gear = "Pyretic Panhandler Paraphernalia";
   Tat[ 43].Img = "Colhobotat.gif"; Tat[43].gear = "Hyperborean Hobo Habiliments";
   Tat[ 44].Img = "Stehobotat.gif"; Tat[44].gear = "Vile Vagrant Vestments";
   Tat[ 45].Img = "Spohobotat.gif"; Tat[45].gear = "Dire Drifter Duds";
   Tat[ 46].Img = "Slehobotat.gif"; Tat[46].gear = "Tawdry Tramp Togs";
   Tat[ 47].Img = "Hodgmantat.gif"; Tat[47].gear = "Hodgman's Regal Frippery";
   Tat[ 48].Img = "Arbordaytat.gif";Tat[48].gear = "Arrrbor Day Apparrrrrel";
   Tat[ 49].Img = "Dnatat.gif";     Tat[49].gear = "Mutant Couture";
}
 
void get_tats(int a){
   if(have_outfit(Tat[a].gear)){
      if(!contains_text(visit_url("account_tattoos.php"), Tat[a].Img)){
         cli_execute("unequip weapon");
         outfit(Tat[a].gear);
         visit_url("town_wrong.php?place=artist");
      }
   }
   else print(Tat[a].gear + " is incomplete."); 
}
 
void get_tats_main(){
   int a = 1;
   while(a < 49){
      get_tats(a);
      a = a + 1;
   }
}
 
void main(){
   load_table();
   get_tats_main();
}
 
print("*** Check your Display Case and / or your Colossal Closet for possible missing outfit pieces. ***");
print("__________________________________________________________________________");
