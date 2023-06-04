if status is-interactive
    # Commands to run in interactive sessions can go here
    set PATH /opt/flutter/bin $PATH
	set  XDG_CONFIG_HOME $HOME/.config
    set PATH /home/orion90/.local/bin/ $PATH
    #set PATH /opt/dart-sdk/bin $PATH    
    set PATH /opt/jdtls/bin $PATH
    set JAVA_HOME /usr/lib/jvm/jdk1.8.0_371
    set PATH /usr/local/bin $PATH 
    set ANDROID_HOME $HOME/Android/Sdk
    set PATH $ANDROID_HOME/platform-tools $PATH
    set PATH $ANDROID_HOME/emulator $PATH
    set CHROME_EXECUTABLE $HOME/.local/bin/google-chrome
    set PATH $HOME/.config/composer/vendor/bin $PATH    
    set PATH $HOME/.symfony5/bin $PATH
    set PATH /usr/bin/ $PATH
    alias cl="clear"
    alias update="yay -Syyuu"
    alias cl-disk="yay -Scc"
end
