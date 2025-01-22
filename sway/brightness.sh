send_notif(){
  brightness=$(light -G | cut -d "." -f1)
  if [[ $brightness -ge 60 ]]; then
    dunstify -a "changebrigthness" -u low -r 9994 -h int:value:"$brightness" -i "display-brightness-high-symbolic" "Brightness: ${brightness}%" -t 3000
  elif [[ $brightness -le 59 && $brightness -ge 40 ]]; then
    dunstify -a "changebrigthness" -u low -r 9994 -h int:value:"$brightness" -i "display-brightness-medium-symbolic" "Brightness: ${brightness}%" -t 3000
  else
    dunstify -a "changebrigthness" -u low -r 9994 -h int:value:"$brightness" -i "display-brightness-low-symbolic" "Brightness: ${brightness}%" -t 3000
  fi
}

case $1 in 
up)
  brightnessctl set +2%
  send_notif
;;
down)
  brightnessctl set 2%-
  send_notif
;;
esac
