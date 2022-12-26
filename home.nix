{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "administrator";
  home.homeDirectory = "/home/administrator";

  # Packages to install
  home.packages = [
    # pkgs is the set of all packages in the default home.nix implementation
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
  ];

  programs.fish.enable = true;

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
