//
//  Posto.m
//  ControleCar
//
//  Created by Carlos Gomes on 23/08/16.
//  Copyright © 2016 Carlos Gomes. All rights reserved.
//

#import "Posto.h"

@implementation Posto

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
