#!/bin/bash

########## Banner ##########

banner3="
<br> 
<font color="red"> 
<br>________,met$$$$$gg. 
<br>______,g$$$$$$$$$$$$$P. 
<br>___,g$$P""__________"""Y$$.". 
<br>__,$$P'_________________`$$$. 
<br>',$$P_______,ggs._______`$$b: 
<br>`d$$'_____,$P"'___.______$$$ 
<br>_$$P______d$'_____,____$$P 
<br>_$$:______$$.___-____,d$$' 
<br>_$$;______Y$b._____,d$P' 
<br>_Y$$._____`.`"Y$$$$P"' 
<br>_`$$b_______"-.__ 
<br>__`Y$$b 
<br>___`Y$$. 
<br>_____`$$b. 
<br>_______`Y$$b. 
<br>_________`"Y$b._ 
<br>_____________`""""</font> 
<br> 
<font color="green"><h1>Android Mexico</h1></font> 
<br> 
<font color="purple">Servidor privado</font><br> 
<font color="black=">Creador: ACUARYUS.NET</font>
"
sed -i 's%DROPBEAR_BANNER=""%DROPBEAR_BANNER="/etc/issue.net"%g' /etc/default/dropbear
echo "$banner3" > /etc/issue.net
service dropbear restart

sshd_config_bak=$(cat /etc/ssh/sshd_config |grep -v "Banner")
echo "$sshd_config_bak" > /etc/ssh/sshd_config
echo "Banner /etc/bannerssh" >> /etc/ssh/sshd_config
service ssh restart 1>/dev/null 2>/dev/null
service sshd restart 1>/dev/null 2>/dev/null
if [ -f /etc/bannerssh ]
then
banner=$(cat /etc/bannerssh)
else
banner="No hay un banner por el momento"
fi
echo "bannerssh" > /etc/bannerssh
service ssh restart 1> /dev/null 2>/dev/null
service sshd restart 1>/dev/null 2>/dev/null

banner2="
<br> 
<font color="red"> 
<br>________,met$$$$$gg. 
<br>______,g$$$$$$$$$$$$$P. 
<br>___,g$$P""__________"""Y$$.". 
<br>__,$$P'_________________`$$$. 
<br>',$$P_______,ggs._______`$$b: 
<br>`d$$'_____,$P"'___.______$$$ 
<br>_$$P______d$'_____,____$$P 
<br>_$$:______$$.___-____,d$$' 
<br>_$$;______Y$b._____,d$P' 
<br>_Y$$._____`.`"Y$$$$P"' 
<br>_`$$b_______"-.__ 
<br>__`Y$$b 
<br>___`Y$$. 
<br>_____`$$b. 
<br>_______`Y$$b. 
<br>_________`"Y$b._ 
<br>_____________`""""</font> 
<br> 
<font color="green"><h1>Android Mexico</h1></font> 
<br> 
<font color="purple">Servidor privado</font><br> 
<font color="black=">Creador: ACUARYUS.NET</font>
"
echo "$banner2" > /etc/bannerssh
/etc/init.d/ssh restart
echo -e "\033[1;37mTerminado !!!\033[0m"
