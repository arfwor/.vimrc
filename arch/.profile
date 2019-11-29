# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
	PATH="$HOME/bin:$PATH"
fi

export JAVA_HOME="/usr/local/jdk1.8.0_181"
export GRADLE_HOME="/usr/local/gradle-4.10.2"
export MAVEN_HOME="/usr/local/apache-maven-3.6.0"
export ANT_HOME="/usr/local/apache-ant-1.10.5"
export NODE_HOME="/usr/local/node-v10.13.0"
export GOROOT="/usr/local/go"
export GOPATH="$HOME/projects/go"

PATH="$JAVA_HOME/bin:$GRADLE_HOME/bin:$MAVEN_HOME/bin:$ANT_HOME/bin:$NODE_HOME/bin:$GOROOT/bin:$PATH"
