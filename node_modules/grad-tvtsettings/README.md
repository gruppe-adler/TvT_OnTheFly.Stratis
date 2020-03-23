# grad-tvtsettings
CBA settings for Gruppe Adler TvT missions.

## Installation
In your mission's `description.ext` add the following flag:

```
cba_settings_hasSettingsFile = 1;
```

In your mission's root directory create the file `cba_settings.sqf` and add the following line to it:

```
#include "node_modules\grad-tvtsettings\cba_settings.sqf"
```

Adjust accordingly, if you are not using the default npm folder path.


### Variant 1: npm

Highly recommended: `>= npm-3.x`, which comes with NodeJS 6.x. Don't use older versions!

`npm install grad-tvtsettings --save`

For updating, change the desired version number in your mission's `package.json`, and do `npm install`

### Variant 2: manually

Alternatively, you can install `grad-tvtsettings` manually.

* download `grad-tvtsettings` as a zipfile from github, and put the directories into a `node_modules` directories, so that you get:

```
myMission.altis/node_modules/grad-tvtsettings
```
