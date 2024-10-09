# Initialize completion
autoload -Uz compinit && compinit -i
zstyle ':completion:*' menu select=4
zmodload zsh/complist
# Use vim style navigation keys in menu completion
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

# Initialize editing command line
autoload -U edit-command-line && zle -N edit-command-line

# Enable interactive comments (# on the command line)
setopt interactivecomments

# Nicer history
HISTSIZE=1048576
HISTFILE="$HOME/.zsh_history"
SAVEHIST=$HISTSIZE
setopt appendhistory
setopt incappendhistory
setopt extendedhistory

# Time to wait for additional characters in a sequence
KEYTIMEOUT=1 # corresponds to 10ms

# Use vim as the editor
export EDITOR=vim

# Use vim style line editing in zsh
bindkey -v
# Movement
bindkey -a 'gg' beginning-of-buffer-or-history
bindkey -a 'G' end-of-buffer-or-history
# Undo
bindkey -a 'u' undo
bindkey -a '^R' redo
# Edit line
bindkey -a '^V' edit-command-line
# Backspace
bindkey '^?' backward-delete-char
bindkey '^H' backward-delete-char

# Use incremental search
bindkey "^R" history-incremental-search-backward

# Disable shell builtins
disable r

#  Colors
export LS_COLORS="di=01;37:ln=1;37:ow=01;36:*.sh=00;32:*.tar=01;31:*.tgz=01;31:*.zip=01;31:*.gz=01;31:*.bz2=01;31:*.jpg=01;35:*.gif=01;35:*.png=01;35:*.hl=00;33:*.ow=01;36:*.md=00;33:*.txt=00;33:*.html=00;33:*.htm=00;33:*.php=00;35:*.py=00;35:*.js=00;35:*.css=00;35:*.c=00;35:*.cpp=00;35:*.h=00;35:*.hpp=00;35:*.ts=00;35:*.json=00;35:*.xml=00;35:*.yml=00;35:*.yaml=00;35:*.conf=00;33:*.ini=00;33:*.log=00;33:*.bak=00;33:*.old=00;33:*.orig=00;33:*.swp=00;33:*.swo=00;33:*.tmp=00;33:*.pid=00;33:*.db=00;33:*.sqlite=00;33:*.sql=00;33:*.csv=00;33:*.xlsx=00;33:*.xls=00;33:*.doc=00;33:*.docx=00;33:*.pdf=00;33:*.odt=00;33:*.ods=00;33:*.odp=00;33:*.ppt=00;33:*.pptx=00;33:*.mp3=00;36:*.mp4=00;36:*.avi=00;36:*.mkv=00;36:*.flac=00;36:*.wav=00;36:*.ogg=00;36:*.m4a=00;36:*.aac=00;36:*.wma=00;36:*.mpc=00;36:*.mpeg=00;36:*.mpg=00;36:*.mov=00;36:*.flv=00;36:*.webm=00;36:*.wmv=00;36:*.3gp=00;36:*.m4v=00;36:*.ogv=00;36:*.ogm=00;36:*.vob=00;36:*.iso=00;36:*.bin=00;36:*.nrg=00;36:*.qcow=00;36:*.sparseimage=00;36:*.toast=00;36:*.vcd=00;36:*.dmg=00;36:*.img=00;36:*.exe=01;31:*.dll=01;31:*.so=01;31:*.o=00;31:*.a=00;31:*.lib=00;31:*.ko=00;31:*.obj=00;31:*.pyc=00;31:*.pyo=00;31:*.egg=00;31:*.jar=00;31:*.war=00;31:*.ear=00;31:*.rar=01;31:*.7z=01;31:*.deb=01;31:*.rpm=01;31:*.xz=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.tbz2=01;31:*.tgz=01;31:*.lzma=01;31:*.lzh=01;31:*.lzx=01;31:*.zip=01;31:*.cab=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lz=01;31:*.tlz=01;31:*.txz=01;31:*.t7z=01;31:*.par=01;31:*.asc=00;33:*.md5=00;33:*.sha1=00;33:*.sha256=00;33:*.sha512=00;33:*.gpg=00;33:*.sig=00;33:*.sign=00;33:*.KEY=00;33:*.pem=00;33:*.crt=00;33:*.csr=00;33:*.pub=00;33:*.asc=00;33:*.gpg=00;33:*.p12=00;33:*.pfx=00;33:*.p7b=00;33:*.p7c=00;33:*.cer=00;33:*.der=00;33:*.jks=00;33:*.keystore=00;33:*.truststore=00;33:*.jceks=00;33:*.cacerts=00;33:*.crl=00;33:*.srl=00;33:*.stl=00;33:*.gcode=00;33:*.blend=00;33:*.xcf=00;33:*.scad=00;33:*.3ds=00;33:*.max=00;33:*.dwg=00;33:*.stp=00;33:*.step=00;33:*.igs=00;33:*.iges=00;33:*.sat=00;33:*.sldprt=00;33:*.sldasm=00;33:*.slddrw=00;33:*.dxf=00;33:*.stl=00;33:*.wrl=00;33:*.x3d=00;33:*.fbx=00;33:*.ma=00;33:*.mb=00;33:*.3dm=00;33:*.eps=00;33:*.ai=00;33:*.sketch=00;33:*.afdesign=00;33:*.aia=00;33:*.apk=00;33:*.xpi=00;33:*.crx=00;33:*.xpi=00;33:*.safariextz=00;33:*.msi=00;33:*.appx=00;33:*.appxbundle=00;33:*.msix=00;33:*.msixbundle=00;33:*.ipa=00;33:*.xap=00;33:*.appx=00;33:*.appxupload=00;33:*.appxsym=00;33:*.msix=00;33:*.msixupload=00;33:*.msixsym=00;33:*.dmg=00;33:*.pkg=00;33:*.mpkg=00;33:*.app=00;33:*.apk=00;33:*.xapk=00;33:*.obb=00;33:*.dex=00;33:*.so=00;33:*.a=00;33:*.o=00;33:*.class=00;33:*.jar=00;33:*.war=00;33:*.ear=00;33:*.aar=00;33:*.dex=00;33:*.apk=00;33:*.xapk=00;33:*.ipa=00;33:*.exe=00;33:*.msi=00;33:*.msix=00;33:*.appx=00;33:*.dmg=00;33:*.pkg=00;33:*.deb=00;33:*.rpm=00;33:*.tar.gz=00;33:*.tar.bz2=00;33:*.tar.xz=00;33:*.tar.zst=00;33:*.zip=00;33:*.7z=00;33:*.rar=00;33:*.iso=00;33:*.img=00;33:*.vdi=00;33:*.vhd=00;33:*.vmdk=00;33:*.qcow2=00;33:*.qed=00;33:*.vdi=00;33:*.vhd=00;33:*.vmdk=00;33:*.qcow2=00;33:*.qed=00;33:*.vdi=00;33:*.vhd=00;33:*.vmdk=00;33:*.qcow2=00;33:*.qed=00;33:*.vdi=00;33:*.vhd=00;33:*.vmdk=00;33:*.qcow2=00;33:*.qed=00;33:*.vdi=00;33:*.vhd=00;33:*.vmdk=00;33:*.qcow2=00;33:*.qed=00;33:*.vdi=00;33:*.vhd=00;33:*.vmdk=00;33:*.qcow2=00;33:*.qed=00;33:*.vdi=00;33:*.vhd=00;33:*.vmdk=00;33:*.qcow2=00;33:*.qed=00;33:*.vdi=00;33:*.vhd=00;33:*.vmdk=00;33:*.qcow2=00;33:*.qed=00;33:*.vdi=00;33:*.vhd=00;33:*.vmdk=00;33:*.qcow2=00;33:*.qed=00;33:*.vdi=00;33:*.vhd=00;33:*.vmdk=00;33:*.qcow2=00;33:*.qed=00;33:*.vdi=00;33:*.vhd=00;33:*.vmdk=00;33:*.qcow2=00;33:*.qed=00;33:*.vdi=00;33:*.vhd=00;33:*.vmdk=00;33:*.qcow2=00;33:*.qed=00;33:*.vdi=00;33:*.vhd=00;33:*.vmdk=00;33:*.qcow2=00;33:*.qed=00;33:*.vdi=00;33:*.vhd=00;33:*.vmdk=00;33:*.qcow2=00;33:*.qed=00;33:*.vdi=00;33:*.vhd=00;33:*.vmdk=00;33:*.qcow2=00;33:*.qed=00;33:*.vdi=00;33:*.vhd=00;33:*.vmdk=00;33:*.qcow2=00;33:*.qed=00;33:*.vdi=00;33:*.vhd=00;33:*.vmdk=00;33:*.qcow2=00;33:*.qed=00;33:*.vdi=00;33:*.vhd=00;33:*.vmdk=00;33:*.qcow2=00;33:*.qed=00;33:*.vdi=00;33:*.vhd=00;33:*.vmdk=00;33:*.qcow2=00;33:*.qed=00;33:*.vdi=00;33:*.vhd=00;33:*.vmdk=00;33:*.qcow2=00;33:*.qed=00;33:*.vdi=00;33:*.vhd=00;33:*.vmdk=00;33:*.qcow2=00;33:*.qed=00;33:*.vdi=00;33:*.vhd=00;33:*.vmdk=00;33:*.qcow2=00;33:*.qed=00;33:*.vdi=00;33:*.vhd=00;33:*.vmdk=00;33:*.qcow2=00;33:*.qed=00;33:*.vdi=00;33:*.vhd=00;33:*.vmdk=00;33:*.qcow2=00;33:*.qed=00;33:*.vdi=00;33:*.vhd=00;33:*.vmdk=00;33:*.qcow2=00;33:*.qed=00;33:*.vdi=00;33:*.vhd=00;33:*.vmdk=00;33:*.qcow2=00;33:*.qed=00;33:*.vdi=00;33:*.vhd=00;33:*.vmdk=00;33:*.qcow2=00;33:*.qed=00;33:*.vdi=00;33:*.vhd=00;33:*.vmdk=00;33:*.qcow2=00;33:*.qed=00;33:*.vdi=00;33:*.vhd=00;33:*.vmdk=00;33:*.qcow2=00;33:*.qed=00;33:*.vdi=00;33:*.vhd=00;33:*.vmdk=00;33:*.qcow2=00;33:*.qed=00;33:*.vdi=00;33:*.vhd=00;33:*.vmdk=00;33:*.qcow2=00;33:*.qed=00;33:*.vdi=00;33:*.vhd=00;33:*.vmdk=00;33:*.qcow2=00;33:*.qed=00;33:*.vdi=00;33:*.vhd=00;33:*.vmdk=00;33:*.qcow2=00;33:*.qed=00;33:*.vdi=00;33:*.vhd=00;33:*.vmdk=00;33:*.qcow2=00;33:*.qed=00;33:*.vdi=00;33:*.vhd=00;33:*.vmdk=00;33:*.qcow2=00;33:*.qed=00;33:*.vdi=00;33:*.vhd=00;33:*.vmdk=00;33:*.qcow2=00;33:*.qed=00;33:*.vdi=00;33:*.vhd=00;33:*.vmdk=00;33:*.qcow2=00;33:*.qed=00;33:*.vdi=00;33:*.vhd=00;33:*.vmdk=00;33:*.qcow2=00;33:*.qed=00;33:*.vdi=00;33:*.vhd=00;33:*.vmdk=00;33:*.qcow2=00;33:*.qed=00;33:*.vdi=00;33:*.vhd=00;33:*.vmdk=00;33:*.qcow2=00;33:*.qed=00;33:*.vdi=00;33:*.vhd=00;33:*.vmdk=00;33:*.qcow2=00;33:*.qed=00;33:*.vdi=00;33:*.vhd=00;33:*.vmdk=00;33:*.qcow2=00;33:*.qed=00;33:*.vdi=00;33:*.vhd=00;33:*.vmdk=00;33:*.qcow2=00;33:*.qed=00;33:*.vdi=00;33:*.vhd=00;33:*.vmdk=00;33:*.qcow2=00;33:*.qed=00;33:*.vdi=00;33:*.vhd=00;33:*.vmdk=00;33:*.qcow2=00;33:*.qed=00;33:*.vdi=00;33:*.vhd=00;33:*.vmdk=00;33:*.qcow2=00;33:*.qed=00;33:*.vdi=00;33:*.vhd=00;33:*.vmdk=00;33:*.qcow2=00;33:*.qed=00;33:*.vdi=00;33:*.vhd=00;33:*.vmdk=00;33:*.qcow2=00;33:*.qed=00;33:*.vdi="  
