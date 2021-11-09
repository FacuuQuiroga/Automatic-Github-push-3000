@echo off
TITLE Bienvenid@ %USERNAME% a Github automatic push
MODE con:cols=113 lines=50
color 0A

if exist uwu goto inicio else goto crearcarpeta
:crearcarpeta
mkdir uwu
cd uwu

:inicio
SET var=0
cls
echo -----------------------------------------------------------------------------------------------------------------
echo  			    Github automatic push 3000 ^| Creado por facundoqc56@educastur.es
echo -----------------------------------------------------------------------------------------------------------------
echo  1    Hacer PUSH  
echo  2    Introducir repositorio GitHub
echo  3    Introducir carpeta del proyecto 
echo  4    Hacer push forzoso (-f)
echo  5    Cosas secretas  
echo  6    Salir
echo ----------------------------------------------------------------------------------------------------------------
echo Instrucciones:
echo 1- Introduce tu repositorio Github
echo 2- Introduce la carpeta donde tengas el proyecto.
echo 3- Haz un PUSH!, si te da problemas puedes hacer un push forzoso de ultima opcion
echo ----------------------------------------------------------------------------------------------------------------
echo NOTA: se va a crear una carpeta (llamada "uwu") con la configuracion de tu repositorio github y la carpeta en donde eclipse 
echo guarda tu proyecto, NO LOS BORRES!
echo Luego podras hacer el push directamente sin tener que introducir nuevamente el directorio y repositorio.
echo.
echo.
SET /p var= ^> Seleccione una opcion [1-6]:

if "%var%"=="0" goto inicio
if "%var%"=="1" goto push
if "%var%"=="2" goto intgit
if "%var%"=="3" goto intdir
if "%var%"=="4" goto pushf
if "%var%"=="5" goto chems
if "%var%"=="6" goto salir

::Mensaje de error cuando se selecciona una opción fuera de rango
echo. El numero "%var%" no es una opcion valida, por favor intente de nuevo.
echo.
pause
echo.
goto:inicio

:push
    cls
    echo.
    echo La direccion Git es 
    echo %gitlinea%
    echo y la carpeta del proyeto es 
    echo %cdlinea%
    echo.
    
    <"uwu/repogit.txt" set/p "gitlinea="
    <"uwu/directorio.txt" set/p "cdlinea="
    cd %cdlinea%
    echo Haciendo el push...
	cls
    git push --repo=%gitlinea%
    pause
    goto:inicio

:intgit
    cls
    echo.
    set/p repogit= Cual es la direccion git de el proyecto?
    echo %repogit% > repogit.txt
    echo direccion de github guardada!
    pause
    goto:inicio

:intdir
    cls
    echo.
    set/p carpeta= Cual es la carpeta del proyecto?
    echo.
    pushd %carpeta%
    if exist .gitignore goto nicedir else goto baddir

    :baddir
	cls
    echo Carpeta incorrecta
	echo Copia el directorio donde esta el archivo .gitignore
    pause
    goto:intdir

    :nicedir
	cls
    popd
    echo %carpeta% > directorio.txt
    echo Directorio guardado!
    pause
    goto:inicio
  
:pushf
	cls
    echo.
    <"uwu/repogit.txt" set/p "gitlinea="
    <"uwu/directorio.txt" set/p "cdlinea="
    cd %cdlinea%
	echo Haciendo el push forzoso...
    git push --repo=%gitlinea% -f
    pause
    goto:inicio

:chems
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
    echo Cierra el programa, jamas podras salir de aqui por cotilla MUAJAJAJAJ
	pause
    goto :chems

:salir
    @cls&exit
