{ config, pkgs, ... }:
{
  homebrew = {
    enable = true;
    onActivation = {
      autoUpdate = true;
      upgrade = true;
      cleanup = "zap";
    };
    taps = [
      { name = "PlayCover/playcover"; }
      { name = "FelixKratz/formulae"; }
      { name = "tw93/tap"; }
    ];
    brews = [
      { name = "openjdk@21"; }
      { name = "borders"; restart_service = "changed"; }
      { name = "liqiha0/versions/ta-lib@0.4"; }
      { name = "duti"; }
    ];
    greedyCasks = true;
    casks = [
      { name = "zulu@8"; }
      { name = "zulu@11"; }
      { name = "graalvm-jdk@21"; }
      { name = "android-platform-tools"; }
      { name = "android-commandlinetools"; }

      { name = "vivaldi"; }
      { name = "zen"; }
      { name = "contexts"; }
      { name = "jetbrains-toolbox"; }
      { name = "istat-menus"; }
      { name = "orbstack"; }
      { name = "playcover-community"; }
      { name = "sideloadly"; }
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
      { name = "trae"; }
      { name = "switchhosts"; }
      { name = "chatgpt"; }
      { name = "jordanbaird-ice"; }
      { name = "sourcetree"; }
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
      { name = "proxyman"; }
      { name = "vnc-viewer"; }
    ];
  };
}

