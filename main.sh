time=120
difficulte=1
option=null

printmenu(){
  clear
  echo -en "\e[9;10f$(tput bold)-------------------------------------------------\n"
  echo -en "\e[10;30fMOTUS"
  echo -en "\e[11;10f-------------------------------------------------$(tput sgr0)\n"
  echo -en "\e[13;10fChoisissez une option parmi les suivantes:\n\n"

  echo -en "\e[15;10fJouer(j)"
  echo -en "\e[16;10fParametres(p)"
  echo -en "\e[17;10fSortir(s)"
  echo -en "\e[18;10f"
  read option

  case $option in
    'p')
        printParam
        ;;
    'j')
        #./motus.sh time difficulte
        ./motus.sh
        ;;
    's')
        exit 0
        ;;
      esac
}

printParam(){
  clear
  echo -en "\e[9;10f$(tput bold)-------------------------------------------------\n"
  echo -en "\e[10;25fParametres MOTUS"
  echo -en "\e[11;10f-------------------------------------------------$(tput sgr0)\n"
  echo -en "\e[13;10fChoisissez une option parmi les suivantes:"
  echo -en "\e[15;10fDifficulte(j)"
  echo -en "\e[16;10fTime(t)"
  echo -en "\e[17;10fMeunu principal(s)"
  echo -en "\e[18;10f"

  read param
  case $param in
    'j')
      echo -ne "Difficulte 1-3: "
      read difficulte
      printParam
    ;;
    't')
    echo -ne "Time en sec: "
    read time
    printParam
    ;;
    's')
      printmenu
    ;;
  esac
}


printmenu
