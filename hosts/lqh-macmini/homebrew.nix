{ config, pkgs, ... }:
{
  homebrew = {
    enable = true;
    onActivation = {
      autoUpdate = true;
      upgrade = true;
      cleanup = "zap";
    };
    brews = [
      { name = "openjdk@21"; }
      { name = "FelixKratz/formulae/borders"; restart_service = "changed"; }
      { name = "liqiha0/versions/ta-lib@0.4"; }
      { name = "duti"; }
      { name = "screenpipe"; }
      { name = "tw93/tap/mole"; }
    ];
    greedyCasks = true;
    casks = [
      { name = "zulu@8"; }
      { name = "zulu@11"; }
      { name = "graalvm-jdk@25"; }
      { name = "android-platform-tools"; }
      { name = "android-commandlinetools"; }

      { name = "vivaldi"; }
      { name = "zen"; }
      { name = "contexts"; }
      { name = "jetbrains-toolbox"; }
      { name = "istat-menus"; }
      { name = "orbstack"; }
      # { name = "PlayCover/playcover/playcover-community"; }
      # { name = "PlayCover/playcover/sideloadly"; }
      { name = "altserver"; }
      { name = "parsec"; }
      { name = "obsidian"; }
      { name = "zed"; }
      { name = "visual-studio-code"; }
      { name = "windsurf"; }
      { name = "antigravity"; }
      { name = "appcleaner"; }
      { name = "utm"; }
      { name = "iina"; }
      { name = "godot"; }
      { name = "telegram"; }
      { name = "switchhosts"; }
      { name = "chatgpt"; }
      { name = "jordanbaird-ice"; }
      { name = "prismlauncher"; }
      { name = "stability-matrix"; }
      { name = "steam"; }
      { name = "sony-ps-remote-play"; }
      { name = "clash-party"; }
      { name = "google-chrome"; }
      { name = "ubersicht"; }
      { name = "mythic"; }
      { name = "moonlight"; }
      { name = "balenaetcher"; }
      { name = "squirrel-app"; }

      { name = "hbuilderx"; }
      { name = "wechatwebdevtools"; }
      { name = "vnc-viewer"; }
      { name = "apifox"; }
    ];
  };
}

