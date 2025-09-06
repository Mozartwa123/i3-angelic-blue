{
    if ( $1 == "some" ) {
        display = $2
        sedcommand = "sed -i " "\"s/content: '.';/content: '" display "';/\" $HOME/.config/rofi/workspaces/base_1.rasi" 
        #print sedcommand
        system(sedcommand)
    } else {
        dmenu_list = dmenu_list $2 "\n"
    }
}

END {
    printf dmenu_list
}