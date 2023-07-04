set term x11 persist

# Guia6 -Problema 5

##################################################
####            h o l i s    ( :            ######
##################################################

    set title  "Modelo Lotka-Volterra Evolucion temporal (Metodo de Euler)"
    set xlabel "tiempo t [s]"
    set ylabel "X(t) , Y(t) Poblacion de Presas y Predadores respect. "
    set grid
    #set logscale xy
    #set sample 500

    
##################################################
######      G R A F.   D A T O S            ######
##################################################

    # grafico de la poblacion de presas y poblacion de Predadores   

    plot "LV_euler.dat" u 1:2 title "X(t) Poblacion de Presas" w lp pointtype 7
    replot "LV_euler.dat" u 1:3 title "Y(t) Poblacion de Predadores" w lp pointtype 7
    
##################################################
######          E X P O R T A R             ######
##################################################
############       P   N   G         #############

    set terminal png size 1200,900
    set output './Graficos/Lotka-Volterra-Euler.png'
    
    replot
    
    set title  "Modelo Lotka-Volterra Evolucion temporal (Metodo de RungeKuta4)"
    plot "LV_rk4.dat" u 1:2 title "X(t) Poblacion de Presas" w lp pointtype 7
    replot "LV_rk4.dat" u 1:3 title "Y(t) Poblacion de Predadores" w lp pointtype 7


    set terminal png size 1200,900
    set output './Graficos/Lotka-Volterra-RK4.png'
    replot
    
    #---------------------------------------------------------------------------------
    ##############################################
    ###GRAFICOS ADICIONALES X(t) vs Y(t)
    ##############################################
    
    set title  "Modelo Lotka-Volterra Y(t) vs X(t) (Metodo de Euler)"
    plot "LV_euler.dat" u 2:3 title "X(t) vs Y(t)" w lp pointtype 7
    


    set terminal png size 1200,900
    set output './Graficos/Lotka-Volterra-XvsY-euler.png'
    replot
    
    
    set title  "Modelo Lotka-Volterra Y(t) vs X(t) (Metodo de RungeKuta4)"
    plot "LV_rk4.dat" u 2:3 title "X(t) vs Y(t)" w lp pointtype 7
    


    set terminal png size 1200,900
    set output './Graficos/Lotka-Volterra-XvsY-rk4.png'
    replot
exit
