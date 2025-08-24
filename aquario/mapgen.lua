data:extend {
  {
    type = "noise-expression",
    name = "aquario-noise-expr",
    intended_property = "elevation",
    expression = "0-abs(x)-abs(y)"
  }
}

data.raw["map-gen-presets"].default["aquario"] = {
  order = "j",
  basic_settings = {
    property_expression_names = {
      elevation = "aquario-noise-expr",
      moisture = "moisture_basic",
      aux = "aux_basic"
    },
    cliff_settings = {
      cliff_elevation_interval = 0
    },
    autoplace_settings = {
      entity = {
        treat_missing_as_default = false,
        settings = {
          fish = {
            frequency = 1
          }
        }
      }
    },
    autoplace_controls = {
      ["water"] = {
        frequency = 6
      },
      ["enemy-base"] = {
        frequency = 0
      },
      ["trees"] = {
        frequency = 0
      },
      ["rocks"] = {
        frequency = 0
      },
      ["iron-ore"] = {
        frequency = 0
      },
      ["copper-ore"] = {
        frequency = 0
      },
      ["stone"] = {
        frequency = 0
      },
      ["uranium-ore"] = {
        frequency = 0
      },
      ["coal"] = {
        frequency = 0
      },
      ["crude-oil"] = {
        frequency = 0
      }
    }
  },
  advanced_settings = {
    pollution = {
      enabled = false
    }
  }
}
