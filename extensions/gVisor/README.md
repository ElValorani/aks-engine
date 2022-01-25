# gVisor Extension

Installs containerd-shim-runsc-v1 and runsc on every node in the cluster and configures runsc as a container runtime in the containerd configuration.

```

# Configuration
|Name|Required|Acceptable Value|
|---|---|---|
|name|yes|gVisor|
|version|yes|v1|
|extensionParameters|no||
|rootURL|optional||
|script|required|install.sh|

# Example
``` javascript
    "masterProfile": {
      ...
      "extensions": [
        {
          "name": "gVisor",
          "singleOrAll": "single"
        }
     ]
    },
    ...
    "extensionProfiles": [
      {
        "name": "gVisor",
        "version": "v1",
        "script": "install.sh"
      }
    ]


```

# Supported Orchestrators
All
