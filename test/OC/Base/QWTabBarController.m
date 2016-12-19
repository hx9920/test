//
//  QWTabBarController.m
//  test
//  微微卿 制作
//  Created by 胡兴 on 16/12/19.
//    Copyright © 2016年 胡兴. All rights reserved.
//
//  Copyright © 2016年 胡兴. All rights reserved.
//

#import "QWTabBarController.h"
#import "QWNavitionController.h"
@interface QWTabBarController ()

@end

@implementation QWTabBarController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self addChildViewControllers];
}
- (void)addChildViewControllers
{
#warning  添加 被TabBarCtl 控制的视图控制器 名称
    //视图控制器名称
    NSMutableArray *array = [NSMutableArray arrayWithArray:@[@"QWBaseViewController",@"QWBaseViewController",@"QWBaseViewController",@"QWBaseViewController"]];
#warning Set TabBarItem Nomal Icon Name
    NSArray *imgArray = @[@"TabBar_home_23x23_",@"TabBar_gift_23x23_",@"TabBar_category_23x23_",@"TabBar_me_boy_23x23_"];
#warning Set TabBarItem selected Icon Name
    NSArray *selectImageArray = @[@"TabBar_home_23x23_selected",@"TabBar_gift_23x23_selected",@"TabBar_category_23x23_selected",@"TabBar_me_boy_23x23_selected"];
#warning Set TabBarItem title
    NSArray *titles = @[@"test1",@"test2",@"test3",@"test4"];
    for(int i =0;i<array.count;i++)
    {
        UIViewController *vc = [[NSClassFromString(array[i]) alloc] init];
        QWNavitionController *nav = [[QWNavitionController alloc] initWithRootViewController:vc];
        vc.title = titles[i];
        nav.tabBarItem.title = titles[i];
        nav.tabBarItem.image = IMG(imgArray[i]);
        nav.tabBarItem.selectedImage = [IMG(selectImageArray[i]) imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        [array replaceObjectAtIndex:i withObject:nav];
    }
    self.viewControllers = array;
    self.tabBar.tintColor = MAIN_COLOR;
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
 
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
