//
//  Abastecimento.m
//  ControleCar
//
//  Created by Carlos Gomes on 01/10/16.
//  Copyright © 2016 Carlos Gomes. All rights reserved.
//

#import "Abastecimento.h"

@implementation Abastecimento

@synthesize codigo;
@synthesize data;
@synthesize kilometragem;
@synthesize litros;
@synthesize combustivel;
@synthesize preco;
@synthesize posto;
@synthesize status;

- (id)initWithDicionario:(NSDictionary *)dicionario {
    [self setCodigo:[dicionario objectForKey:@"codigo"]];
    [self setData:[dicionario objectForKey:@"data"]];
    [self setKilometragem:[dicionario objectForKey:@"kilometragem"]];
    [self setLitros:[dicionario objectForKey:@"litros"]];
    [self setCombustivel:[dicionario objectForKey:@"combustivel"]];
    [self setPreco:[dicionario objectForKey:@"preco"]];
    [self setPosto:[dicionario objectForKey:@"posto"]];
    [self setStatus:[dicionario objectForKey:@"status"]];
    
    return self;
}

@end
