zsh=$(HOME)/.oh-my-zsh
zshCustom=$(zsh)/custom
customThemes=$(zshCustom)/themes

.PHONY: installtheme
installtheme:
	cp eno.zsh-theme $(customThemes)/eno.zsh-theme