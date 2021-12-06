# hello-world Extension

Sample hello-world extension.  Calls the following on the node:

```
 echo "hello"
```

You can validate that the extension was run by running (make sure you have tunneled into the master):
```
ls -l /var/log
```

# Configuration
|Name|Required|Acceptable Value|
|---|---|---|
|name|yes|hello-world|
|version|yes|v1|
|extensionParameters|no||
|rootURL|optional||
|script|required|hello.sh|

# Example
``` javascript
    "masterProfile": {
      ...
      "extensions": [
        {
          "name": "kata-kubectl",
          "singleOrAll": "single"
        }
     ]
    },
    ...
    "extensionProfiles": [
      {
        "name": "kata-kubectl",
        "version": "v1",
        "script": "install.sh"
      }
    ]


```

# Supported Orchestrators
All
