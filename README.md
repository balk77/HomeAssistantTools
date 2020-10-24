# HomeAssistantTools
Set of tools to manage [dockerized](https://hub.docker.com/r/homeassistant/home-assistant) [Home Assistant](https://www.home-assistant.io/) and [dockerized](https://hub.docker.com/r/acockburn/appdaemon) [Appdaemon](https://appdaemon.readthedocs.io/en/latest/)

## .docker files
The two .docker files contain the definition of my Appdaemon and Home Assistant docker instances

## Sripts
Make all .sh files executable with `chmod +x *.sh`

### Home Assistant
- [restarthass.sh](restarthass.sh): (re)starts Home Assistant
- [log.sh](log.sh): Opens logging for Home Assistant
- [stophass.sh](stophass.sh): stops Home Assistant
- [upgrade_hass.sh](upgrade_hass.sh): Updates Home Assistant to the latest version. Only restarts Home Assistant when there is a newer version available

### Appdaemon
Note that the exact version of AppDaemon to be used is specified in the `.docker` file. The `latest` tag @ hub.docker.com does not seem to point to the latest version.
- [appdaemon_restart.sh](appdaemon_restart.sh): (re)starts AppDaemon
- [appdaemon_log.sh](appdaemon_log.sh): Opens logging for AppDaemon
- [upgrade_appdaemon.sh](upgrade_appdaemon.sh): Updates Appdaemon to version 4.0.5. 
