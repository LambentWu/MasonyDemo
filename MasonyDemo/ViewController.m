//
//  ViewController.m
//  MasonyDemo
//
//  Created by Lambent on 2020/11/30.
//

#import "ViewController.h"
#import "Masonry.h"


@interface ViewController ()

@property(weak,nonatomic)UIView *sv2;
@property(weak,nonatomic)UIView *view1;
@end
// MARK: 左上距离是正  右下距离是负 equalto 跟view   mas_equalto跟各种类型 是对equal的封装
// MARK: 左上距离是正  右下距离是负 equalto 跟view   mas_equalto跟各种类型 是对equal的封装
// MARK: 左上距离是正  右下距离是负 equalto 跟view   mas_equalto跟各种类型 是对equal的封装
// MARK: 左上距离是正  右下距离是负 equalto 跟view   mas_equalto跟各种类型 是对equal的封装
// MARK: 左上距离是正  右下距离是负 equalto 跟view   mas_equalto跟各种类型 是对equal的封装
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    [self demo1];
    [self demo3];
//    [self demo4];
//      [self demo5];
    
}
-(void)demo5{
    UIView *sv=[UIView new];
    sv.backgroundColor=[UIColor grayColor];
    [self.view addSubview:sv];
    [sv mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.size.mas_equalTo(CGSizeMake(300, 300));
        
    }];
    
    UIView *view1=[UIView new];
    view1.backgroundColor=[UIColor redColor];
    [sv addSubview:view1];
    
    UIView *view2=[UIView new];
    view2.backgroundColor=[UIColor blueColor];
    [sv addSubview:view2];
    
    UIView *view3=[UIView new];
    view3.backgroundColor=[UIColor blackColor];
    [sv addSubview:view3];
    
    
    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.equalTo(sv).offset(10);
        make.height.mas_equalTo(@100);
        make.centerY.equalTo(sv);
        make.right.equalTo(view2.mas_left).offset(-10);
        make.width.equalTo(view2);
            
    }];
    
   
    [view2 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        
        make.left.mas_equalTo(view1.mas_right).offset(10);
        make.height.mas_equalTo(@100);
        make.centerY.equalTo(sv);
        make.right.equalTo(view3.mas_left).offset(-10);
        make.width.equalTo(view3);
            
    }];
    
    
    
    [view3 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        
        make.left.equalTo(view2.mas_right).offset(10);
        make.height.mas_equalTo(@100);
        make.centerY.equalTo(sv);
        make.right.equalTo(sv).offset(-10);
        make.width.equalTo(view1);
            
    }];
    
    
    
    
    
    
}
// MARK: 左上距离是正  右下距离是负 equalto 跟view   mas_equalto跟各种类型 是对equal的封装
-(void)demo4{
    
    UIView *sv=[UIView new];
    sv.backgroundColor=[UIColor redColor];
    [self.view addSubview:sv];
    [sv mas_makeConstraints:^(MASConstraintMaker *make) {
       
      //  make.edges.mas_equalTo(UIEdgeInsetsMake(20, 20, 20, 20));
        make.left.equalTo(self.view.mas_safeAreaLayoutGuideLeft).offset(50);
        
        make.top.equalTo(self.view.mas_safeAreaLayoutGuideTop).offset(50);
        make.bottom.equalTo(self.view.mas_safeAreaLayoutGuideBottom).offset(-50);
        make.right.equalTo(self.view.mas_safeAreaLayoutGuideRight).offset(-50);
       
        
        
    }];
    
    
    
}
-(void)demo3{
    
    __weak typeof(self) weakSelf =self;
    UIView * temp = [[UIView alloc]init];
    
    
    for (int i=0; i<10; i++) {
        
        UIView *view1=[UIView new];
        view1.backgroundColor=[UIColor redColor];
        [self.view addSubview:view1];
        self.view1=view1;
        
        if (i==0) {
          
            
            [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
                
                make.left.equalTo(weakSelf.view).offset(10);
                make.centerY.equalTo(weakSelf.view);
                make.height.mas_equalTo(@100);
              //  make.width.equalTo(temp);
            }];
        }
         else if (i==9) {
             
         [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
                
                
                make.right.equalTo(weakSelf.view).offset(-10);
                make.left.mas_equalTo(temp.mas_right).offset(10);
                make.centerY.equalTo(weakSelf.view);
                make.height.equalTo(temp);
                make.width.equalTo(temp);
            }];
             
             
        }
         else{
          
             
            [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
               
                make.left.equalTo(temp.mas_right).offset(10);
                make.centerY.equalTo(self.view);
                make.height.mas_equalTo(temp);
                make.width.equalTo(temp);
            }];
         }
        
        temp=view1;
      //  [view1 layoutIfNeeded];
      //  NSLog(@"%@", NSStringFromCGRect(view.frame));
    }
    
    
}
-(void)demo2{}
// MARK: 左上距离是正  右下距离是负 equalto 跟view   mas_equalto跟各种类型 是对equal的封装
-(void)demo1{
    
    UIView *sv=[UIView new];
    sv.backgroundColor=[UIColor yellowColor];
    [self.view addSubview:sv];
    [sv mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.size.mas_equalTo(CGSizeMake(300, 300));
        
    }];
    
    UIView *sv1=[[UIView alloc] init];
    sv1.backgroundColor=[UIColor redColor];
    [sv addSubview:sv1];
    [sv1 mas_makeConstraints:^(MASConstraintMaker *make) {
       
        make.edges.mas_equalTo(UIEdgeInsetsMake(10, 10, 10, 10));
        
    }];
    
    UIView *sv2=[[UIView alloc] init];
    sv2.backgroundColor=[UIColor greenColor];
    [sv addSubview:sv2];
    self.sv2=sv2;
    
    UIView *sv3=[UIView new];
    sv3.backgroundColor=[UIColor blueColor];
    [sv addSubview:sv3];
    
    [sv2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(sv1);
        make.centerY.equalTo(sv1);
        make.height.mas_equalTo(@150);
        make.right.mas_equalTo(sv3.mas_left).offset(-10);
        make.width.equalTo(sv3);
     }];
    
    [sv3 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.centerY.equalTo(sv1);
//        make.left.mas_equalTo(sv2.mas_right).offset(10);
        make.right.equalTo(sv1);
        make.height.mas_equalTo(@150);
        make.width.equalTo(sv2);
        
    }];
    
   
}
-(void)viewDidLayoutSubviews{
    
    [super viewDidLayoutSubviews];
    [self.view layoutIfNeeded];
    NSLog(@"%@", NSStringFromCGRect(self.view1.frame));
    
    
    
}
@end
