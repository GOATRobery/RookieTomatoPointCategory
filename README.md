# RookieTomatoPointCategory
One light weight category tool，make development easier
一款轻便的分类工具，让开发变得更简单
*** 
# 功能 
简化代码 

before：
![OriginMethod](https://github.com/TargetNoBug/RookieTomatoPointCategory/blob/master/images/btnSystem.png?raw=true)
``` 
UIButton *btn = [ [UIButton alloc] init] ;
btn.frame = CGRectMake(100, 100, 100, 60);
btn. backgroundColor = [UIColor blueColor] ;
[btn setTitle:@"Click Me" forState :UIControlStateNormal] ;
[btn setImage:[UIImage imageNamed:@"iconNormal"] forState :UIControlStateNormal];
btn.layer.cornerRadius = 5;
btn.layer.masksToBounds = YES ;
btn.adjustsImageWhenDisabled = NO;
btn.adjustsImageWhenHighlighted = NO
[btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
[self.view addSubview:btn];
``` 

useing: 
![LightfulMethod](https://github.com/TargetNoBug/RookieTomatoPointCategory/blob/master/images/btnCategory.png?raw=true)
``` 
UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
btn.frameSe(100, 100, 100, 60)
    .btnTitleState(@"Click Me",0)
    .btnImgNC(@"iconNormal")
    .btnImgSC(@"iconSelected")
    .btnTitleNC([UIColor redColor])
    .btnTitleSC([UIColor blueColor])
    .cornerRadius(5.0)
    .isMaskToBounds(YES)
    .btnAdjustImgHighlight(NO)
    .btnAdjustImgDisable(NO);
btn.addTarget(self,@selector(btnClick:),UIControlEventTouchUpInside);
[self.view addSubview:btn];
``` 

