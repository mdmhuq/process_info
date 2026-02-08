#!/usr/bin/env bash   

echo "-------------------------------------"
printf "Hello $USER, please select from options below:\n a) What’s Running and Using My Computer?\n b) Which Programs Are Heavy or Slow?\n c) When Programs Started and How Long They’ve Been Running?\n q) Quit\n"
printf "\n\nLegend\nPID → Internal ID number for the program\nUSER → Person or system account running it\n%%CPU → How much processing power it’s using\n%%MEM → How much memory (RAM) it’s using\nLSTART → Exact date and time it started\nETIME -> How long the program has been running\nSTAT -> The current state of the program\nCOMM -> The short name of the program that is running.\n\n"
printf "\nNOTE:\nAfter selecting 'a' or 'b' 'c',\n- Use the arrow keys or mouse wheel to scroll,\n- Press / to search (then Enter)\n\t*Press 'n' to jump to the next result,\n\t*Press 'N' to go to previous result\n- To Exit press 'q'\n\n"
echo "-------------------------------------"

read -p "Select Option (a,b,c,q): " option 


while [[ $option != "q" ]]
do

    case $option in 
        a) 
            ps -eo pid,user,pcpu,pmem,comm   --sort=-pcpu  | less
            ;;
        b) 
            ps -eo pid,user,pcpu,pmem,etime,comm  --sort=-pcpu | less
            ;;
        c) 
            ps -eo pid,user,lstart,etime,comm --sort=-pcpu | less  
            ;;


        *)
            printf "\n\n"
            echo "Invalid Option Selected"
            printf "\n\n"
            ;;

    esac
    echo "-------------------------------------"

    printf "Please select from options below:\n a) What’s Running and Using My Computer?\n b) Which Programs Are Heavy or Slow?\n c) When Programs Started and How Long They’ve Been Running?\n q) Quit\n"
    printf "\n\nLegend\nPID → Internal ID number for the program\nUSER → Person or system account running it\n%%CPU → How much processing power it’s using\n%%MEM → How much memory (RAM) it’s using\nLSTART → Exact date and time it started\nETIME -> How long the program has been running\nSTAT -> The current state of the program\nCOMM -> The short name of the program that is running.\n\n"
    printf "\nNOTE:\nAfter selecting 'a' or 'b' 'c',\n- Use the arrow keys or mouse wheel to scroll,\n- Press / to search (then Enter)\n\t*Press 'n' to jump to the next result,\n\t*Press 'N' to go to previous result\n- To Exit press 'q'\n\n"
    echo "-------------------------------------"

    read -p "Select Option (a,b,c,q): " option 
    
done 

echo "Exiting... "
