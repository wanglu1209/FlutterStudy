typedef void EventCallback(arg);

class EventBus {
  // 这里的._internal 不限定为._internal，随便什么都可以
  // 为了创建一个私有的构造
  EventBus._internal();

  static EventBus _singleton = new EventBus._internal();

  factory EventBus() => _singleton;

  var _emap = new Map<Object, List<EventCallback>>();

  // 添加事件
  void on(eventName, EventCallback f) {
    if (eventName == null || f == null) return;
    _emap[eventName] ??= new List<EventCallback>();
    _emap[eventName].add(f);
  }

  // 移除事件
  void off(eventName, EventCallback f) {
    var list = _emap[eventName];
    if (eventName == null || list == null) return;
    if (f == null) {
      _emap[eventName] = null;
    } else {
      list.remove(f);
    }
  }

  // 发出事件
  void emit(eventName, [arg]) {
    var list = _emap[eventName];
    if (list == null) return;
    var len = list.length - 1;
    for (int i = len; i >= 0; i--) {
      list[i](arg);
    }
  }
}

var bus = new EventBus();
