# Ash profile 
# vim: syntax=sh

export QTDIR=/usr/local/qt
export TSLIBDIR=/usr/local/tslib
export PATH=$QTDIR/bin:$TSLIBDIR/bin:$PATH
export LD_LIBRARY_PATH=$QTDIR/lib:$TSLIBDIR/lib:$LD_LIBRARY_PATH
export TSLIB_FBDEVICE=/dev/fb0
#触摸屏设备节点
export TSLIB_TSDEVICE=/dev/event1

export TSLIB_CONFFILE=/usr/local/tslib/etc/ts.conf
export TSLIB_PLUGINDIR=/usr/local/tslib/lib/ts
export TSLIB_CALIBFILE=/etc/pointercal
export TSLIB_CONSOLEDEVICE=none
#同时支持触摸屏(/dev/event1)和USB鼠标(/dev/mouse2,不是/dev/event3,具体可以通过cat /proc/bus/input/devices查看对应关系)
#export QWS_MOUSE_PROTO="Tslib:/dev/event1 Intellimouse:/dev/mouse2"

export QWS_MOUSE_PROTO="Tslib:/dev/event1"

#屏幕大小
export QWS_SIZE=800X480

#按键支持(包括板卡ＧＰＩＯ按键和ＵＳＢ标准键盘,必须遵循input子系统)
#export QWS_KEYBOARD="TTY:/dev/event4 TTY:/dev/event5"
export QWS_KEYBOARD="TTY:/dev/event3"

#(qt4.5.2)
#export QWS_KEYBOARD=USB:/dev/event5

#字库
export QT_QWS_FONTDIR=$QTDIR/lib/fonts

#字体显示有关系
export QWS_DISPLAY="LinuxFB:mmWidth180:0"

