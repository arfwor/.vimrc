# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
	PATH="$HOME/bin:$PATH"
fi

# dean@laptop:~$
export PS1="\u@\h:\w\$ "

export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_181.jdk/Contents/Home"
export GRADLE_HOME="/Users/dean/apps/gradle-4.9"
export MAVEN_HOME="/Users/dean/apps/apache-maven-3.5.4"
export ANT_HOME="/Users/dean/apps/apache-ant-1.10.5"
export NODE_HOME="/Users/dean/apps/node-v10.7.0"

PATH="$JAVA_HOME/bin:$GRADLE_HOME/bin:$MAVEN_HOME/bin:$ANT_HOME/bin:$NODE_HOME/bin:$PATH"
