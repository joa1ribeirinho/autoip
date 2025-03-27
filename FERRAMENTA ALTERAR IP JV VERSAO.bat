@echo off

:MENU
cls

echo =====================================
echo          TIMERNET TELECOM
echo =====================================

echo ............................... .........
echo  Para definir o IP 192.168.0.1 digite: 0 
echo  Para definir o IP 192.168.1.1 digite: 1
echo  Para definir o IP 192.168.2.1 digite: 2
echo  Para definir o IP 192.168.3.1 digite: 3
echo  Para definir o IP 10.0.0.1 digite: 4
echo .........................................

set INTERFACE=netwan

set /p opcao=Digite sua opcao (0-4) : 

if "%opcao%"=="0" (
   netsh interface ip set address name="%INTERFACE%" static 192.168.0.2 255.255.255.0 192.168.0.1
   echo ---------------------------------------------
   echo  IP alterado com sucesso para 192.168.0.1!:D
   echo ---------------------------------------------

) else if "%opcao%"=="1" (
   netsh interface ip set address name="%INTERFACE%" static 192.168.1.2 255.255.255.0 192.168.1.1
   echo ----------------------------------------------
   echo  IP alterado com sucesso para 192.168.1.1! :D
   echo ----------------------------------------------

) else if "%opcao%"=="2" (
   netsh interface ip set address name="%INTERFACE%" static 192.168.2.2 255.255.255.0 192.168.2.1
   echo ----------------------------------------------
   echo  IP alterado com sucesso para 192.168.2.1! :D
   echo ----------------------------------------------

) else if "%opcao%"=="3" (
   netsh interface ip set address name="%INTERFACE%" static 192.168.3.2 255.255.255.0 192.168.3.1
   echo ----------------------------------------------
   echo  IP alterado com sucesso para 192.168.3.1! :D
   echo ----------------------------------------------

) else if "%opcao%"=="4" (
   netsh interface ip set address name="%INTERFACE%" static 10.0.0.2 255.0.0.0 10.0.0.1
   echo -------------------------------------------
   echo  IP alterado com sucesso para 10.0.0.1! :D
   echo -------------------------------------------
   
) else (
    echo ..................................
    echo Deu merda ae, olha essa p#**@ aee
    echo ..................................
)

echo ..............................................
echo  Para acessar interface 192.168.0.1 digite: 0 
echo  Para acessar interface 192.168.1.1 digite: 1
echo  Para acessar interface 192.168.2.1 digite: 2
echo  Para acessar interface 192.168.3.1 digite: 3
echo  Para acessar interface 10.0.0.1 digite: 4
echo ..............................................




set /p opcao=Sua opcao (0-4) : 

if "%opcao%"=="0" (
    start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" "http://192.168.0.1/"
    echo ---------------
    echo agr o pai ta onlaine :D
    echo ---------------
) else if "%opcao%"=="1" (
    start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" "http://192.168.1.1/"
    echo ---------------
    echo agr o pai ta onlaine :D
    echo ---------------
) else if "%opcao%"=="2" (
    start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" "http://192.168.2.1/"
    echo ---------------
    echo agr o pai ta onlaine :D
    echo ---------------
) else if "%opcao%"=="3" (
    start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" "http://192.168.3.1/"
    echo ---------------
    echo agr o pai ta onlaine :D
    echo ---------------
    
) else if "%opcao%"=="4" (
    start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" "http://10.0.0.1/"
    echo ---------------
    echo agr o pai ta onlaine :D
    echo ---------------
)   
echo =====================
echo by JOAO GOSTOSAO
echo =====================

echo.
echo Pressione qualquer tecla para reiniciar...
pause
goto :MENU