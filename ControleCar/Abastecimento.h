//
//  Abastecimento.h
//  ControleCar
//
//  Created by Carlos Gomes on 01/10/16.
//  Copyright © 2016 Carlos Gomes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Combustivel.h"
#import "Posto.h"

@interface Abastecimento : NSObject

@property (strong, nonatomic) NSNumber *codigo;
@property (strong, nonatomic) NSDate *data;
@property (strong, nonatomic) NSNumber *kilometragem;
@property (strong, nonatomic) NSNumber *litros;
@property (strong, nonatomic) Combustivel *combustivel;
@property (strong, nonatomic) NSNumber *preco;
@property (strong, nonatomic) Posto *posto;
@property (strong, nonatomic) NSString *status;

@end
