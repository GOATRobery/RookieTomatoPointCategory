# RookieTomatoPointCategory
One light weight category tool，make development easier
一款轻便的分类工具，让开发变得更简单
*** 
# 功能 
简化代码 

before：
``` 

``` 

useing: 
``` 

``` 

better: 
``` 
UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
btn.frame = CGRectMake(50, 100, 100, 60);
btn.btnTitleState(@"Click Me",0).btnTitleNC([UIColor redColor]).btnTitleSC([UIColor blueColor]);
[btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
[self.view addSubview:btn];
``` 

