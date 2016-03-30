Rock2()
{
	if [ "$rand" = 2 ] 
 		then
 		echo -e "\033[31m\n\t\tpaper covers rock\n"
 		your_score=$(($your_score + 1))
 	 	echo -e "\033[0mVotre score :" $my_score
        echo -e "\033[0mScore de l'IA :" $your_score
    else
    	echo -e "\033[32m\n\t\trock crushes scissors\n"
    	my_score=$(($my_score + 1))
    	echo -e "\033[0mVotre score :" $my_score
        echo -e "\033[0mScore de l'IA :" $your_score
    fi
}

Paper2()
{
	if [ "$rand" = 1 ] 
 		then
 		echo -e "\033[32m\n\t\tpaper covers rock\n"
 		my_score=$(($my_score + 1))
 	 	echo -e "\033[0mVotre score :" $my_score
        echo -e "\033[0mScore de l'IA :" $your_score	
    else
    	echo -e "\033[31m\n\t\tscissors cut paper\n"
    	your_score=$(($your_score + 1))
    	echo -e "\033[0mVotre score :" $my_score
        echo -e "\033[0mScore de l'IA :" $your_score
    	
	fi
}

Scissors2()
{
	if [ "$rand" = 1 ] 
 		then
 		echo -e "\033[31m\n\t\trock crushes scissors\n"
 		your_score=$(($your_score + 1))
 	 	echo -e "\033[0mVotre score :" $my_score
        echo -e "\033[0mScore de l'IA :" $your_score	
    else
    	echo -e "\033[32m\n\t\tscissors cut paper\n"
    	my_score=$(($my_score + 1))
    	echo -e "\033[0mVotre score :" $my_score
        echo -e "\033[0mScore de l'IA :" $your_score
    	
	fi
}

