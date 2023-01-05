require "uri"
require "json"
require "net/http"

url = URI("https://www.youtube.com/youtubei/v1/player?key=AIzaSyAO_FJ2SlqU8Q4STEHLGCilw_Y9_11qcW8")

https = Net::HTTP.new(url.host, url.port)
https.use_ssl = true

request = Net::HTTP::Post.new(url)
request["Content-Type"] = "application/json"
request.body = JSON.dump({
  "context": {
    "client": {
      "hl": "en",
      "gl": "BD",
      "remoteHost": "61.247.179.98",
      "deviceMake": "",
      "deviceModel": "",
      "visitorData": "CgtSSVp3b1FLZHhPOCiFtdiMBg%3D%3D",
      "userAgent": "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36,gzip(gfe)",
      "clientName": "WEB",
      "clientVersion": "2.20211117.01.00",
      "osName": "X11",
      "osVersion": "",
      "originalUrl": "https://www.youtube.com/watch?v=Da_Wc_G9ms4",
      "platform": "DESKTOP",
      "clientFormFactor": "UNKNOWN_FORM_FACTOR",
      "configInfo": {
        "appInstallData": "CIW12IwGEKrfrQUQkdetBRC3y60FELDUrQUQheKtBRCR-PwSENi-rQU%3D"
      },
      "timeZone": "Asia/Dhaka",
      "browserName": "Chrome",
      "browserVersion": "95.0.4638.69",
      "screenWidthPoints": 1848,
      "screenHeightPoints": 511,
      "screenPixelDensity": 1,
      "screenDensityFloat": 1,
      "utcOffsetMinutes": 360,
      "userInterfaceTheme": "USER_INTERFACE_THEME_LIGHT",
      "memoryTotalKbytes": "8000000",
      "clientScreen": "WATCH",
      "mainAppWebInfo": {
        "graftUrl": "/watch?v=Da_Wc_G9ms4",
        "webDisplayMode": "WEB_DISPLAY_MODE_BROWSER",
        "isWebNativeShareAvailable": false
      }
    },
    "user": {
      "lockedSafetyMode": false
    },
    "request": {
      "useSsl": true,
      "internalExperimentFlags": [],
      "consistencyTokenJars": []
    },
    "clickTracking": {
      "clickTrackingParams": "CLgCENwwIhMIuP_Iscqh9AIVSsmgAh1ApgyKMgpnLWhpZ2gtcmVjWg9GRXdoYXRfdG9fd2F0Y2iaAQYQjh4YngE="
    },
    "adSignalsInfo": {
      "params": [
        {
          "key": "dt",
          "value": "1637227141894"
        },
        {
          "key": "flash",
          "value": "0"
        },
        {
          "key": "frm",
          "value": "0"
        },
        {
          "key": "u_tz",
          "value": "360"
        },
        {
          "key": "u_his",
          "value": "3"
        },
        {
          "key": "u_h",
          "value": "1080"
        },
        {
          "key": "u_w",
          "value": "1920"
        },
        {
          "key": "u_ah",
          "value": "1053"
        },
        {
          "key": "u_aw",
          "value": "1848"
        },
        {
          "key": "u_cd",
          "value": "24"
        },
        {
          "key": "bc",
          "value": "31"
        },
        {
          "key": "bih",
          "value": "511"
        },
        {
          "key": "biw",
          "value": "1832"
        },
        {
          "key": "brdim",
          "value": "72,27,72,27,1848,27,1848,1053,1848,511"
        },
        {
          "key": "vis",
          "value": "1"
        },
        {
          "key": "wgl",
          "value": "true"
        },
        {
          "key": "ca_type",
          "value": "image"
        }
      ]
    }
  },
  "videoId": "Da_Wc_G9ms4",
  "playbackContext": {
    "contentPlaybackContext": {
      "currentUrl": "/watch?v=Da_Wc_G9ms4",
      "vis": 0,
      "splay": false,
      "autoCaptionsDefaultOn": false,
      "autonavState": "STATE_OFF",
      "html5Preference": "HTML5_PREF_WANTS",
      "signatureTimestamp": 18948,
      "referer": "https://www.youtube.com/",
      "lactMilliseconds": "-1"
    }
  },
  "racyCheckOk": false,
  "contentCheckOk": false
})

response = https.request(request)
_res = JSON.parse(response.read_body)
p _res['streamingData']['formats']
