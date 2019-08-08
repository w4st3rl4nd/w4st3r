#!/bin/bash

########## Banner ##########

banner3="
<BR><font color='#DAA520'>=======================================</BR></font>
<BR><font color='#008080'>***************ACUARYUS.NET******************</BR></font>
<BR><font color='#DAA520'>=======================================</BR></font>
<BR><font color='#1E90FF'>💢ｓｏｐｏｒｔａ💢 </BR></font>
<BR><font color='#32CD32'>📲Sólo usuarios pre-pago📱 </BR></font>
<BR><font color='#32CD32'>📹YOUTUBE </BR></font>
<BR><font color='#32CD32'>📬REDES SOCIALES: </BR></font>
<BR><font color='#32CD32'>📘FACEBOOK </BR></font>
<BR><font color='#32CD32'>📸INSTAGRAM </BR></font>
<BR><font color='#32CD32'>🐦TWITTER </BR></font>
<BR><font color='#32CD32'>📸MESSENGER </BR></font>
<BR><font color='#32CD32'>📻radio online y aplicaciones similares </BR></font>
<BR><font color='#32CD32'>🔊SPOTIFY </BR></font>
<BR></BR></font>
<BR><font color='#1E90FF'>Disfruta todo lo que internet tiene para ti! </BR></font>
<BR><font color='#DAA520'>=======================================</BR></font>
<BR><font color='#BA55D3'>||||||||||||20%</BR></font>
<BR><font color='#7B68EE'>||||||||||||||||||||||||40%</BR></font>
<BR><font color='#7B68EE'>||||||||||||||||||||||||||||||||||||60%</BR></font>
<BR><font color='#9370DB'>|||||||||||||||||||||||||||||||||||||||||||||||80%</BR></font>
<BR><font color='#7B68EE'>||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||100%</BR></font>
<BR><font color='#DAA520'>=======================================</BR></font>
<BR><font color='#FF0000'>*************!!!ADVERTENCIA!!!*************</BR></font>
<BR><font color='#860000'>NO SPAM !!!</BR></font>
<BR><font color='#1E90FF'>NO DDOS !!!</BR></font>
<BR><font color='#FF0000'>NO HACKING !!!</BR></font>
<BR><font color='#008080'>NO CARDING !!!</BR></font>
<BR><font color='#BA55D3'>NO CRIMINAL CYBER !!!</BR></font>
<BR><font color='#32CD32'>SI EXEDE EL LIMITE DE SU CUENTA EN DISPOSITIVOS CONECTADOS A LA VEZ, ESTA SERA ELIMINADA SIN POSTERIOR RECLAMO!!!</BR></font>
<BR><font color='#FF0000'>CONECTADO ACUARYUS.NET </BR></font>
<BR><font color='#DAA520'>=======================================</BR></font>
<BR><font color='#860086'> -CONECTADO  CONECTADO CONECTADO CONECTADO-</BR></font>
<BR><font color='#DAA520'>=======================================</BR></font>
<BR><font color='#1E90FF'>**************************************************</BR></font>
<BR><font color='#228622'>Whatsapp: </BR></font>
<BR><font color='#228622'> +543718454603 </BR></font>
<BR><font color='#228622'> +543718544274 </BR></font>
<BR><font color='#DAA520'>=======================================</BR></font>

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
banner="No hay un banner de momento"
fi
echo "bannerssh" > /etc/bannerssh
service ssh restart 1> /dev/null 2>/dev/null
service sshd restart 1>/dev/null 2>/dev/null

banner2="
<<BR><font color='#DAA520'>=======================================</BR></font>
<BR><font color='#008080'>***************ACUARYUS.NET******************</BR></font>
<BR><font color='#DAA520'>=======================================</BR></font>
<BR><font color='#1E90FF'>💢ｓｏｐｏｒｔａ💢 </BR></font>
<BR><font color='#32CD32'>📲Sólo usuarios pre-pago📱 </BR></font>
<BR><font color='#32CD32'>📹YOUTUBE </BR></font>
<BR><font color='#32CD32'>📬REDES SOCIALES: </BR></font>
<BR><font color='#32CD32'>📘FACEBOOK </BR></font>
<BR><font color='#32CD32'>📸INSTAGRAM </BR></font>
<BR><font color='#32CD32'>🐦TWITTER </BR></font>
<BR><font color='#32CD32'>📸MESSENGER </BR></font>
<BR><font color='#32CD32'>📻radio online y aplicaciones similares </BR></font>
<BR><font color='#32CD32'>🔊SPOTIFY </BR></font>
<BR></BR></font>
<BR><font color='#1E90FF'>Disfruta todo lo que internet tiene para ti! </BR></font>
<BR><font color='#DAA520'>=======================================</BR></font>
<BR><font color='#BA55D3'>||||||||||||20%</BR></font>
<BR><font color='#7B68EE'>||||||||||||||||||||||||40%</BR></font>
<BR><font color='#7B68EE'>||||||||||||||||||||||||||||||||||||60%</BR></font>
<BR><font color='#9370DB'>|||||||||||||||||||||||||||||||||||||||||||||||80%</BR></font>
<BR><font color='#7B68EE'>||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||100%</BR></font>
<BR><font color='#DAA520'>=======================================</BR></font>
<BR><font color='#FF0000'>*************!!!ADVERTENCIA!!!*************</BR></font>
<BR><font color='#860000'>NO SPAM !!!</BR></font>
<BR><font color='#1E90FF'>NO DDOS !!!</BR></font>
<BR><font color='#FF0000'>NO HACKING !!!</BR></font>
<BR><font color='#008080'>NO CARDING !!!</BR></font>
<BR><font color='#BA55D3'>NO CRIMINAL CYBER !!!</BR></font>
<BR><font color='#32CD32'>SI EXEDE EL LIMITE DE SU CUENTA EN DISPOSITIVOS CONECTADOS A LA VEZ, ESTA SERA ELIMINADA SIN POSTERIOR RECLAMO!!!</BR></font>
<BR><font color='#FF0000'>CONECTADO ACUARYUS.NET </BR></font>
<BR><font color='#DAA520'>=======================================</BR></font>
<BR><font color='#860086'> -CONECTADO  CONECTADO CONECTADO CONECTADO-</BR></font>
<BR><font color='#DAA520'>=======================================</BR></font>
<BR><font color='#1E90FF'>**************************************************</BR></font>
<BR><font color='#228622'>Whatsapp: </BR></font>
<BR><font color='#228622'> +543718454603 </BR></font>
<BR><font color='#228622'> +543718544274 </BR></font>
<BR><font color='#DAA520'>=======================================</BR></font>

"
echo "$banner2" > /etc/bannerssh
/etc/init.d/ssh restart
echo -e "\033[1;37mTerminado !!!\033[0m"
