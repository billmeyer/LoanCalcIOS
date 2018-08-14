#!/bin/bash

APPNAME="LoanCalc"
SRCDIR=$(find ~/Library/Developer/Xcode/DerivedData/ -name "${APPNAME}*" -maxdepth 1 -type d)

#$HOME/Library/Developer/Xcode/DerivedData/LoanCalc-exlwvtchhmuvfcdaluekjovwqlmg/Build/Products/Debug-iphoneos/LoanCalc.app
#$HOME/Library/Developer/Xcode/DerivedData/LoanCalc-exlwvtchhmuvfcdaluekjovwqlmg/Build/Products/Debug-iphoneos/LoanCalcUITests-Runner.app

echo $SRCDIR

echo "Bundling app..."
rm -rf Payload 2> /dev/null
rsync -av --delete ${SRCDIR}/Build/Products/Debug-iphoneos/${APPNAME}.app Payload/
zip -r ${APPNAME}.ipa Payload/

echo "Bundling runner..."
rm -rf Payload 2> /dev/null
rsync -av --delete ${SRCDIR}/Build/Products/Debug-iphoneos/${APPNAME}UITests-Runner.app Payload/
zip -r ${APPNAME}UITests-Runner.ipa Payload/
