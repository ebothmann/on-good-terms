zsh=$(HOME)/.oh-my-zsh
zshCustom=$(zsh)/custom
customThemes=$(zshCustom)/themes

# Set default theme
installtheme: installtheme-pure

.PHONY: installtheme-eno
installtheme-eno:
	cp eno.zsh-theme $(customThemes)/eno.zsh-theme

.PHONY: installtheme-pure
installtheme-pure:
	cp pure.zsh-theme $(customThemes)/pure.zsh-theme

.PHONY: installrc-osx
installrc-osx: installrc
	cp .zshrc.osx $(HOME)/.zshrc.platform
	cp .zshrc.osx.plugins $(HOME)/.zshrc.platform.plugins

.PHONY: installrc-gnulinux
installrc-gnulinux: installrc
	cp .zshrc.gnulinux $(HOME)/.zshrc.platform
	cp .zshrc.gnulinux.plugins $(HOME)/.zshrc.platform.plugins

.PHONY: installrc
installrc:
	cp .zshrc $(HOME)/.zshrc