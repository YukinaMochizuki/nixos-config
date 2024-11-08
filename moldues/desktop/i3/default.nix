{lib, config, options, pkgs, ...}:

{
  ### Window & Display Manager ###
  # Use ly as the display manager
  services.displayManager.ly.enable = true;

  services.xserver = {
    enable = true;
    windowManager.i3 = {
      enable = true;
      extraPackages = with pkgs; [
        dmenu
        i3status
        i3lock
        i3blocks
     ];
    };
  };

  services.picom = {
    enable = true;
    shadow = true;
  };

  # Required for the i3blocks
  environment.pathsToLink = [ "/libexec" ];
 
  ### End ###

  ### Use pipewire as the audio server ###
  # Disable pulseaudio
  hardware.pulseaudio.enable = false;

  # Enable RealtimeKit to allow pipewire to run with realtime priority
  security.rtkit.enable = true;

  # Enable pipewire
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
  };

  ### End ###

  ### Other ###

  # Use urxvt as the default terminal
  services.urxvt.enable = true;

  ### End ###
}