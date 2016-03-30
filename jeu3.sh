source jeu4.sh

Rock4()
{
	if [[ "$nb" = "$rand" ]]
		then echo "Equality"
    elif [ "$rand" = 2 ] 
	then echo -e "\033[31m\n\t\tpaper covers rock\n"
	your_score=$(($your_score + 1))
	echo -e "\033[0mVotre score :" $my_score
	echo -e "\033[0mScore IA :" $your_score
	elif [ "$rand" = 4 ] 
	then echo -e "\033[31m\n\t\tSpock vaporizes Rock\n"
	your_score=$(($your_score + 1))
	echo -e "\033[0mVotre score :" $my_score
	echo -e "\033[0mScore IA :" $your_score
	elif [ "$rand" = 5 ] 
	then echo -e "\033[32m\n\t\tRock crushes Lizard\n"
	my_score=$(($my_score + 1))
	echo -e "\033[0mVotre score :" $my_score
	echo -e "\033[0mScore IA :" $your_score
    else
	echo -e "\033[32m\n\t\trock crushes scissors\n"
	my_score=$(($my_score + 1))
	echo -e "\033[0mVotre score :" $my_score
	echo -e "\033[0mScore IA :" $your_score
    fi
}

Paper4()
{
	if [[ "$nb" = "$rand" ]]
		then echo "Equality"
    elif [ "$rand" = 1 ] 
	then echo -e "\033[32m\n\t\tpaper covers rock\n"
	my_score=$(($my_score + 1))
	echo -e "\033[0mVotre score :" $my_score
	echo -e "\033[0mScore IA :" $your_score
	elif [ "$rand" = 4 ] 
	then echo -e "\033[32m\n\t\tPaper disproves Spock\n"
	my_score=$(($my_score + 1))
	echo -e "\033[0mVotre score :" $my_score
	echo -e "\033[0mScore IA :" $your_score
	elif [ "$rand" = 5 ] 
	then echo -e "\033[31m\n\t\tLizard eats Paper\n"
	your_score=$(($your_score + 1))
	echo -e "\033[0mVotre score :" $my_score
	echo -e "\033[0mScore IA :" $your_score
    else
    echo -e "\033[31m\n\t\tscissors cut paper\n"
	your_score=$(($your_score + 1))
	echo -e "\033[0mVotre score :" $my_score
	echo -e "\033[0mScore IA :" $your_score
	fi
}

Scissors4()
{
	if [[ "$nb" = "$rand" ]]
		then echo "Equality"
    elif [ "$rand" = 1 ] 
	then echo -e "\033[31m\n\t\trock crushes scissors\n"
	your_score=$(($your_score + 1))
	echo -e "\033[0mVotre score :" $my_score
	echo -e "\033[0mScore IA :" $your_score
	elif [ "$rand" = 2 ] 
	then echo -e "\033[32m\n\t\tscissors cut paper\n"
	my_score=$(($my_score + 1))
	echo -e "\033[0mVotre score :" $my_score
	echo -e "\033[0mScore IA :" $your_score
	elif [ "$rand" = 4 ] 
	then echo -e "\033[31m\n\t\tSpock smashes Scissors\n"
	your_score=$(($your_score + 1))
	echo -e "\033[0mVotre score :" $my_score
	echo -e "\033[0mScore IA :" $your_score
    else
	echo -e "\033[32m\n\t\tScissors decapitates Lizard\n"
	my_score=$(($my_score + 1))
	echo -e "\033[0mVotre score :" $my_score
	echo -e "\033[0mScore IA :" $your_score
	fi
}


jeu4()
{
	rand=$(($RANDOM% 5 + 1))
	quit="quit"
	echo -e "\n\t1-rock\n\t2-paper\n\t3-scissors\n\t4-spoke
	5-lizard\n\nVotre tour :" 
	read nb
    if [ "$nb" = 1 ] 
        then    Rock4 rand
    elif [ "$nb" = 2 ]  
        then    Paper4 rand  
    elif [ "$nb" = 3 ]   
        then	Scissors4 rand
    elif [ "$nb" = 4 ]   
        then	Spock rand
    elif [ "$nb" = 5 ]   
        then	Lizard rand
    elif [ "$nb" = "quit" ]
    	then	clear
    			echo "see you on shifumi"
    			my_score=a
    			my_score=$(($my_score + 1))
    			return 0
    else
        echo -e "\t\t\tRecommencer l'entree n'est pas valable"
    fi
}

shifumi4()
{
	your_score=0
	my_score=0
	read -p "Enter your name please : " name
    echo -e "\n----------Ready to play Shifumi $name ? Here we go!----------\n"
	while [[ "my_score" -lt "$a" ]] && [[ "your_score" -lt "$a" ]]; do
		jeu4
		done
	if [[ "my_score" -eq "$a" ]]
		then
		echo -e "\nVous avez gagne !"
	elif [[ "your_score" -eq "$a" ]]
		then
		echo -e "\nVous avez perdu !"
	fi
}