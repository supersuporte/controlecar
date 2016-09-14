//
//  PostoFormEditar.h
//  ControleCar
//
//  Created by Carlos Gomes on 10/09/16.
//  Copyright © 2016 Carlos Gomes. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "PostoFormProtocol.h"

@interface PostoFormEditar : NSObject<PostoFormProtocol>

@property (strong, nonatomic) Posto *posto;

- (id)initWithPosto:(Posto *)posto;

- (NSString *)titulo;
- (NSString *)tituloDoBotaoDireito;

@end
