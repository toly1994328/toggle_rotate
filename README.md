
【[pub地址](https://pub.dev/packages/toggle_rotate) 】 【[github地址](https://github.com/toly1994328/toggle_rotate)】

```
dependencies:
  toggle_rotate: 1.0.1
```

---


####  一、描述

> 目标: 让一个组件点击时执行旋转，再点击旋转回去。

最简使用| 时长、曲线、方向| 一切组件| 旋转角度
---|---|---|---
![](https://user-gold-cdn.xitu.io/2020/3/1/17091b4b73dce5b0?w=204&h=184&f=gif&s=43603) | ![](https://user-gold-cdn.xitu.io/2020/3/1/17091b95c2855616?w=204&h=184&f=gif&s=43343)| ![](https://user-gold-cdn.xitu.io/2020/3/1/17091becabbbeeb4?w=204&h=184&f=gif&s=117285)|![](https://user-gold-cdn.xitu.io/2020/3/1/17091c21eda491d8?w=204&h=184&f=gif&s=79519)



##### 1.所有属性:

 名称 | 类型 | 功能 | 备注 | 默认
---|--- |--- |---  |---
beginAngle | double | 起始角度 | 角度制 | 0
endAngle | double | 终止角度 | 角度制 | 90
durationMs | int | 动画时长 | 毫秒 | 200
curve | Curve | 动画曲线 | - | Curves.fastOutSlowIn
clockwise | bool | 是否顺时针旋转 | - | true
onTap |void Function | 点击事件 | -  | null
onEnd |void Function(bool) | 动画结束回调 | -  | null
child | Widget | 子组件 | @required | null

---

##### 2.最简使用:

![](https://user-gold-cdn.xitu.io/2020/3/1/17091b4b73dce5b0?w=204&h=184&f=gif&s=43603)

```
ToggleRotate(
  child: Icon(Icons.arrow_upward,size: 60,color: Colors.orangeAccent),
  onEnd: (bool isExpanded) { // 动画结束时间
      print("---expanded---:$isExpanded-------");
    },
  onTap: () {}, //点击事件
),
```

---

##### 3.指定时长和曲线和方向

![](https://user-gold-cdn.xitu.io/2020/3/1/17091b95c2855616?w=204&h=184&f=gif&s=43343)

```
ToggleRotate(
  curve: Curves.decelerate,
  durationMs: 400,//动画时长
  clockwise: false, //是否是顺时针
  child: Icon(Icons.arrow_upward,size: 60,color: Colors.orangeAccent),
  onTap: () {},
),
```


---

##### 4.可使一切组件进行旋转切换

![](https://user-gold-cdn.xitu.io/2020/3/1/17091becabbbeeb4?w=204&h=184&f=gif&s=117285)

```
ToggleRotate(
  curve: Curves.decelerate,
  durationMs: 400,
  child: Image(width:60,height: 60,image: AssetImage("assets/images/icon_28.jpg")),
  onTap: () {},

)
```

---

##### 5.可使旋转的角度

![](https://user-gold-cdn.xitu.io/2020/3/1/17091c21eda491d8?w=204&h=184&f=gif&s=79519)

```
ToggleRotate(
  beginAngle: 0, // 起始角度
  endAngle: 45, // 终止角度
  curve: Curves.linear,
  child: Image(width:60,height: 60,image: AssetImage("assets/images/icon_28.jpg")),
  onTap: () {},
)
```