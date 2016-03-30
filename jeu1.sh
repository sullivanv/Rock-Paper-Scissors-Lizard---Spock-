Rock1()
{
    if [ "$rand" = 2 ] 
	then
	echo -e "\033[31m\t\n\t\tpaper covers rock\n"
	my_score=$(($my_score - 1))
	echo -e "\033[0mscore :" $my_score
    else
	echo -e "\033[32m\n\t\trock crushes scissors\n"
	my_score=$(($my_score + 1))
	echo -e "\033[0mscore :" $my_score
    fi
}

Paper1()
{
    if [ "$rand" = 1 ] 
	then
	echo -e "\033[32m\n\t\tpaper covers rock\n"
	my_score=$(($my_score + 1))
	echo -e "\033[0mscore :" $my_score 
    else
	echo -e "\033[31m\n\t\tscissors cut paper\n"
	my_score=$(($my_score - 1))
	echo -e "\033[0mscore :" $my_score
	
	fi
}

Scissors1()
{
    if [ "$rand" = 1 ] 
	then
	echo -e "\033[31m\n\t\trock crushes scissors\n"
	my_score=$(($my_score - 1))
	echo -e "\033[0mscore :" $my_score 
    else
	echo -e "\033[32m\n\t\tscissors cut paper\n"
	my_score=$(($my_score + 1))
	echo -e "\033[0mscore :" $my_score
	
	fi
}
