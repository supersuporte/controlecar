//
//  PostoFormProtocol.h
//  ControleCar
//
//  Created by Carlos Gomes on 30/08/16.
//  Copyright © 2016 Carlos Gomes. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PostoFormProtocol <NSObject>

- (NSString *)titulo;
- (UIBarButtonItem *)botaoDireito;
- (void)acaoBotaoDireito;

@end
