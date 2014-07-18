angular.module("admin.products").factory "VariantUnitManager", ->
  class VariantUnitManager
    @getUnitName: (scale, unitType) ->
      unitNames =
        'weight': {1.0: 'g', 1000.0: 'kg', 1000000.0: 'T'}
        'volume': {0.001: 'mL', 1.0: 'L',  1000.0: 'kL'}
      unitNames[unitType][scale]

    @unitScales: (unitType) ->
      unitScales =
        'weight': [1.0, 1000.0, 1000000.0]
        'volume': [0.001, 1.0, 1000.0]
      unitScales[unitType]

    @variant_unit_options: [
      ["Weight (g)", "weight_1"],
      ["Weight (kg)", "weight_1000"],
      ["Weight (T)", "weight_1000000"],
      ["Volume (mL)", "volume_0.001"],
      ["Volume (L)", "volume_1"],
      ["Volume (kL)", "volume_1000"],
      ["Items", "items"]
    ]
