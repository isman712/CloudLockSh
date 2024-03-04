convertir_color() {
    local hex_color="$1"
    # Extraer los componentes de color rojo, verde y azul
    local red=$(printf "%d" 0x${hex_color:1:2})
    local green=$(printf "%d" 0x${hex_color:3:2})
    local blue=$(printf "%d" 0x${hex_color:5:2})
    # Devolver el código de color ANSI
    printf "\e[38;2;%d;%d;%dm" "$red" "$green" "$blue"
}

ansi_color1="#05218E"
ansi_color2="#025BDB"
ansi_color3="#05ACFA"
ansi_color4="#03E4FF"

color1=$(convertir_color "$ansi_color1")
color2=$(convertir_color "$ansi_color2")
color3=$(convertir_color "$ansi_color3")
color4=$(convertir_color "$ansi_color4")
echo ""
echo ""
echo ""
echo -e "\e[35m
                                ${color1}    ██████╗██╗     ${color2} ██████╗ ██╗   ██╗${color3}██████╗ ██╗     ${color4} ██████╗  ██████╗██╗  ██╗    
                                ${color1}   ██╔════╝██║     ${color2}██╔═══██╗██║   ██║${color3}██╔══██╗██║     ${color4}██╔═══██╗██╔════╝██║ ██╔╝    
                                ${color1}   ██║     ██║     ${color2}██║   ██║██║   ██║${color3}██║  ██║██║     ${color4}██║   ██║██║     █████╔╝     
                                ${color1}   ██║     ██║     ${color2}██║   ██║██║   ██║${color3}██║  ██║██║     ${color4}██║   ██║██║     ██╔═██╗     
                                ${color1}   ╚██████╗███████╗${color2}╚██████╔╝╚██████╔╝${color3}██████╔╝███████╗${color4}╚██████╔╝╚██████╗██║  ██╗    
                                ${color1}    ╚═════╝╚══════╝ ${color2}╚═════╝  ╚═════╝ ${color3}╚═════╝ ╚══════╝${color4} ╚═════╝  ╚═════╝╚═╝  ╚═╝\e[0m                                                                                                                                              
"        

