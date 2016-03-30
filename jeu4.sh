Spock()
{
	if [[ "$nb" = "$rand" ]]
		then echo "Equality"
    elif [ "$rand" = 1 ] 
	then echo -e "\033[32m\n\t\tSpock vaporizes Rock"
	my_score=$(($my_score + 1))
	echo -e "\033[0mVotre score :" $my_score
	echo -e "\033[0mScore IA :" $your_score
	elif [ "$rand" = 2 ] 
	then echo -e "\033[31m\n\t\tPaper disproves Spock"
	your_score=$(($your_score + 1))
	echo -e "\033[0mVotre score :" $my_score
	echo -e "\033[0mScore IA :" $your_score
	elif [ "$rand" = 3 ] 
	then echo -e "\033[32m\n\t\tSpock smashes Scissors"
	my_score=$(($my_score + 1))
	echo -e "\033[0mVotre score :" $my_score
	echo -e "\033[0mScore IA :" $your_score
    else
	echo -e "\033[31m\n\t\tLizard poisons Spock"
	your_score=$(($your_score + 1))
	echo -e "\033[0mVotre score :" $my_score
	echo -e "\033[0mScore IA :" $your_score
    fi
}

Lizard()
{
	if [[ "$nb" = "$rand" ]]
		then echo "Equality"
    elif [ "$rand" = 1 ] 
	then echo -e "\033[32m\n\t\tRock crushes Lizard"
	your_score=$(($your_score + 1))
	echo -e "\033[0mVotre score :" $my_score
	echo -e "\033[0mScore IA :" $your_score
	elif [ "$rand" = 2 ] 
	then echo -e "\033[32m\n\t\tLizard eats Paper"
	your_score=$(($your_score + 1))
	echo -e "\033[0mVotre score :" $my_score
	echo -e "\033[0mScore IA :" $your_score
	elif [ "$rand" = 3 ] 
	then echo -e "\033[32m\n\t\tScissors decapitates Lizard"
	your_score=$(($your_score + 1))
	echo -e "\033[0mVotre score :" $my_score
	echo -e "\033[0mScore IA :" $your_score
    else
	echo -e "\033[32m\n\t\tLizard poisons Spock"
	my_score=$(($my_score + 1))
	echo -e "\033[0mVotre score :" $my_score
	echo -e "\033[0mScore IA :" $your_score
    fi
}