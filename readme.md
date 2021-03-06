# new approach

This repo is superseded by [the bare repo approach followed in tilde repo](https://github.com/zigotica/tilde). This stays here just in case you want something "simpler", but I will not be updating it.

# dotfiles

I finally ordered my dotfiles a bit, making each file a bit smaller, moving to a config folder, etc. 

Here's the current approach. `.bashr` just sources the profile:

```.bashrc
[ -n "$PS1" ] && source ~/.bash_profile;
```

In turn, `.bash_profile` loops through the dotfiles placed in `~/.config/.dotfiles` and source each of them:

```.bash_profile
# Load the shell dotfiles:
for file in ~/.config/.dotfiles/.{exports,functions,aliases,profile,path,prompt}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
```
