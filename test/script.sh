set -e

xctool -project ScrollViewLinker.xcodeproj -scheme ScrollViewLinker -sdk iphonesimulator clean build test -freshInstall -freshSimulator

pod spec lint ScrollViewLinker.podspec
