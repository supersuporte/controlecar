//
//  Combustivel.m
//  ControleCar
//
//  Created by Carlos Gomes on 01/10/16.
//  Copyright © 2016 Carlos Gomes. All rights reserved.
//

#import "Combustivel.h"

@implementation Combustivel

@synthesize codigo;
@synthesize descricao;
@synthesize status;

- (id)initWithDicionario:(NSDictionary *)dicionario {
    [self setCodigo:[dicionario objectForKey:@"codigo"]];
    [self setDescricao:[dicionario objectForKey:@"descricao"]];
    [self setStatus:[dicionario objectForKey:@"status"]];
    
    return self;
}

@end
