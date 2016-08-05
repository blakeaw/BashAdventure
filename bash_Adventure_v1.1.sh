#!/bin/bash
# bash Adventure version 1.1
# Text based shell RPG/Adventure Game

# Introduction--beginning
clear
echo "Welcome to the world of Bashell!"
# Ask for player's name, which is variable Pname
echo "My name is Baldethor the Sheller. What is your name?"
echo -n "Enter your name : "
read Pname
clear
echo "Well $Pname, I'm glad to meet you! I hope your ready for your great adventure to attain Ultimate Glory!" 
# First enter read. Used to give player
# time to read text before moving on
echo -n "[Enter] to continue... "
read En 
clear
echo "Okay, first things first, $Pname. I will act as your...well..sort of like a guide,
 as I accompany you on your grand adventure. You see I'm an expert travel enthusiast and 
 somewhat of a minstrel or bard, so I will also be recording your adventure so that its 
 sweet tune may be sung in the Halls of Epicness for many a century to come."
echo -n "[Enter] to continue... "
read En
clear
ret1=0
# First return loop. Uses ret1 variable and will continue looping 
# through if play does not answer with "yes" or with "no"
while [ $ret1 -lt 1 ]; do
	echo " So are you ready to become an epic adventurer and attain Ultimate Glory?"
	echo -n "Answer [yes, no] : "
	read a1
	clear
	case $a1 in 
 		yes ) echo "Okay!! Great!!" ; 
				ret1=`expr $ret1 + 1` ;;
		no ) echo "Okay...well, take a moment to prepare yourself"; 
				echo "Just hit [Enter] when your ready..." 
				read En ; clear ;
				ret1=`expr $ret1 + 1` ;;
		* ) clear ; echo " It's a simple yes or no question. Let's try it again." ;;
	esac
done
clear
# Leaving the village
echo "Alright, lets get on with it!!"
echo "So....You walk down the dusty road of the oddly donut smelling
	village you somehow ended up in. As you leave the village you hear the tadpoles
	of the small puddle beside a barn call out \"Good Luck, $Pname!\" "
echo -n "[Enter] to continue... "
read En
clear
echo " You continue walking for many miles...Then you come upon a fork in the road.
	The sign shows that the left leads to the Bog of Sorrows, while the right
	leads to the Desert of Insanities."
echo -n "[Enter] to continue... "
read En
clear
echo " Both paths ultimately lead to the Castle of Elusive Glory.
	That is where you can attain the Ultimate Glory and which,
	is what must try to achieve."
echo -n "[Enter] to continue... "
read En
clear
echo " You must choose which path we will take to get to the Castle
	of Elusive Glory. Will we go to the left and travel through
	the Bog of Sorrows, or will we go the right and travel 
	through the Desert of Insanities?"

# Choice  point. Player must choose either 
# left or right, Bog of Sorrows or Desert of Insanity
# respectively. Uses the tag1 variable to "tag" which
# choice the player makes, and will be used 
# to define the course of the story and game 
# after this first real decision
# left -> tag1 becomes equal to 1
# right -> tag1 stays equal to 0
ret1=0
tag1=0
while [ $ret1 -lt 1 ]; do
	echo -n " So which way? [left, right] : "
	read a2
	clear
	echo " Okay we'll go $a2!"
	case $a2 in 
 		left ) echo "So you head left to the Bog of Sorrows.$Pname, I have a feeling this
				is going to be the sad part of your story. " ;
				ret1=`expr $ret1 + 1`;
				tag1=`expr $tag1 + 1` ;;
		right ) echo "So you head right to the Desert of Insanities. $Pname, I have a feeling that
					things are about to get crazy."; 
					ret1=`expr $ret1 + 1` ;;
		* ) echo " What? What are you saying? Say $Pname, what was really in that waterskin you were
				slerping from? We can either go left or right, so let's try this
				again." ;;
	esac
done
clear
# first instance of using tag1 to define course of game
# where tag1=1 is the Bog of Sorrows path under the "then" statement and tag1=0
# is the Desert of Insanity Path under the "else" statement
if [ $tag1 = 1 ]; then
	echo " You walk swiftly down the road until you finally come to the edge 
		of the Bog of Sorrows. You take a deep breath, then start the trudge
		through the awful bog."
	echo -n "[Enter] to continue... "
	read En		
	clear
	echo "Erch, globble, glurppity derp, the squishy land masses yelp as
		you continue your march through the sorrowful bog."
	echo -n "[Enter] to continue... "
	read En	
	clear
# Introduces a problem in the bog
# allows player to choose from two options

	echo "Then suddenly...a feeling of sorrow washes over your entire
		being. Tears begin to well in your eyes as the most saddening 
		and sorrowful moments of your life flash through your mind, 
		seemingly all at once and crying out in cacauphonous chorus 
		\"There is nothing worth continuing for...Oh $Pname..life is 
		but a sad song..do not fight the sorrow, for we do not write 
		the lyrics and it cannot be changed...Just give in to sorrow.\""
	echo -n "[Enter] to continue... "
	read En	
	clear
	echo " What will you do $Pname?..You can either let the sorrow take you
			or you can fight the sorrow."
	echo -n "[Enter] to continue... "
	read En	
	clear
	ret1=0
	while [ $ret1 -lt 1 ]; do
		echo -n " So, will give in to sorrow? [yes, no] : "
		read a3
		clear
# Sorrow challenge: yes leads to end of game
# no leads to continuing on through the game
		case $a3 in 
 			yes ) echo " You decide to give into sorrow. You then fall 
					to the ground and curl into a ball. It is here that you  
					begin to weep as a wee babe. Then a vengeful bog worm 
					surfaces from its deep dank underbog cavern and 
					devours your fetal positioned body." ;
						echo -n "[Enter] to continue... " ;
						read En	; clear ;
						echo " Thus ends the not so epic adventure of $Pname....";
						echo -n "[Enter] to continue... " ;
						read En	;
						exit ;;
			no ) echo "Good $Pname! You decide not to give into sorrow. You fight 
					back mentally against the sorrow, thinking of green pastures,
					bright colored flowers, and happy monents from your life."
					echo -n "[Enter] to continue... "
					read En	
					clear
					echo " Suddenly a loud shriek pierces the air around your 
						ears..Then just as quick as it had set upon you,
						the wash of sorrow vacates you. You have broken
						the spell of the vengeful bog worms." 
					echo -n "[Enter] to continue... "
					read En	
					clear
					ret1=`expr $ret1 + 1` ;;
			* ) echo " What? What are you saying? Come on $Pname, you must make 
					a defininte decision of yes or no. Let's try it again." ;;
		esac
	done
# End of BOS
# Begin DOI here under "else"
else
		clear		
		echo -n "[Enter] to continue... "
		read En
		clear
		echo "You walk swiftly down the road until you finally come to the edge 
		of the Desert of Insanities. You take a deep breath, then start the trudge
		through the demented desert."
		echo -n "[Enter] to continue... "
		read En
		clear
		echo " You are walking and then suddenly it hits you. A
			a bath of insane delusions start to rinse through your
			mind. You cringe as flaming apples and serpents made of rope
			along with dozens of other insane delusions pass through your 
			mind and crowd your vision."
		echo -n "[Enter] to continue... "
		read En
		clear
		echo " You can feel the insanity making its way to the very
			core of your mind. You fall to your knees under the 
			weight of the delusions. Now you must decide whether or
			not you will give in or not..."
		echo -n "[Enter] to continue... "
		read En
		clear
		ret1=0
	while [ $ret1 -lt 1 ]; do
		echo -n " So $Pname, will give in to insanity? [yes, no] : "
		read a4
# Insanity challenge: yes leads to end of game
# no leads to continuing on through the game
		case $a4 in 
 			yes ) echo " You decide to give in to insanity. You then are taken 
					over by the insanity. You run through the sands to the golden 
					turnip statue you seem to see. You are then swallowed whole 
					by a vehement desert toad." ;
						echo -n "[Enter] to continue... " ;
						read En	; clear ;
						echo " Thus ends the not so epic adventure of $Pname....";
						echo -n "[Enter] to continue... " ;
						read En	;
						exit ;;
			no ) echo "Good $Pname! You decide not to give in to insanity. You fight 
					back mentally against the insanity, thinking of calm breezes,
					empty rooms, and sweet delicious strawberry cream puffs."
					echo -n "[Enter] to continue... "
					read En	
					clear
					echo " Suddenly a loud croak rumbles through the air around your 
						ears..Then just as quick as it had set upon you,
						the bath of insanity vacates you. You have broken the
						spell of the vehement desert toad." 
					echo -n "[Enter] to continue... "
					read En	
					clear	
					ret1=`expr $ret1 + 1` ;;
			* ) echo " What? What are you saying? Come on $Pname, you must make 
					a defininte decision of yes or no. Let's try it again." ;;
		esac
	done
fi
# End of Initial choice point decided
# frame of the story
# Continue with tag1=1 leaving the bog
# and tag1=0 leaving the desert

# Define place variable as based on value of 
# tag1
if [ $tag1 = 1 ]
	then
		place="Bog of Sorrows"
	else
		place="Desert of Insanities"
fi
# Exiting place, the two paths
# reconverge to head to the castle
echo " You walk for a while more and then.....You see it,
the end of the $place. You rush out of the terrible $place
and jump excitedly onto the bright green patch of grass 
that signals the nearing of the Castle of Elusive Glory."
echo -n "[Enter] to continue... "
read En	
clear
castle="Castle of Elusive Glory"
echo " Well $Pname, the $castle is not much further. Let's not" 
echo " dilly dally. There is much glory for you to attain!"
echo -n "[Enter] to continue... "
read En	
clear
echo " You feel the winds of triumph tickling your hair, as the" 
echo " cool breeze presses at your heels upon heading to the $castle" 
echo "You continue walking for quite some time until, just over the edge of" 
echo " a small wild hill, you spot it!! The $castle!!" 
echo -n "[Enter] to continue... "
read En	
clear
echo "You feel the excitement rush through your body. You take off" 
echo " in an elated run, images of pecan pies, fig trees, banana bread, and" 
echo " all things related to success racing through your mind."
echo -n "[Enter] to continue... "
read En	
clear
echo " You run straight to the front door of the castle. It appears"
echo " to be closed and locked. Your bright eyed illusions of fame"
echo " and fortune dim, just a bit as you begin to wonder how you"
echo " you might get in through such a strong locked door..."
echo -n "[Enter] to continue... "
read En	
clear
echo "You decide to do the something simple...You knock...."
echo " kla-thunk kla-thunk kla-thunk, the sound echoes, as "
echo " your knocking fever heightens.."
echo -n "[Enter] to continue... "
read En	
clear
echo " Just as you give up on the activity, a troll appears, a short"
echo " fat, hairy beasty. With dagger like fangs loosed and small beadie " 
echo " eyes, the troll stares upon your visage. A minute or so"
echo " passes and then the troll begins to speak."
echo -n "[Enter] to continue... "
read En	
clear
Tname="Uuglius"
echo "\"$Tname is my name,\" The troll says, \" and I assume that"
echo " you have come to my master's home in search of Ultimate Glory.\""
echo " You quickly bobble your head back and forth "
echo " in agreement with the troll's assumption."
echo -n "[Enter] to continue... "
read En	
clear
echo " Well, I $Tname have a challenge for you. It is simple. A riddle."
echo " Should you get correctly guess the answer to my riddle I $Tname, "
echo " will allow you to enter my master's home and waltz, if you"
echo " prefer waltzing to walking, straight to my masters chambers."
echo " Well traveller do you accept the challenge of $Tname?"
echo -n "[Enter] to continue... "
read En	
clear
echo " Okay $Pname, you've been challenged. I hope you are up to this troll's challenge."
echo " You can either except $Tname's challenge or give up."
ret1=0
	while [ $ret1 -lt 1 ]; do
		echo -n " So $Pname, are you up to the troll's challenge? [yes, no] : "
		read a5
		clear
# Challenge of the troll. Yes leads to troll's riddle
# no leads to the end of the of game
		case $a5 in 
 			yes ) echo " You decide to accept the troll's challenge. That's the spirit
						$Pname, show this troll who is the lord of riddles." ;
						echo -n "[Enter] to continue... " ;
						read En 
						ret1=`expr $ret1 + 1`;;
			no ) echo "Oh...okay, $Pname..You decide to give up. It was fun while
it lasted...Too bad it won't make much of an epic tale..."
					echo -n "[Enter] to continue... "
					read En	
					clear
					echo " Thus ends the adventure of $Pname, just as the Ultimate Glory was so near." 
					echo -n "[Enter] to continue... "
					read En	
					clear	
					exit ;;
			* ) echo " What? What are you saying? Come on $Pname, you must make 
					a defininte decision of yes or no. Let's try it again." ;;
		esac
	done
clear
echo " You let your eyes burn with the passion of youth,"
echo " and your body the defiance of bold confidence as you"
echo " scream out in the most resonant and majestic voice "
echo " you can muster, \"YESSS!!!!\" "
echo -n "[Enter] to continue... "
read En	
clear
echo " The troll glares at you for a moment and then begins to
speak, \"Very well then, let us begin.\" "
clear
# Begin Troll Riddle
echo "\"My riddle is, Do you believe that you can really defeat my master?\", grunts $Tname."
ret6=0
while [ $ret6 -lt 1 ]; do
echo -n  " Well $Pname, do you have it in you? [yes : no]"
read a6 
	case $a6 in
		yes) echo "Yes, you must truly believe that if you are to suceed." ;
			ret6=`expr $ret6 + 1` ;;
		no) echo "No...I suppose you can't.";
			echo "The troll then screeches as he swiftly chops off your head..."
			echo " So ends the adventure of $Pname..." ;
				exit ;;
		*)  echo " That's not a sufficient answer, try again." ;;
		
	esac
 done
sleep 1
clear 
echo " The troll then grunts twice and the door swings open."
echo "Well $Pname, it seems the troll's riddle was more a test of your 
 confidence and faith, than an actual riddle. Oh well, we made it past
 this test. Let's head on inside!"
echo -n "Enter to continue..."
read En
clear
echo " You walk on through the massive corridor and up to a large set of steps
 placed towards the back. You make your way up the steps...and then.."
echo -n "Enter to continue..."
read En
clear
echo " As you reach the top of the steps you look back and your gaze is drawn to the 
large ominous figure sitting upon a giant stone throne seat..."
echo "Uhhh...$Pname...it's him..I doubted the day I may see the Dark King, but it is he,
and now you must challenge him if you are to attain Ultimate Glory, and if I do say,
we didn't make it this far to wimp out now." 
echo -n "Enter to continue..."
read En
clear
# Enter Battle
echo " You have entered into a battle with the Dark King!"
echo -n "Enter to continue..."
read En
clear
HP=30
kHP=50
POT=2
CEILING=10
while [ "$HP" -gt 0 ]; do
	
 number=15 # initialize
	while [ "$number" -ge $CEILING ]
		do
		  number=$RANDOM
		done
		
	case $number in
		[0-2])  if [ $dtag -eq 0 ]; then
			echo "The Dark King attacks and does 2 damage!"
			HP=`expr $HP - 2`
			else
				echo "The Dark King attacks but only does 1 damage"
				HP=`expr $HP - 1`
			fi;;
		[3-4]) if [ $dtag -eq 0 ]; then
			echo "The Dark King heavy attacks and does 3 damage!"
			HP=`expr $HP - 3` 
			else
				echo "The Dark King heavy attacks but only does 2 damage"
				HP=`expr $HP - 2`
			fi;;
		[5-9]) echo "The Dark King attacks but misses!" ;;
	esac
	echo -n "Enter to continue..."
	read En
	clear
	echo "$Pname-- HP:$HP | Potions:$POT"
	echo "It's your move $Pname! What will you do?"
	echo "Attack (5 damage) [a]"
	echo "Defend (plus 1 defense) [d]"
	echo "Potion (plus 5 HP) [p]"
	echo -n "Type Choice [a:d:p], then hit Enter :: "
	read move 
	clear
	dtag=0
	case $move in 
		a) echo " You attack and do 5 damage!"
			kHP=`expr $kHP - 5` ;;
		d) echo "You assume a defensive stance!"
			dtag=1 ;;
		p) if [ $POT -gt 0 ]; then
			echo "You use a potion and gain 5 HP!"
			HP=`expr $HP + 5`
			POT=`expr $POT - 1`
			else
				echo "You reach for a potion but you don't have any potions!!" 
			fi ;;
		*) echo "You stand in place with a strange look on your face...." ;;
	esac
	if [ $kHP -gt 0 ];then
		echo ""
	else
		echo "You have defeated the Dark King!!"
		HP=0
		battag=1
	fi
done

#End of Battle
if [ $battag -eq 1 ] ; then
		echo "You did it $Pname!!!!! You defeated the Dark King!!!!"
		echo " Your story shall be echoed in the Halls of Epicness
			for ever more!!!"
		echo -n "Enter to continue..."
		read En
		clear
	else 
		echo "You were killed by the Dark King....."
		echo "Oh $Pname...you were so close, but thus ends your story..."
		echo -n "Enter to continue..."
		read En
		clear
		exit
fi
echo " Congratulations $Pname! You have attained Ultimate Glory!"
echo -n "Enter to continue..."
read En
clear
# Fireworks
clear
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo "                                                                        "
echo "                                                                        "
echo "________________________________U_______________________________________"
sleep 1 
clear
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo "                                                                        "
echo "                                *                                        "
echo "________________________________U_______________________________________"
sleep 0.5
clear
echo "                                                                          "
echo "                                                                          "
echo "                                                                          "
echo "                                                                        "
echo "                                                                        "
echo "                                                                      "
echo "                                                                      "
echo "                                                                     "
echo "                                                                       "
echo "                                                                        "
echo "                                                                       "
echo "                                *                                        "
echo "                                                                        "
echo "________________________________U_______________________________________"
sleep 0.5
clear
echo "                                                                          "
echo "                                                                          "
echo "                                                                          "
echo "                                                                        "
echo "                                                                        "
echo "                                                                      "
echo "                                                                      "
echo "                                                                     "
echo "                                                                       "
echo "                                                                        "
echo "                                *                                       "
echo "                                                                        "
echo "                                                                        "
echo "________________________________U_______________________________________"
sleep 0.5
clear
echo "                                                                          "
echo "                                                                          "
echo "                                                                          "
echo "                                                                        "
echo "                                                                        "
echo "                                                                      "
echo "                                                                      "
echo "                                                                     "
echo "                                                                       "
echo "                                *                                        "
echo "                                                                       "
echo "                                                                        "
echo "                                                                        "
echo "________________________________U_______________________________________"
sleep 0.5
clear
echo "                                                                          "
echo "                                                                          "
echo "                                                                          "
echo "                                                                        "
echo "                                                                        "
echo "                                                                      "
echo "                                                                      "
echo "                                                                     "
echo "                                *                                       "
echo "                                                                        "
echo "                                                                       "
echo "                                                                        "
echo "                                                                        "
echo "________________________________U_______________________________________"
sleep 0.5
clear
echo "                                                                          "
echo "                                                                          "
echo "                                                                          "
echo "                                                                        "
echo "                                                                        "
echo "                                                                      "
echo "                                                                      "
echo "                                *                                     "
echo "                                                                       "
echo "                                                                        "
echo "                                                                       "
echo "                                                                        "
echo "                                                                        "
echo "________________________________U_______________________________________"
sleep 0.5
clear
echo "                                                                          "
echo "                                                                          "
echo "                                                                          "
echo "                                                                        "
echo "                                                                        "
echo "                                                                      "
echo "                                *                                      "
echo "                                                                     "
echo "                                                                       "
echo "                                                                        "
echo "                                                                       "
echo "                                                                        "
echo "                                                                        "
echo "________________________________U_______________________________________"
sleep 0.5
clear
echo "                                                                          "
echo "                                                                          "
echo "                                                                          "
echo "                                                                        "
echo "                                                                        "
echo "                                                                      "
echo "                                $                                      "
echo "                                                                     "
echo "                                                                       "
echo "                                                                        "
echo "                                                                       "
echo "                                                                        "
echo "                                                                        "
echo "________________________________U_______________________________________"
sleep 0.5
clear
echo "                                                                          "
echo "                                                                          "
echo "                                                                          "
echo "                                                                        "
echo "                                                                        "
echo "                               ****                                   "
echo "                              **%%%**                                     "
echo "                               *****                                   "
echo "                                                                       "
echo "                                                                        "
echo "                                                                       "
echo "                                                                        "
echo "                                                                        "
echo "________________________________U_______________________________________"
sleep 1
clear
echo "                                                                          "
echo "                                                                          "
echo "                                                                          "
echo "                                                                        "
echo "                                                                        "
echo "                                 **                                    "
echo "                              * **** *                                     "
echo "                            * ** ** **  *                                  "
echo "                              * ****  *                                     "
echo "                                 **                                       "
echo "                                                                       "
echo "                                                                        "
echo "                                                                        "
echo "________________________________U_______________________________________"
sleep 1
clear
echo "                                                                          "
echo "                                                                          "
echo "                                                                          "
echo "                                                                        "
echo "                                                                ***   *  *  "
echo "         ***    * *   *     *   ***    ****      *     *****   *   *  *  *           "
echo "        *      *   *  * *   *  *       *   *    * *      *      *     *  *    "
echo "        *      *   *  *   * *  *  ***  * **    *****     *    *   *          "
echo "         ***    * *   *     *   ****   *   *  *     *    *     ***    *  *         "
echo "                                                                        "
echo "                                                                       "
echo "                                                                        "
echo "                                                                        "
echo "________________________________U_______________________________________"
sleep 3
clear
# end fireworks
clear
echo "Thanks for playing Bash Adventure!"
echo "I hope you had some fun."
echo "Writer/Developer: Blake Wilson"
sleep 5
clear
exit


























