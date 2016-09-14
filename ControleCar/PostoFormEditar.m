//
//  PostoFormEditar.m
//  ControleCar
//
//  Created by Carlos Gomes on 10/09/16.
//  Copyright © 2016 Carlos Gomes. All rights reserved.
//

#import "PostoFormEditar.h"

@implementation PostoFormEditar
@synthesize posto;

- (id)initWithPosto:(Posto *)_posto {
    if (self) {
        self.posto = _posto;
    }
    return self;
}

- (NSString *)titulo {
    return @"Editar Posto";
}

- (NSString *)tituloDoBotaoDireito {
    return @"Alterar";
}

- (SEL)acaoDoBotaoDireito {
    return NSSelectorFromString(@"alterar");
}

/*
- (UIBarButtonItem *)botaoDireito:(Posto *)_posto {
    UIBarButtonItem *botao = [[UIBarButtonItem alloc] initWithTitle:@"Alterar" style:UIBarButtonItemStylePlain target:self action:@selector(acaoBotaoDireito)];

    return botao;
}

- (void)acaoBotaoDireito {
    [nc.destinationViewController.navigationController popViewControllerAnimated:YES];
}
*/

@end
