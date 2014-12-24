RandomUuidValue = ->
    @evaluate = (context) ->
      "xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx".replace /[xy]/g, (c) ->
        r = Math.random() * 16 | 0
        v = (if c is "x" then r else (r & 0x3 | 0x8))
        v.toString 16

    @title = ->
      "UUID"

    return

RandomUuidValue.identifier = "com.hskrasek.PawExtensions.RandomUuidValue"
RandomUuidValue.title = "Generate Random UUID"
RandomUuidValue.inputs = []
registerDynamicValueClass RandomUuidValue