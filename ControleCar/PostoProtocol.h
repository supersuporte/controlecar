//
//  PostoProtocol.h
//  ControleCar
//
//  Created by Carlos Gomes on 13/09/16.
//  Copyright © 2016 Carlos Gomes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Posto.h"

@protocol PostoProtocol <NSObject>

- (void)postoAdicionado:(Posto *)posto;
- (void)postoAlterado;

@end
