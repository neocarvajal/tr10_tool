#!/bin/bash
# 0-main_menu.sh
#
# Función que permite entrar en el Menú principal
#
#~ - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# A TINY CLI TOOL FOR GNU/LINUX BASH VERSION 1.0.0
#
# Developer  : Erick Carvajal Rodriguez
# Contact    : http://twitter.com/neocarvajal && http://fb.com/neocarvajal
# Date       : 06/02/2016
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

function main_menu {
    clear   
    while [ $OPCION -ne 8 ]
    do
        echo " "
        echo " ADB MANAGER FOR LINUX"
        echo "- - - - - - - - - - - - - - - - - - -"
        echo " 1 - Recovery temporal + Root + Gapps"
        echo " 2 - Reiniciar en Recovery Temporal"
        echo " 3 - Reiniciar en Droidboot (Fastboot)"
        echo " 4 - Reiniciar en Recovery (Nativo)"
        echo " 5 - Entrar en el shell del dispositivo"
        echo " 6 - Bypass Lock (necesario ser ROOT)"
        echo " 7 - Multiflash"
        echo " 8 - Salir "
        echo "- - - - - - - - - - - - - - - - - - -"
        read -p "Seleccione una opción: " OPCION
        echo " "         

        case $OPCION in         
            
            1)
                temp_recovery_root_gapps           
            ;;

            2)
                reboot_temp_recovery
            
            ;;
                
            3)
                reboot_droidboot
            ;;

            4)
                reboot_native_recovery
            ;;
            
            5)
                enter_shell
            ;;
            
            6)
                bypass_lock
            ;;            

            7)
               multi_flash_option
            ;; 

            8)              
                clear;
                echo "GRACIAS POR USAR ESTA HERRAMIENTA!!!";
                echo " ";             
                echo "Desarrollado Por : Erick Carvajal R - @neocarvajal";
                echo " ";
            ;;

            *) 
                echo " "
                echo "Opción equivocada";
                echo " ";
            ;;                
        esac        
    done
}
