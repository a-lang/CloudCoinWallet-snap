#!/bin/sh

THEME=${1:-Blue}
export JAVA_TOOL_OPTIONS="-Duser.language=en-US -Dfile.encoding=UTF-8 -Dsun.jnu.encoding=UTF-8"
java -jar $SNAP/cc_wallet/CloudCoinWallet${THEME}_${APP_VER}.jar
