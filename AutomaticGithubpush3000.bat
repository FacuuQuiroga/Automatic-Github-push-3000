@echo off
TITLE Bienvenid@ %USERNAME% a Github automatic push
MODE con:cols=80 lines=40
color 0A

:inicio
SET var=0
cls
echo ------------------------------------------------------------------------------
echo  Github automatic push 3000 ^| Creado por facundoqc56@educastur.es
echo ------------------------------------------------------------------------------
echo  1    Hacer push  
echo  2    Introducir repo git
echo  3    Introducir direccion del proyecto 
echo  4    Hacer push forzoso (-f)
echo  5    Cosas secretas  
echo  6    Salir
echo ------------------------------------------------------------------------------
echo.
echo.
echo.
echo NOTA: se va a crear 2 archivos .txt con la direccion del repositorio git y 
echo otro con la carpeta en donde eclipse guarda tu proyecto, NO LOS BORRES!
echo.
SET /p var= ^> Seleccione una opcion [1-6]:

if "%var%"=="0" goto inicio
if "%var%"=="1" goto op1
if "%var%"=="2" goto op2
if "%var%"=="3" goto op3
if "%var%"=="4" goto op4
if "%var%"=="5" goto op5
if "%var%"=="6" goto salir

::Mensaje de error cuando se selecciona una opción fuera de rango
echo. El numero "%var%" no es una opcion valida, por favor intente de nuevo.
echo.
pause
echo.
goto:inicio

:op1
    cls
    echo.
    <"repogit.txt" set/p "gitlinea="
    <"directorio.txt" set/p "cdlinea="
    cd %cdlinea%
    echo Haciendo el push...
    git push --repo=%gitlinea%
    pause
    goto:inicio

:op2
    cls
    echo.
    set/p repogit= Cual es la direccion git de el proyecto?
    echo %repogit% > repogit.txt
    echo direccion de github guardada!
    pause
    goto:inicio

:op3
    cls
    echo.
    echo copia el directorio donde esta el archivo .gitignore
    set/p carpeta= Cual es el directorio del proyecto?
    echo.
    pushd %carpeta%
    if exist .gitignore goto nicedir else goto baddir

    :baddir
    echo carpeta incorrecta
    pause
    goto:op3

    :nicedir
    popd
    echo %carpeta% > directorio.txt
    echo directorio guardado!
    pause
    goto:inicio
  
:op4
    echo.
    <"repogit.txt" set/p "gitlinea="
    <"directorio.txt" set/p "cdlinea="
    echo %gitlinea%
    echo %cdlinea%
    cd %cdlinea%
    git push --repo=%gitlinea% -f
    pause
    goto:inicio

:op5
    cls
    Set /a num=(%Random% %%9)+1
    color %num%
    echo.
    echo.
    echo                                       ```            ``                        
    echo                                   `.-.`.-..`       `.--oo-``                   
    echo                                 `.--.`yNMm..``````.---sMMN`.`                  
    echo                                `----`.MMMd`.----------:hdy`-.                  
    echo                               `------`-+/.`.----::::::::-.--`                  
    echo                               .-------....--:/+osooosssyo:-.`                  
    echo                              `------:-----/ossssoo++oooso+:--`                 
    echo                             ./---:------:osyysso+++ooooo+//+ys`                
    echo                            `oy---:-::--:osssoosyhhhyo+++++/omN:                
    echo                           `+yy/--::::--ooooooymNNNNmhysosooohd/                
    echo                          .+yyyo--:::---+/::--:ohhhyooyhhhhhhhy+                
    echo                       `-+syyyys:--::---//:--.--://::/oyyhhddddh:               
    echo                     `:oyyyyyyyys--:--:-://:--....--:/+ooosyhdmmds:`            
    echo                   ./osyyyyyyyyhho-------///:-.---:///++++osydmNNNms            
    echo                 `/sssssyssssyyyhhs:------/+/:--:+oysooo+oooymNNNNNd            
    echo                -oyhysssssssssyyyyhy/------:+/::+shmmhyso+ooshmNNNm/            
    echo               -yhhhdhyssssssosssssyyo/------::/+oyhdmmdhyyyyhhhs/.             
    echo              -ydhhhhhdhyssssooo+++oooo+/::------:/+oossyss+:-`                 
    echo             .syhdhhhhhhhhysoo++////:://////::-------------.`                   
    echo            `osyyhhddhhyyyyyyso+++//::::-::::----------::::`                    
    echo            oyyyyyhhddhhyyssoooo+++////:::-----...-----.---`                    
    echo           +dhyyyyyhdddhyyyso+///////:::::::------.----.---`                    
    echo          /dddhyyyyyhdhhhyyyso/:::::--------------..--::::-`                    
    echo         `hddddhhyyyyhhhhhyyyso+:::------------------::/:::.                    
    echo         .yhhddhhhyyyyhhhhyyyyys+/:::---::::::------://++//.                    
    echo         `yhhhdhhhhyyyyhhhhhyyyyso+//::::::::::::--://////+-                    
    echo         `yhhhhhhhhhyyyhhhhhyyyysssoo+///////:::::////////+-                    
    echo          sddddhhhhhyyhhhddhhyyyysysso++/://////////::::///-                    
    echo          .yddhhhhddhhhhhddmddhyysssso++//+/+++ooso+:--:::/:                    
    echo           .+yhhhhddddddddmmmdhyyssso+//+ooooooyddho/:--::/:`                   
    echo             -sdhdddddddmmmNmdhyysooo+//oo++ooyddddyo:--::/+//::-.``            
    echo              `/yhddddddmmmmmhhyysoo++//o++ooshdmddhs/::::/++ossso+/::-.`       
    echo                `:shdddmmmmmmhhyysso++/////++++osyhhyo/://::``.--::/os//.       
    echo                   ./shdmmmmmdhhhyso++//:::://///+syhys++///-       ``          
    echo                      `-/shmmmhhhhyso+///:::::::::/+syyo++//+/--.`````          
    echo                          `./osyhhysoo++o+:--........-..-/////+oooo+++//:`      
    echo                               -shhyso+/:`               `-::::::++++++sy-      
    echo                                `ohyso+/`                  `.::///////+/-       
    echo                                 -hsoo+/`                     .:::/:---         
    echo                                 -hyso+/-                                       
    echo                                 .yhso++:`                                      https://github.com/FacuuQuiroga
    echo.
    echo cierra el programa, jamas podras salir de aqui por cotilla MUAJAJAJAJ
    pause
    goto :op5

:salir
    @cls&exit