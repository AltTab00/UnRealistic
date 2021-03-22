local sounds = require ("prototypes.entity.sounds")

goethite = {
  name = "goethite",
  tint = {r = 0.517, g = 0.309, b = 0},
  map_color = {r = 0.517, g = 0.309, b = 0},
  hardness = 0.7,
  mining_time = 1,
  walking_sound = sounds.ore,
  enabled = true,
  stage_mult = 10,
  item = {
      create = true,
      stack_size = 200
  },
  sprite = {
      sheet = 4
  },
  autoplace = {
      create = true,
      starting_area = true,
      richness = 0.4,
      size = 4
  }
}

magnetite = {
    name = "magnetite",
    tint = {r = 0.250, g = 0.250, b = 0.250},
    map_color = {r = 0.250, g = 0.250, b = 0.250},
    hardness = 1.5,
    mining_time = 2,
    walking_sound = sounds.ore,
    enabled = true,
    stage_mult = 10,
    item = {
        create = true,
        stack_size = 200
    },
    sprite = {
        sheet = 1
    },
    autoplace = {
        create = true,
        starting_area = false,
        richness = 1.7,
        size = 2
    }
  }

  malachite = {
    name = "malachite",
    tint = {r = 0.019, g = 0.396, b = 0.043},
    map_color = {r = 0.019, g = 0.396, b = 0.043},
    hardness = 1.5,
    mining_time = 2,
    walking_sound = sounds.ore,
    enabled = true,
    stage_mult = 10,
    item = {
        create = true,
        stack_size = 200
    },
    sprite = {
        sheet = 1
    },
    autoplace = {
        create = true,
        starting_area = true,
        richness = 0.7,
        size = 3
    }
  }

  chalcocite = {
    name = "chalcocite",
    tint = {r = 0.517, g = 0.517, b = 0.517},
    map_color = {r = 0.517, g = 0.517, b = 0.517},
    hardness = 1.5,
    mining_time = 2,
    walking_sound = sounds.ore,
    enabled = true,
    stage_mult = 10,
    item = {
        create = true,
        stack_size = 200
    },
    sprite = {
        sheet = 2
    },
    autoplace = {
        create = true,
        starting_area = false,
        richness = 5,
        size = 0.7
    }
  }
  granite = {
    name = "granite",
    tint = {r = 0.941176471, g = 0.82352941, b = 0.658823529},
    map_color = {r = 0.941176471, g = 0.82352941, b = 0.658823529},
    hardness = 1.5,
    mining_time = 2,
    walking_sound = sounds.ore,
    enabled = true,
    stage_mult = 10,
    item = {
        create = true,
        stack_size = 200
    },
    sprite = {
        sheet = 2
    },
    autoplace = {
        create = true,
        starting_area = false,
        richness = 5,
        size = 0.7
    }
  }
  peridotite = {
    name = "peridotite",
    tint = {r = 0.702, g = 1, b = 0.702},
    --map_color = {r = 0.702, g = 1, b = 0.702},
    hardness = 1.5,
    mining_time = 2,
    walking_sound = sounds.ore,
    enabled = true,
    stage_mult = 10,
    item = {
        create = true,
        stack_size = 200
    },
    sprite = {
        sheet = 1
    },
    autoplace = {
        create = true,
        starting_area = false,
        richness = 5,
        size = 0.7
    }
  }
  anorthosite = {
    name = "anorthosite",
    tint = {r = 0.843, g = 0.756, b = 0.756},
    --map_color = {r = 0.517, g = 0.517, b = 0.517},
    hardness = 1.5,
    mining_time = 2,
    walking_sound = sounds.ore,
    enabled = true,
    stage_mult = 10,
    item = {
        create = true,
        stack_size = 200
    },
    sprite = {
        sheet = 2
    },
    autoplace = {
        create = true,
        starting_area = false,
        richness = 5,
        size = 0.7
    }
  }
  ilmenite = {
    name = "ilmenite",
    tint = {r = 0.345, g = 0.254, b = 0.345},
    --map_color = {r = 0.517, g = 0.161, b = 0.517},
    hardness = 1.5,
    mining_time = 2,
    walking_sound = sounds.ore,
    enabled = true,
    stage_mult = 10,
    item = {
        create = true,
        stack_size = 200
    },
    sprite = {
        sheet = 3
    },
    autoplace = {
        create = true,
        starting_area = false,
        richness = 5,
        size = 0.7
    }
  }
  lignite = {
    name = "lignite",
    tint = {r = 0.231, g = 0.113, b = 0.070},
    map_color = {r = 0, g = 0, b = 0},
    hardness = 1.5,
    mining_time = 2,
    walking_sound = sounds.ore,
    enabled = true,
    stage_mult = 10,
    item = {
        create = true,
        stack_size = 200
    },
    sprite = {
        sheet = 1
    },
    autoplace = {
        create = true,
        starting_area = true,
        richness = 5,
        size = 0.7
    }
  }
  anthracite = {
    name = "anthracite",
    tint = {r = 0, g = 0, b = 0},
    --map_color = {r = 0.517, g = 0.161, b = 0.517},
    hardness = 1.5,
    mining_time = 2,
    walking_sound = sounds.ore,
    enabled = true,
    stage_mult = 10,
    item = {
        create = true,
        stack_size = 200
    },
    sprite = {
        sheet = 4
    },
    autoplace = {
        create = true,
        starting_area = false,
        richness = 5,
        size = 0.7
    }
  }
sandstone = {
    name = "sandstone",
    tint = {r = 0.941176471, g = 0.9, b = 0.758},
    hardness = 1.5,
    mining_time = 2,
    walking_sound = sounds.ore,
    enabled = true,
    stage_mult = 10,
    item = {
        create = true,
        stack_size = 200
    },
    sprite = {
        sheet = 2
    },
    autoplace = {
        create = true,
        starting_area = false,
        richness = 5,
        size = 0.7
    }
}