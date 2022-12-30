{ config, pkgs, ... }:

{
	# Home Manager needs a bit of information about you and the
	# paths it should manage.
	home.username = "ekorudiawan";
	home.homeDirectory = "/home/ekorudiawan";

	# Packages to install
	home.packages = [
		# pkgs is the set of all packages in the default home.nix implementation
		pkgs.neofetch
		pkgs.wget
		pkgs.curl
		pkgs.fish
		pkgs.git
		pkgs.tmux
		pkgs.neovim
		pkgs.bat
		pkgs.exa
		pkgs.lsd
		pkgs.delta
		pkgs.duf
		pkgs.broot
		pkgs.fd
		pkgs.ripgrep
		pkgs.fzf
		pkgs.mcfly
		pkgs.choose
		pkgs.jq
		pkgs.sd
		pkgs.cheat
		pkgs.tldr
		pkgs.bottom
		pkgs.glances
		pkgs.gtop
		pkgs.hyperfine
		pkgs.gping
		pkgs.procs
		pkgs.httpie
		pkgs.curlie
		pkgs.xh
		pkgs.zoxide
		pkgs.dog
		pkgs.nix-prefetch-github
	];

	programs.fish = {
		enable = true;
		shellInit =
		''
		'';
			shellAliases = {
				# rm = "rm -i";
				# cp = "cp -i";
				# mv = "mv -i";
				# mkdir = "mkdir -p";
				cat = "bat";
				ls = "exa";
				vim = "nvim";
				ping = "gping";
			};
		plugins = [
			{
				name = "nix-env";
				src = pkgs.fetchFromGitHub {
					owner = "lilyball";
					repo = "nix-env.fish";
					rev = "00c6cc762427efe08ac0bd0d1b1d12048d3ca727";
					sha256 = "1hrl22dd0aaszdanhvddvqz3aq40jp9zi2zn0v1hjnf7fx4bgpma";
				};
			}
			{
				name = "foreign-env";
				src = pkgs.fetchFromGitHub {
					owner = "oh-my-fish";
					repo = "plugin-foreign-env";
					rev = "dddd9213272a0ab848d474d0cbde12ad034e65bc";
					sha256 = "00xqlyl3lffc5l0viin1nyp819wf81fncqyz87jx8ljjdhilmgbs";
				};
			}
		];
			
	};

	# This value determines the Home Manager release that your
	# configuration is compatible with. This helps avoid breakage
	# when a new Home Manager release introduces backwards
	# incompatible changes.
	#
	# You can update Home Manager without changing this value. See
	# the Home Manager release notes for a list of state version
	# changes in each release.
	home.stateVersion = "22.11";

	# Let Home Manager install and manage itself.
	programs.home-manager.enable = true;
}
