//
//  PostoFormProtocol.h
//  ControleCar
//
//  Created by Carlos Gomes on 30/08/16.
//  Copyright © 2016 Carlos Gomes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Posto.h"

@protocol PostoFormProtocol <NSObject>

@property(strong, nonatomic) Posto *posto;

- (NSString *)titulo;
- (NSString *)tituloDoBotaoDireito;
- (SEL)acaoDoBotaoDireito;

@end
