{
  outputs = {self}: {
    templates = {
      default = {
        path = ./rust;
        description = ''
          uses flake utils to be system agnostic
        '';
      };
      bevy = {
        path = ./bevy;
        description = ''
          a simple bevy starter template
        '';
      };
      rust = {
        path = ./bevy;
        description = ''
          a simple bevy starter template
        '';
      };
    };
  };
}
