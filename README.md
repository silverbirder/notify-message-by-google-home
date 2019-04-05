# simple-google-home-notifier

```
$ docker run -e MESSAGE="hello world" -e IP_ADDRESS="192.168.3.17" silverbirder/simple-google-home-notifier:1.0.0
```

## example
・Notify me to go to bed at 24 o'clock with crontab.
```
$ crontab -l
50 23 * * * /usr/local/bin/docker run -e MESSAGE="そろそろ寝る時間ですよ" -e IP_ADDRESS="192.168.3.17" silverbirder/simple-google-home-notifier:1.0.0 &>/dev/null

*/5 0 * * * /usr/local/bin/docker run -e MESSAGE="早く寝なさい" -e IP_ADDRESS="192.168.3.17" silverbirder/simple-google-home-notifier:1.0.0 &>/dev/null
```

## Note
・Google-Home and Machine (Raspberry Pi, Mac) are the same network.  
・Click [here](https://support.google.com/googlehome/forum/AAAAXWcshA0CT7tDwf_e0Y/?hl=en&msgid=Lt1c29rNAgAJ&gpf=d/msg/googlehome/CT7tDwf_e0Y/Lt1c29rNAgAJ) to find out the IP address of Google-Home
