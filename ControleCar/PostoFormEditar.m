//
//  PostoFormEditar.m
//  ControleCar
//
//  Created by Carlos Gomes on 10/09/16.
//  Copyright © 2016 Carlos Gomes. All rights reserved.
//

#import "PostoFormEditar.h"

@implementation PostoFormEditar

- (NSString *)titulo {
    return @"Editar Posto";
}

- (UIBarButtonItem *)botaoDireito {
    UIBarButtonItem *botao = [[UIBarButtonItem alloc] initWithTitle:@"Alterar" style:UIBarButtonItemStylePlain target:self action:@selector(acaoBotaoDireito)];

    return botao;
}

- (void)acaoBotaoDireito {
    
}

@end
