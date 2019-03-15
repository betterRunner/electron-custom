#!/bin/bash

cd ~/code/demo/electron/electron-gn/src/
ninja -C out/Release electron
strip out/Release/electron
cd out/Release
rm dist.zip
ninja electron:electron_dist_zip
cp dist.zip ~/.cache/electron/electron-v4.0.0-linux-x64.zip

