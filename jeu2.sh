Rock3()
{
    echo -e "Joueur 2 : "
	read -s rand
	if [[ "$nb" = "$rand" ]]
		then
		echo "Equality"
    elif [ "$rand" = 2 ] 
	then
	echo -e "\033[31m\n\t\tpaper covers rock\n"
	your_score=$(($your_score + 1))
	echo -e "\033[0mscore Joueur 1 :" $my_score
	echo -e "\033[0mscore Joueur 2 :" $your_score
    else
	echo -e "\033[32m\n\t\trock crushes scissors\n"
	my_score=$(($my_score + 1))
	echo -e "\033[0mscore Joueur 1 :" $my_score
	echo -e "\033[0mscore Joueur 2 :" $your_score
    fi
}

Paper3()
{
    echo -e "Joueur 2 : "
	read -s rand
	if [[ "$nb" = "$rand" ]]
		then
		echo "Equality"
    elif [ "$rand" = 1 ] 
	then
	echo -e "\033[32m\n\t\tpaper covers rock\n"
	my_score=$(($my_score + 1))
	echo -e "\033[0mscore Joueur 1 :" $my_score
	echo -e "\033[0mscore Joueur 2 :" $your_score
    else
	echo -e "\033[31m\n\t\tscissors cut paper\n"
	your_score=$(($your_score + 1))
	echo -e "\033[0mscore Joueur 1 :" $my_score
	echo -e "\033[0mscore Joueur 2 :" $your_score
	fi
}

Scissors3()
{
	echo -e "Joueur 2 : "
	read -s rand
	if [[ "$nb" = "$rand" ]]
		then
		echo "Equality"
    elif [ "$rand" = 1 ] 
	then
	echo -e "\033[31m\n\t\trock crushes scissors\n"
	your_score=$(($your_score + 1))
	echo -e "\033[0mscore Joueur 1 :" $my_score
	echo -e "\033[0mscore Joueur 2 :" $your_score
    else
	echo -e "\033[32m\n\t\tscissors cut paper\n"
	my_score=$(($my_score + 1))
	echo -e "\033[0mscore Joueur 1 :" $my_score
	echo -e "\033[0mscore Joueur 2 :" $your_score
	fi
}


jeu3()
{
	quit="quit"
	echo -e "\n\t1-rock\n\t2-paper\n\t3-scissors\n\nJoueur 1 :" 
	read -s nb
    if [ "$nb" = 1 ] 
        then    Rock3
    elif [ "$nb" = 2 ]  
        then    Paper3    
    elif [ "$nb" = 3 ]   
        then	Scissors3  
    elif [ "$nb" = "return" ] 
        then
       			 main
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

shifumi3()
{
	your_score=0
	my_score=0
	compteur=0
	echo -e "\n----------Ready to play Shifumi? Here we go!----------\n"
	while [[ "my_score" -lt "$a" ]] && [[ "your_score" -lt "$a" ]]; do
		jeu3
		done
	if [[ "my_score" -eq "$a" ]]
		then
		echo -e "\nJoueur 1 vous avez gagne"
	elif [[ "your_score" -eq "$a" ]]
		then
		echo -e "\nJoueur 2 vous avez gagne"
	fi
}
