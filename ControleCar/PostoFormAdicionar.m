//
//  PostoFormAdicionar.m
//  ControleCar
//
//  Created by Carlos Gomes on 10/09/16.
//  Copyright © 2016 Carlos Gomes. All rights reserved.
//

#import "PostoFormAdicionar.h"

@implementation PostoFormAdicionar
@synthesize posto;

- (NSString *)titulo {
    return @"Adicionar Posto";
}

- (UIBarButtonItem *)botaoDireito {
    UIBarButtonItem *botao = [[UIBarButtonItem alloc] initWithTitle:@"Adicionar" style:UIBarButtonItemStylePlain target:self action:@selector(acaoBotaoDireito)];
    
    return botao;
}

- (void)acaoBotaoDireito {
    
}

@end
