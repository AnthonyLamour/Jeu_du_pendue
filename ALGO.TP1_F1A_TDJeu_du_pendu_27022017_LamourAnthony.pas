program jeu_du_pendue;

uses crt;

{ALGO jeu_du_pendue
//BUT faire un jeu du pendue
//ENTREE le mot à trouver et des lettres
//SORTIE victoire ou défaite du joueur cherchant le mot

fonction lettre_incluse(lettre:caractere,mot:chaine):booleen
//BUT vérifier si une lettre est incluse dans un mot
//ENTREE le mot et la lettre
//SORTIE vrai ou faux

VAR
	res:booleen //res sera le booleen renvoyé
	i:entier //i sert à vérifier chaque lettre du mot
DEBUT
	//initialisation des variables
	res<-FALSE
	i<-1
	//tant que la lettre n'est pas trouver et que tout le mot n'est pas parcouru
	TANT QUE res=FALS) ET i<=length(mot) FAIRE
		//on vérifie si en i la lettre du mot est la même que celle choisi
		SI mot[i]=lettre ALORS
			res<-TRUE //si c'est le cas res devient vrai
		FINSI
		i<-i+1
	FINTANTQUE
	lettre_incluse<-res//on renvoie res
FINFONCTION

fonction changement(lettre:caractere,mot1,mot2:chaine):chaine;
//BUT échanger un caractère par un autre dans un mot
//ENTREE une lettre et deux mot un de référence et un à modifier
//SORTIE le mot modifié
VAR
	i:entier//i sert à parcourir les mots
DEBUT
	POUR i DE 1 A longueur(mot1) FAIRE //pour chaque lettre du premier mot
		SI mot1[i]=lettre ALORS //si la lettre est égale à la lettre i du mot
			mot2[i]<-lettre //alors la lettre i du mot 2 prend lettre
		FINSI
	FINPOUR
	changement<-mot2 //on renvoie le mot modifié
FINFONCTION

VAR
	vie,i:entier //vie est le nombre d'essaies du joueur et i sert à l'initialisation
	lettre:caractere //lettre sera les différentes lettre choisi par le joueur
	motchoisi,motaff:chaine //motchoisi est le mot à trouver et motaff représente l'avancer du joueur

DEBUT

	vie<-6 //initialisation de vie
	ECRIRE"Le joueur1 choisi le mot et le joueur2 doit le deviner, il a le droit a 6 erreurs"
	ECRIRE"Joueur1 veuillez entrer un mot :"
	LIRE motchoisi //initialisation de motchoisi
	motaff<-motchoisi // pour que les deux mot aient la même taille
	POUR i DE 1 A longueur(motchoisi) FAIRE //initialisation de motaff
		motaff[i]<-'_'
	FINPOUR
	REPETER
		ECRIRE"Voici le mot avec les lettres deja trouver:"&motaff //affichage de l'anvancer du joueur
		ECRIRE"Veuillez entrer une lettre :"
		LIRE lettre  //demande de la lettre
		SI lettre_incluse(lettre,motchoisi) ALORS //vérification que la lettre appartient au mot
			motaff<-changement(lettre,motchoisi,motaff) // si c'est le cas alors on modifie motaff
		SINON
			vie<-vie-1 //sionon le joueur perd une vie
			ECRIRE"Cette lettre ne figure pas dans le mot."
		FINSI
		//affichage de la progression du joueur
		ECRIRE"Voici le mot avec les lettres deja trouver:"&motaff 
		ECRIRE"Il vous reste "&vie&" essaie(s)"
	JUSQU'A (vie=0) OU (motaff=motchoisi) //jusqu'a la défaite d'un des joueurs
	//affichage de la victoire ou la défaite du joueur cherchant le mot
	SI vie=0 ALORS
		ECRIRE"Vous n''avez plus de vie"
		ECRIRE"GAME OVER"
	SINON
		ECRIRE"Vous avez trouver le mot"
		ECRIRE"VICTOIRE"
	FINSI
FIN}

function lettre_incluse(lettre:char;mot:string):boolean;
//BUT vérifier si une lettre est incluse dans un mot
//ENTREE le mot et la lettre
//SORTIE vrai ou faux

VAR
	res:boolean;//res sera le booleen renvoyé
	i:integer;//i sert à vérifier chaque lettre du mot
BEGIN
	//initialisation des variables
	res:=FALSE;
	i:=1;
	//tant que la lettre n'est pas trouver et que tout le mot n'est pas parcouru
	WHILE (res=FALSE) AND (i<=length(mot)) DO
		begin
			//on vérifie si en i la lettre du mot est la même que celle choisi
			IF mot[i]=lettre THEN
				begin
					res:=TRUE;//si c'est le cas res devient vrai
				end;
			i:=i+1;
		end;
	lettre_incluse:=res//on renvoie res
END;

function changement(lettre:char;mot1,mot2:string):string;
//BUT échanger un caractère par un autre dans un mot
//ENTREE une lettre et deux mot un de référence et un à modifier
//SORTIE le mot modifié
VAR
	i:integer;//i sert à parcourir les mots
BEGIN
	FOR i:=1 TO length(mot1) DO //pour chaque lettre du premier mot
		begin
			IF mot1[i]=lettre THEN //si la lettre est égale à la lettre i du mot
				begin
					mot2[i]:=lettre; //alors la lettre i du mot 2 prend lettre
				end;
		end;
	changement:=mot2; //on renvoie le mot modifié
END;

procedure affdessin(vie:integer);

begin
	CASE vie OF
		1:begin
		  writeln();
		  writeln('_______  ');
		  writeln(' |    |  ');
		  writeln(' |    O  ');
		  writeln(' |   /|\ ');
		  writeln(' |   /   ');
		  writeln(' |       ');
		  writeln(' |_______');
		  end;
		2:begin
		  writeln();
		  writeln('_______  ');
		  writeln(' |    |  ');
		  writeln(' |    O  ');
		  writeln(' |   /|\ ');
		  writeln(' |       ');
		  writeln(' |       ');
		  writeln(' |_______');
		  end;
		3:begin
		  writeln();
		  writeln('_______  ');
		  writeln(' |    |  ');
		  writeln(' |    O  ');
		  writeln(' |   /|  ');
		  writeln(' |       ');
		  writeln(' |       ');
		  writeln(' |_______');
		  end;
		4:begin
		  writeln();
		  writeln('_______  ');
		  writeln(' |    |  ');
		  writeln(' |    O  ');
		  writeln(' |   /   ');
		  writeln(' |       ');
		  writeln(' |       ');
		  writeln(' |_______');
		  end;
		5:begin
		  writeln();
		  writeln('_______  ');
		  writeln(' |    |  ');
		  writeln(' |    O  ');
		  writeln(' |       ');
		  writeln(' |       ');
		  writeln(' |       ');
		  writeln(' |_______');
		  end;
		6:begin
		  writeln();
		  writeln('_______  ');
		  writeln(' |    |  ');
		  writeln(' |       ');
		  writeln(' |       ');
		  writeln(' |       ');
		  writeln(' |       ');
		  writeln(' |_______');
		  end;
	end;
end;

//BUT faire le jeu du pendue
//ENTREE un mot et des lettres
//SORTIE le mot avec _ et victoire ou defaite

VAR
	vie,i:integer; //vie est le nombre d'essaies du joueur et i sert à l'initialisation
	lettre:char; //lettre sera les différentes lettre choisi par le joueur
	motchoisi,motaff,rejouer:string; //motchoisi est le mot à trouver et motaff représente l'avancer du joueur

BEGIN
	REPEAT
			clrscr;
			vie:=6; //initialisation de vie
			writeln('Jeu du pendue');
			writeln('Le joueur1 choisi le mot et le joueur2 doit le deviner, il a le droit a 6 erreurs');
			clrscr;
			write('Joueur1 veuillez entrer un mot :');
			readln(motchoisi); //initialisation de motchoisi
			write('Appuyer sur entrer pour nettoyer l''ecran puis passer le clavier au joueur2');
			readln;
			clrscr;
			motaff:=motchoisi;// pour que les deux mot aient la même taille
			for i:=1 to length(motchoisi) do //initialisation de motaff
				begin
					motaff[i]:='_';
				end;
			REPEAT
				clrscr;
				writeln('Voici le mot avec les lettres deja trouver:',motaff);//affichage de l'anvancer du joueur
				write('Veuillez entrer une lettre :');
				readln(lettre); //demande de la lettre
				IF lettre_incluse(lettre,motchoisi) THEN //vérification que la lettre appartient au mot
					begin
						motaff:=changement(lettre,motchoisi,motaff);// si c'est le cas alors on modifie motaff
					end
				ELSE
					begin
						vie:=vie-1; //sionon le joueur perd une vie
						writeln('Cette lettre ne figure pas dans le mot.');
						writeln('Appuyer sur entrer pour continuer');
						readln;
					end;
				//affichage de la progression du joueur
				writeln('Voici le mot avec les lettres deja trouver:',motaff);
				writeln('Il vous reste ',vie,' essaie(s)');
				affdessin(vie);
				writeln('Appuyer sur entrer pour continuer');
				readln;
			UNTIL (vie=0) OR (motaff=motchoisi);//jusqu'a la défaite d'un des joueurs
			//affichage de la victoire ou la défaite du joueur cherchant le mot
			IF vie=0 THEN
				begin
					writeln('Vous n''avez plus de vie');
					writeln('GAME OVER');
				end
			ELSE
				begin
					writeln('Vous avez trouver le mot');
					writeln('VICTOIRE')
				end;
			REPEAT
				writeln('Voulez vous rejouer (oui/non)');
				readln(rejouer);
			UNTIL(rejouer='oui') OR (rejouer='non');
	UNTIL(rejouer='non');
	writeln('Vous avez choisi de quitter');
	writeln('A bientot ! (appuyez sur entrer pour fermer le programme)');
	readln;

END.