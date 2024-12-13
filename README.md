ArchLinux

    Esta configuracion aun no esta completa.
    Esperamos poder mejorar cada día este entorno minimalista enfocado a maquinas virtuales.
    

#############################################################################

Copiar el repositorio:

    git clone https://github.com/GibbyVi/bspwm

Copiar la configuracion a las ubicaciones correctas:

    cp bspwm/* ~/

Copiar archivos especificos:

    cp bspwm/.config/* ~/

    cp bspwm/.local/* ~/

mover todos los archivos:

    mv bspwm/* ~/

o mover rutas especificas

    mv bspwm/.config/* ~/

    mv bspwm/.local/* ~/

#############################################################################

#############################################################################

.bashrc contiene solo un script (recomiendo solo copiar el contenido dentro del bashrc del sistema)

    nano ~/bspwm/.bashrc

    nano ~/.bashrc

#############################################################################

#############################################################################

Instalar las fuentes:

    paru -S ttf-raleway-git

    paru -S ttf-nerd-fonts-hark-complete-git

#############################################################################

#############################################################################

Instalar paquetes para una funcionalidad completa:

    sudo pacman -S xclip dm-tool fzf

#############################################################################