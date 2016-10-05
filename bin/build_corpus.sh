# empty corpus file
printf "\nBuilding your corpus!\n\n"
echo "" > src/corpus.txt

read -p "Include 'Correspondence & Conversations of Alexis de Tocqueville with Nassau William Senior'? (yn) " yn1
if echo "$yn1" | grep -iq "^y" ;then
	cat src/txt/correspondence.txt | tail -9000 | head -7500 >> src/corpus.txt;
fi

read -p "Include 'Letters from of John Keats'? (yn) " yn4
if echo "$yn4" | grep -iq "^y" ;then
	cat src/txt/letters_of_john_keats.txt | tail -14050 | head -13600 >> src/corpus.txt
fi


read -p "Include Wollstonecraft'? (yn) " yn6
if echo "$yn6" | grep -iq "^y" ;then
	cat src/txt/wollstonecraft.txt | tail -5145 | head -4785 >> src/corpus.txt
fi

printf "\nDone.\n\n"