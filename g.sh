echo ""
echo ""
echo ""
echo "JOIN MY TELEGRAM CHANNEL @hua95ch "
VIP="com.tencent.ig"

am force-stop com.tencent.ig
killall -q com.tencent.ig
pkill com.tencent.ig

iptables -F
iptables --flush
iptables -P INPUT ACCEPT
iptables -P FORWARD ACCEPT
iptables -P OUTPUT ACCEPT
iptables -t nat -F
iptables -t mangle -F
iptables -X
clear
STR=$(head -3 /dev/urandom | tr -cd 'a-z0-9' | cut -c -16)

BP1=$(grep -n com.tencent.ig /data/system/users/0/settings_ssaid.xml | grep -o 'value="[a-zA-Z0-9]*"*' | cut -d '"' -f2)
sed -i "s/$BP1/$STR/g" /data/system/users/0/settings_ssaid.xml

echo '128' > /proc/sys/fs/inotify/max_user_instances
echo '8192' > /proc/sys/fs/inotify/max_user_watches
echo '16384' > /proc/sys/fs/inotify/max_queued_events
cd /proc/sys/fs/inotify && echo '16384' > max_queued_events
cd /proc/sys/fs/inotify && echo '128' > max_user_instances
cd /proc/sys/fs/inotify && echo '8192' > max_user_watches
DUMP() {
  pm dump $1 | grep $2 | tr ' ' '\n' | grep $1 | sed s/$2// | tr -d '\n';
};
lib=`ls -mR $(DUMP com.tencent.ig legacyNativeLibraryDir=) | grep : | tr -d : | grep /arm64 | grep -v sosna`
SAVE(){
cp $lib/$1 $lib/$1.bak
}
Fast(){
cp -rf $1 $1.bak ;rm -rf $1 ;mv $1.bak $1 ;chmod 755 $1
}
RETURN(){
mv $lib/$1.bak $lib/$1
}
SAVE libanogs.so
SAVE libgcloud.so
SAVE libTDataMaster.so
SAVE libCrashSightCore.so
SAVE libPandoraVideo.so

rm -rf /data/data/com.tencent.ig/no_backup
rm -rf /data/data/com.tencent.ig/app*
rm -rf /data/data/com.tencent.ig/cache


iptables -I OUTPUT -p tcp -m string --string "android.crashsight.wetest.net" --algo bm -j DROP; 
 iptables -I INPUT -p tcp -m string --string "android.crashsight.wetest.net" --algo bm -j DROP; 
 iptables -I OUTPUT -p tcp -m string --string "cloud.gsdk.proximabeta.com" --algo bm -j DROP; 
 iptables -I INPUT -p tcp -m string --string "cloud.gsdk.proximabeta.com" --algo bm -j DROP; 
 iptables -I OUTPUT -p tcp -m string --string "cs.mbgame.gamesafe.qq.com" --algo bm -j DROP; 
 iptables -I INPUT -p tcp -m string --string "cs.mbgame.gamesafe.qq.com" --algo bm -j DROP; 
 iptables -I OUTPUT -p tcp -m string --string "android.googlesource.com" --algo bm -j DROP;
 iptables -I INPUT -p tcp -m string --string "android.googlesource.com" --algo bm -j DROP; 
 iptables -I OUTPUT -p tcp -m string --string "de.voice.gcloudcs.com" --algo bm -j DROP; 
 iptables -I INPUT -p tcp -m string --string "de.voice.gcloudcs.com" --algo bm -j DROP; 
 iptables -I OUTPUT -p tcp -m string --string "cloud.vmp.onezapp.com" --algo bm -j DROP; 
 iptables -I INPUT -p tcp -m string --string "cloud.vmp.onezapp.com" --algo bm -j DROP; 
 iptables -I OUTPUT -p tcp -m string --string "anticheatexpert.com" --algo bm -j DROP; 
 iptables -I INPUT -p tcp -m string --string "anticheatexpert.com" --algo bm -j DROP; 
 iptables -I OUTPUT -p tcp -m string --string "oth.eve.mdt.qq.com" --algo bm -j DROP; 
 iptables -I INPUT -p tcp -m string --string "oth.eve.mdt.qq.com" --algo bm -j DROP; 
 iptables -I OUTPUT -p tcp -m string --string "crashsight.qq.com" --algo bm -j DROP; 
 iptables -I INPUT -p tcp -m string --string "crashsight.qq.com" --algo bm -j DROP; 
 iptables -I OUTPUT -p tcp -m string --string "lobby.igamecj.com" --algo bm -j DROP; 
 iptables -I INPUT -p tcp -m string --string "lobby.igamecj.com" --algo bm -j DROP; 
 iptables -I OUTPUT -p tcp -m string --string "www.anonymous.com" --algo bm -j DROP; 
 iptables -I INPUT -p tcp -m string --string "www.anonymous.com" --algo bm -j DROP; 
 iptables -I OUTPUT -p tcp -m string --string "googlesource.com" --algo bm -j DROP; 
 iptables -I INPUT -p tcp -m string --string "googlesource.com" --algo bm -j DROP; 
 iptables -I OUTPUT -p tcp -m string --string "www.wetest.net" --algo bm -j DROP; 
 iptables -I INPUT -p tcp -m string --string "www.wetest.net" --algo bm -j DROP; 
 iptables -I OUTPUT -p tcp -m string --string "crashsight.com" --algo bm -j DROP; 
 iptables -I INPUT -p tcp -m string --string "crashsight.com" --algo bm -j DROP; 
 iptables -I OUTPUT -p tcp -m string --string "dl.listdl.com" --algo bm -j DROP; 
 iptables -I INPUT -p tcp -m string --string "dl.listdl.com" --algo bm -j DROP; 
 iptables -I OUTPUT -p tcp -m string --string "godaddy.com" --algo bm -j DROP; 
 iptables -I INPUT -p tcp -m string --string "godaddy.com" --algo bm -j DROP; 
 iptables -I OUTPUT -p tcp -m string --string "tencent.com" --algo bm -j DROP; 
 iptables -I INPUT -p tcp -m string --string "tencent.com" --algo bm -j DROP; 
 iptables -I OUTPUT -p tcp -m string --string "gcloud.com" --algo bm -j DROP; 
 iptables -I INPUT -p tcp -m string --string "gcloud.com" --algo bm -j DROP; 
 iptables -I OUTPUT -p tcp -m string --string "qq.com" --algo bm -j DROP; 
 iptables -I INPUT -p tcp -m string --string "qq.com" --algo bm -j DROP; 
 pm disable com.tencent.ig/com.sirius.flutter.im.MeemoBGService  &>/dev/null; 
 pm disable com.tencent.ig/com.tencent.midas.oversea.newnetwork.service.APNetDetectService  &>/dev/null; 
 pm disable com.tencent.ig/com.sirius.meemo.foreground_service.ForegroundService &>/dev/null; 

rm -rf /data/data/com.tencent.ig/files; 
touch /data/data/com.tencent.ig/files; 
 chmod -R 000 /data/data/com.tencent.ig/files;
rm -rf $lib/{libapp.so,libCrashSight.so,libc++_shared.so,libflutter.so,libgamemaster.so,libgcloudarch.so,libhelpshiftlistener.so,libigshare.so,libImSDK.so,libkk-image.so,liblbs.so,libmarsxlog.so,libmmkv.so,libnpps-jni.so,libsentry.so,libsentry-android.so,libsoundtouch.so,libst-engine.so,libtgpa.so};
chmod 755 $lib/*
rm -rf /data/media/0/Android/data/com.tencent.ig/files/TGPA
am start -S -W com.tencent.ig/com.epicgames.ue4.SplashActivity > /dev/null
while [ ! -e /data/media/0/Android/data/com.tencent.ig/files/TGPA ]; do sleep 1; done
sleep 1
RETURN libanogs.so
RETURN libgcloud.so
RETURN libTDataMaster.so
RETURN libPandoraVideo.so
RETURN libCrashSightCore.so
chmod 755 $lib/*
chmod 000 $lib/{libgcloud.so,libTDataMaster.so,libanogs.so,libUE4.so}

rm -rf /data/data/com.tencent.ig/app* 
 touch /data/data/com.tencent.ig/{app_bugly,app_crashrecord,app_crashSight}; 
 chmod 4000 /data/data/com.tencent.ig/{app_bugly,app_crashrecord,app_crashSight}; 

sleep 40
while true
do
echo ""
echo " "
echo "               ╔───────•───────╗ "
echo "              ┋     🔰KIRA ANTIBAN 🔰     ┋ "
echo "               ╚───────•───────╝ "
echo ""
echo "               ╔───────•───────╗ "
echo "              ┋    🔰CLEAN HISTORY🔰     ┋ "
echo "               ╚───────•───────╝ "
echo ""
echo "                                   "
echo ""
echo " "
echo "MY TELEGRAM CHANEL 《KIRA HACKS》"
echo ""
echo ""
rm -rf /data/cache/magisk.log
rm -rf /data/cache/magisk.log.bak
rm -rf /data/media/0/.backups
rm -rf /data/media/0/MidasOversea
rm -rf /data/media/0/tencent
rm -rf /data/media/0/QTAudioEngine
rm -rf /data/media/0/.profig.os
rm -rf /data/media/0/.system_config
rm -rf /data/media/0/.turing.dat
rm -rf /data/media/0/.userReturn
rm -rf /data/media/0/.com.taobao.dp
rm -rf /data/media/0/.UTSystemConfig
rm -rf /data/media/0/.turingdebug
rm -rf /data/media/0/.DataStorage
rm -rf /data/media/0/.appodeal
rm -rf /data/media/0/.config
rm -rf /data/media/0/Android/AndroidSystemProperties
rm -rf /data/media/0/Android/cache
rm -rf /data/media/0/Android/data/.nomedia
rm -rf /data/media/0/Android/data/.um
sleep 3
done

