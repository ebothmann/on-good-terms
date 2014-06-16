zsh=$(HOME)/.oh-my-zsh
zshCustom=$(zsh)/custom
customThemes=$(zshCustom)/themes

.PHONY: installtheme
installtheme-eno:
	cp eno.zsh-theme $(customThemes)/eno.zsh-theme

installtheme-pure:
	cp pure.zsh-theme $(customThemes)/eno.zsh-theme
