# Purpose: Add and enable common programming tools like zsh, and vim etc.

{ config, pkgs, ... }:

{
  home.packages = with pkgs;[

  ];

  ### Zsh ###
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    history = {
      size = 10000;
      path = "${config.xdg.dataHome}/zsh/history";
    };
  }; 

  ### Neovim ###
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    vimAlias = true;
    viAlias = true;
  };
}