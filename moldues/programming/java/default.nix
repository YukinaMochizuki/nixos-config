# Purpose: Setup Java development environment.

{ config, pkgs, ... }:

{
  home.packages = with pkgs;[
    pkgs.jdk17
    pkgs.jdk21

    pkgs.gradle
  ];

  ### Setup Java 21 as the default Java version ###
  home.sessionVariables = {
    JAVA_HOME = "${pkgs.jdk21}/lib/openjdk";
  };
}