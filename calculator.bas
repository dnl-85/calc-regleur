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
Input "  choix                                              >>  ", choix$
Print ""

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
Print ""
Input "Diametre de la piece : ", diam
Input "Angle de pointe      : ", angle_pointe
Print ""
demi_diam = diam / 2
demi_pointe = angle_pointe / 2
hauteur_pointe! = demi_diam / Tan((demi_pointe * (3.1415 * 2)) / 360)
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
Print ""
Input "Diametre de la piece : ", diam
Input "Listel mesur‚        : ", mes_listel
Input "Listel nominal       : ", nom_listel
Print ""

val_dgr! = (diam * 3.1415) / 360
difference = mes_listel - nom_listel
decalage! = difference / val_dgr

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
Print ""
Input "Diametre de la piece : ", diam
Input "Listel Avant         : ", listel_avant
Input "Listel Arriere       : ", listel_arriere
Input "Listel nominal       : ", nom_listel
Input "Decalage des passes  : ", decal_passe
Print ""

val_dgr! = (diam * 3.1415) / 360
difference_avant = listel_avant - nom_listel
decalage_avant! = difference_avant / val_dgr
decal_passe = -decal_passe - decalage_avant

difference_arriere = listel_arriere - nom_listel
decalage_arriere = difference_arriere / val_dgr
decal_passe! = decal_passe - decalage_arriere

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
Print ""
Input "Diametre inferieur        : ", diam_inf
Input "Diametre superieur        : ", diam_sup
Input "Angle de passage au rayon : ", angle_pass
Print ""

diff_rayon = (diam_sup - diam_inf) / 2
long_arete! = diff_rayon / Sin((angle_pass * (3.1415 * 2)) / 360)

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
Print ""
Input "Diametre inferieur        : ", diam_inf
Input "Diametre superieur        : ", diam_sup
Input "Angle de passage au rayon : ", angle_pass
Print ""

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

Locate 8, 15
Print "Fin de l'application, … la prochaine !.."
End
