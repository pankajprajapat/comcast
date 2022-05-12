# Terminal 1

```
class Apple

  attr_reader :variety, :origin, :history
  def initialize(**args)
    @variety = args[:variety]
    @origin = args[:origin]
    @history = args[:history]
  end
end

apple = Apple.new(variety: 'Honeycrisp', origin: 'Minnesota', history: 'Introduction to Market: 1991')
```

* Marshal.dump(apple)
This will generate a string that we will use in Terminal 2


# Terminal 2
```
class Apple

  attr_reader :variety, :origin, :history
  def initialize(**args)
    @variety = args[:variety]
    @origin = args[:origin]
    @history = args[:history]
  end
end
```

* paste string from terminal 1 to here

Example String:
str = "\x04\bo:\nApple\b:\r@varietyI\"\x0FHoneycrisp\x06:\x06ET:\f@originI\"\x0EMinnesota\x06;\aT:\r@historyI\"!Introduction to Market: 1991\x06;\aT"

* apple = Marshal.load(str)