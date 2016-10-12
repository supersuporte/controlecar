//
//  Combustivel.h
//  ControleCar
//
//  Created by Carlos Gomes on 01/10/16.
//  Copyright © 2016 Carlos Gomes. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Combustivel : NSObject

@property (strong, nonatomic) NSNumber *codigo;
@property (strong, nonatomic) NSString *descricao;
@property (strong, nonatomic) NSString *status;

@end
