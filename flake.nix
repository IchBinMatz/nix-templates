{
  outputs = {self}: {
    templates = {
      default = {
        path = ./default;
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
    };
  };
}
