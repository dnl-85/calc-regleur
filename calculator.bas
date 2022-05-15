Debut:
Screen 12
_Title "Calculateur d'aide aux reglages - mai.22"
Color 4, 15
Cls

Print "----------------------------------------------------------"
Print "  CALCULATEUR D'AIDE AUX REGLAGES !                       "
Print "  Mai 2022  -  sous Licence MIT                           "
Print "----------------------------------------------------------"
Print "  1. calculer une hauteur de pointe.                      "
Print "  2. calculer une compensation de listel simple.          "
Print "  3. calculer une compensation de double listels.         "
Print "  4. calculer une longueur d'angle de passage (hyp).      "
Print "  5. calculer une longueur d'angle de passage (x).        "
Print "                                                          "
Print "  i. au sujet de cette application...                     "
Print "                                                          "
Print "  0. quitter l'application.                               "
Print "----------------------------------------------------------"
Input "  selection >> ", choix$

If choix$ = "1" Then: GoTo Hauteur_Pointe
If choix$ = "2" Then: GoTo Compensation_Listel_Simple
If choix$ = "3" Then: GoTo Compensation_Listel_Double
If choix$ = "4" Then: GoTo Longueur_Passage_Hypothenuse
If choix$ = "5" Then: GoTo Longueur_Passage_Axial
If choix$ = "i" Then: GoTo Info_Appli
If choix$ = "0" Then: GoTo Fin


Hauteur_Pointe:
Screen 12
_Title "option 1 : calculer une hauteur de pointe..."
Color 4, 15
Cls

Print "- CALCULER UNE HAUTEUR DE POINTE -"
Print "Diametre de la piece : "
Print "Angle de pointe      : "

Locate 2, 30
Input "", diam
Locate 3, 30
Input "", angle_pointe

demi_diam = diam / 2
demi_pointe = angle_pointe / 2
hauteur_pointe! = demi_diam / Tan((demi_pointe * (3.1415 * 2)) / 360)

Locate 10, 1
Print "Le rayon fait                            : "; demi_diam; "mm."
Print "Le demi de l'angle de pointe fait        : "; demi_pointe; "dgr."
Print "La hauteur de pointe de votre outil fait : "; hauteur_pointe; "mm."
Print ""
Input "Appuyez sur Entree pour revenir ...", suivant
GoTo Debut


Compensation_Listel_Simple:
Screen 12
_Title "option 2 : calculer une compensation de listel simple..."
Color 4, 15
Cls

Print "- CALCULER UNE COMPENSATION DE LISTEL SIMPLE -"
Print "Diametre de la piece : "
Print "Listel mesure        : "
Print "Listel nominal       : "

Locate 2, 30
Input "", diam
Locate 3, 30
Input "", mes_listel
Locate 4, 30
Input "", nom_listel

val_dgr! = (diam * 3.1415) / 360
difference = mes_listel - nom_listel
decalage! = difference / val_dgr

Locate 10, 1
Print "Un degr‚ vaut      : "; val_dgr; "mm"
Print "Votre compensation : "; decalage; "dgr"
Print ""
Input "Appuyez sur Entree pour revenir ...", suivant
GoTo Debut


Compensation_Listel_Double:
Screen 12
_Title "option 3 : calculer une compensation de double listels..."
Color 4, 15
Cls

Print "- CALCULER UNE COMPENSATION DE DOUBLE LISTELS -"
Print "Diametre de la piece : "
Print "Listel Avant         : "
Print "Listel Arriere       : "
Print "Listel nominal       : "
Print "Decalage des passes  : "

Locate 2, 30
Input "", diam
Locate 3, 30
Input "", listel_avant
Locate 4, 30
Input "", listel_arriere
Locate 5, 30
Input "", nom_listel
Locate 6, 30
Input "", decal_passe

val_dgr! = (diam * 3.1415) / 360
difference_avant = listel_avant - nom_listel
decalage_avant! = difference_avant / val_dgr
decal_passe = -decal_passe - decalage_avant

difference_arriere = listel_arriere - nom_listel
decalage_arriere = difference_arriere / val_dgr
decal_passe! = decal_passe - decalage_arriere

Locate 10, 1
Print "Un degr‚ vaut               : "; val_dgr; "mm"
Print "Compensation listel avant   : "; decalage_avant; "dgr"
Print "Decalage entre les 2 passes : "; decal_passe; "dgr"
Print ""
Input "Appuyez sur Entree pour revenir ...", suivant
GoTo Debut


Longueur_Passage_Hypothenuse:
Screen 12
_Title "option 4 : calculer une longueur d'angle de passage (arete de coupe)"
Color 4, 15
Cls

Print "- CALCULER UNE LONGUEUR D'ANGLE DE PASSAGE (ARETE DE COUPE) -"
Print "Diametre inferieur        : "
Print "Diametre superieur        : "
Print "Angle de passage au rayon : "

Locate 2, 30
Input "", diam_inf
Locate 3, 30
Input "", diam_sup
Locate 4, 30
Input "", angle_pass

diff_rayon = (diam_sup - diam_inf) / 2
long_arete! = diff_rayon / Sin((angle_pass * (3.1415 * 2)) / 360)

Locate 10, 1
Print "La longueur de l'arete de coupe de l'angle de passage vaut : "; long_arete; "mm"
Print ""
Input "Appuyez sur Entree pour revenir ...", suivant
GoTo Debut


Longueur_Passage_Axial:
Screen 12
_Title "option 5 : calculer une longueur d'angle de passage (longueur axial)"
Color 4, 15
Cls

Print "- CALCULER UNE LONGUEUR D'ANGLE DE PASSAGE (AXIAL) -"
Print "Diametre inferieur        : "
Print "Diametre superieur        : "
Print "Angle de passage au rayon : "

Locate 2, 30
Input "", diam_inf
Locate 3, 30
Input "", diam_sup
Locate 4, 30
Input "", angle_pass

diff_rayon = (diam_sup - diam_inf) / 2
long_axial! = diff_rayon / Tan((angle_pass * (3.1415 * 2)) / 360)

Print "La longueur axial de l'angle de passage vaut : "; long_axial; "mm"
Print ""
Input "Appuyez sur Entree pour revenir ...", suivant
GoTo Debut


Info_Appli:
Screen 12
_Title "au sujet de cette application..."
Color 4, 15
Cls

Print "------------------------------------------------------------"
Print " Application d'aide aux reglages pour les utilisateurs des  "
Print "Rollomatic CNC 620 & versions ulterieures / Reinecker RS700."
Print "------------------------------------------------------------"
Print "Cree par MEYER Daniel pour Windows & Linux sous QuickBasic64"
Print "Application sous license MIT (open source)    -     merci de"
Print "respecter le code du proprietaire !  Disponible egalement en"
Print "anglais sur simple demande...                               "
Print "------------------------------------------------------------"
Print "                         - Mai 2022 -                       "
Print "------------------------------------------------------------"
Print "  Pour + d'infos, demandes particulieres ou avoir acces au  "
Print "  code source de cette application... voir ma page GitHub:  "
Print "                                                            "
Print "              > github.com/dnl-85/calc-regleur <            "
Print "                               ou                           "
Print "                     > github.com/dnl-85 <                  "
Print "------------------------------------------------------------"
Print "                                                            "
Input "Appuyez sur Entree pour revenir ...", suivant
GoTo Debut


Fin:
Screen 12
_Title "... fin ..."
Cls

Locate 10, 20
Print "Fin de l'application, … la prochaine !.."
End
