set -e

xctool -project ScrollViewLinker.xcodeproj -scheme ScrollViewLinker -sdk iphonesimulator clean build test

pod spec lint ScrollViewLinker.podspec
