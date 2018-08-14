#!/bin/bash

xcodebuild -scheme LoanCalc -destination 'platform=iOS Simulator,name=iPhone 8 Plus,OS=11.4' test-without-building $*
