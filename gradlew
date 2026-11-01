#!/bin/sh
# Gradle wrapper script

# Determine the Java command to use to start the JVM.
if [ -n "$JAVA_HOME" ] ; then
    if [ -x "$JAVA_HOME/jre/sh/java" ] ; then
        JAVACMD="$JAVA_HOME/jre/sh/java"
    else
        JAVACMD="$JAVA_HOME/bin/java"
    fi
    if [ ! -x "$JAVACMD" ] ; then
        echo "ERROR: JAVA_HOME is set to an invalid directory: $JAVA_HOME"
        echo "Please set the JAVA_HOME variable in your environment to match the"
        echo "location of your Java installation."
        exit 1
    fi
else
    JAVACMD="java"
    which java >/dev/null 2>&1 || {
        echo "ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH."
        echo "Please set the JAVA_HOME variable in your environment to match the"
        echo "location of your Java installation."
        exit 1
    }
fi

# Determine the Gradle wrapper jar location
WRAPPER_JAR="gradle/wrapper/gradle-wrapper.jar"

# Download wrapper jar if not exists
if [ ! -f "$WRAPPER_JAR" ] ; then
    echo "Downloading Gradle wrapper..."
    WRAPPER_URL="https://repo.gradle.org/gradle/gradle-wrapper/gradle-wrapper-8.5.jar"
    if command -v curl >/dev/null 2>&1 ; then
        curl -L -o "$WRAPPER_JAR" "$WRAPPER_URL"
    elif command -v wget >/dev/null 2>&1 ; then
        wget -O "$WRAPPER_JAR" "$WRAPPER_URL"
    else
        echo "ERROR: Neither curl nor wget found. Cannot download Gradle wrapper."
        exit 1
    fi
fi

exec "$JAVACMD" -classpath "$WRAPPER_JAR" org.gradle.wrapper.GradleWrapperMain "$@"
