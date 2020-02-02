# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
	PATH="$HOME/bin:$PATH"
fi

# dean@laptop:~$
#export PS1="\u@\h:\w\$ "

#export JAVA_HOME="/Library/Java/JavaVirtualMachines/openjdk-13.0.1.jdk/Contents/Home"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_181.jdk/Contents/Home"
#export JAVA_HOME="/usr/local/jdk1.8.0_181"
export GRADLE_HOME="/usr/local/Cellar/gradle/6.0.1/libexec"
export M2_HOME="/usr/local/Cellar/maven/3.6.3/libexec"
export ANT_HOME="/usr/local/Cellar/ant/1.10.7/libexec"
export NODE_HOME="/usr/local/Cellar/node/13.7.0"
export GOROOT="/usr/local/Cellar/go/1.13.4/libexec"
export GOPATH="$HOME/projects/gospace"
export GO111MODULE="on"
export GOPROXY="https://goproxy.io"
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.ustc.edu.cn/homebrew-bottles"

#PATH="$JAVA_HOME/bin:$GRADLE_HOME/bin:$M2_HOME/bin:$ANT_HOME/bin:$NODE_HOME/bin:$GOROOT/bin:$PATH"
