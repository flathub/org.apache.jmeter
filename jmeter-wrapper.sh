#!/bin/sh

JRE_HOME="/app/jre"
JAVA_HOME="$JRE_HOME"
export JAVA_HOME
export JRE_HOME

# Workarround for Flatpak <1.13
XDG_STATE_HOME=${XDG_STATE_HOME:-$XDG_CONFIG_HOME/../.local/state}

JMETER_CONFIG="${XDG_CONFIG_HOME}/jmeter/user.properties"
JMETER_CLASSPATH="${XDG_DATA_HOME}/jmeter/lib"
JMETER_LIBEXT="${JMETER_CLASSPATH}/ext"
JMETER_LOGFILE="${XDG_STATE_HOME}/jmeter/jmeter.log"
JMETER_BACKUPS="${XDG_STATE_HOME}/jmeter/backups"

mkdir -p "$JMETER_CLASSPATH" "$JMETER_LIBEXT" \
  "${XDG_CONFIG_HOME}/jmeter" \
  "${XDG_STATE_HOME}/jmeter"

[ -e "$JMETER_CONFIG" ] || cp /app/bin/user.properties "$JMETER_CONFIG"

# Force help.local=true since browser integration is not working
# https://github.com/flathub/org.freedesktop.Sdk.Extension.openjdk17/issues/1

exec /app/bin/jmeter \
  -J "help.local=true" \
  -J "search_paths=${JMETER_LIBEXT}" \
  -J "user.classpath=${JMETER_CLASSPATH}" \
  -J "jmeter.gui.action.save.backup_directory=${JMETER_BACKUPS}" \
  -j "${JMETER_LOGFILE}" \
  -p "${JMETER_CONFIG}" \
  $@
