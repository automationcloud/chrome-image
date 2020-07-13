## Bumping Chrome Version

1. Edit `install-chrome.sh` and specify `REVISION` variable.
2. `git tag cN`(i.e. use `c75` for Chrome 75).
3. `git push --tags automationcloud/chrome-image`
4. Upgrade the history of releases (below)

Please find below the resources which can be useful in figuring which revision number to use.

- Chrome Revision Numbers: http://omahaproxy.appspot.com/
- Version Numbers: https://www.chromium.org/developers/version-numbers
- Chromium Releases: https://commondatastorage.googleapis.com/chromium-browser-snapshots/index.html
- Current Chromium release:
    - 756066
    - 83.0.4103.0
    - https://commondatastorage.googleapis.com/chromium-browser-snapshots/index.html?prefix=Mac/756094/
    - https://commondatastorage.googleapis.com/chromium-browser-snapshots/index.html?prefix=Win_x64/756071/
    - https://commondatastorage.googleapis.com/chromium-browser-snapshots/index.html?prefix=Linux_x64/756066/
