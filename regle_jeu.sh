regle_jeu()
{
	clear
	echo -e -n " \nOn dit souvent jeu de main, jeu de vilain ! \n"
	echo -e -n "Pierre-Feuille-Ciseaux ou encore shifumi confirme l'expression.\n"
	echo -e -n "L’objectif est simple,"
	echo -e -n "il faut affronter l'oridnateur ou un autre joueur"
	echo -e -n " en utilisant l’une des trois armes:"
	echo -e -n "la pierre, la feuille ou la paire de ciseaux.\n\n"
	echo -e "- La pierre gagne face aux ciseaux. Elle les broie."
	echo "- Les ciseaux l’emportent face à la feuille qu’ils coupent."
	echo "- La feuille bat la pierre en l’enveloppant."
	echo -e "\nA chaque victoire, vous remportez 1 point.\n"
	echo "A tout moment vous pouvez quitter le jeu avec la commande : quit"
	echo -e "En ce qui concerne le Pierre, papier, ciseaux, lézard, Spock :\n"
	echo "- Les ciseaux coupent le papier"
	echo "- Le papier bat la pierre"
	echo "- La pierre écrase le lézard"
	echo "- Le lézard empoisonne Spock"
	echo "- Spock écrabouille les ciseaux"
	echo "- Les ciseaux décapitent le lézard"
	echo "- Le lézard mange le papier"
	echo "- Le papier repousse Spock"
	echo "- Spock détruit la pierre"
	echo "- La pierre bat les ciseaux"
	main $a
}
