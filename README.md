## Bumping Chrome Version

1. Edit `install-chrome.sh` and specify `REVISION` variable.
2. `git tag <TAG>`(i.e. use `75` for Chrome 75).
3. `git push --tags origin`
4. Upgrade the history of releases (below)

Please find below the resources which can be useful in figuring which revision number to use.

- Chrome Revision Numbers: http://omahaproxy.appspot.com/
- Version Numbers: https://www.chromium.org/developers/version-numbers
- Chromium Releases: https://commondatastorage.googleapis.com/chromium-browser-snapshots/index.html
- Current Chromium release:
    - 961656
    - 98.0.4758.81
    - https://commondatastorage.googleapis.com/chromium-browser-snapshots/index.html?prefix=Mac/961656/
    - https://commondatastorage.googleapis.com/chromium-browser-snapshots/index.html?prefix=Win_x64/961656/
    - https://commondatastorage.googleapis.com/chromium-browser-snapshots/index.html?prefix=Linux_x64/961656/
