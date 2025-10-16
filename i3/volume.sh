#! /bin/bash
send_notif(){
volume=$(pactl get-sink-volume @DEFAULT_SINK@ | sed 's/.*://' | sed '$d'| cut -d "/" -f2 | cut -d "%" -f1)
mute="$(pactl get-sink-mute @DEFAULT_SINK@ | cut -d " " -f2)"
isMute="no"
echo $volume
  if [[ "$mute" == "$isMute" ]]; then
      if [[ $volume -ge 70 ]] ; then
        dunstify -a "changevolume" -u normal -r 9993 -h int:value:"$volume" -i "audio-volume-high-symbolic" "Volume: ${volume}%" -t 3000
      elif [[ $volume -le 40 ]] ; then
        dunstify -a "changevolume" -u normal -r 9993 -h int:value:"$volume" -i "audio-volume-medium-symbolic" "Volume: ${volume}%" -t 3000
      else
          dunstify -a "changevolume" -u normal -r 9993 -h int:value:"$volume" -i "audio-volume-low-symbolic" "Volume: ${volume}%" -t 3000
     
      fi
  else
    dunstify -a "changevolume" -u normal -r 9993 -h int:value:"$volume" -i "audio-volume-muted-symbolic" "Muted: ${volume}%" -t 3000
      
  fi    
    
}

case $1 in 
up)
	pactl set-sink-volume @DEFAULT_SINK@ +10%

  send_notif 
  ;;
down)
	pactl set-sink-volume @DEFAULT_SINK@ -10%
  
  send_notif
  ;;
mute)
	pactl set-sink-mute @DEFAULT_SINK@ toggle 
  send_notif
  ;;
esac
  
