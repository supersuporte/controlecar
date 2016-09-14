//
//  PostoFormAdicionar.h
//  ControleCar
//
//  Created by Carlos Gomes on 10/09/16.
//  Copyright © 2016 Carlos Gomes. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PostoFormProtocol.h"
#import "Posto.h"

@interface PostoFormAdicionar : NSObject<PostoFormProtocol>
@property(strong, nonatomic) Posto *posto;

@end
