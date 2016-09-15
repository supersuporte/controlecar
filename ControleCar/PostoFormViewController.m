//
//  PostoFormViewController.m
//  ControleCar
//
//  Created by Carlos Gomes on 10/09/16.
//  Copyright © 2016 Carlos Gomes. All rights reserved.
//

#import "PostoFormViewController.h"
#import "Posto.h"

@interface PostoFormViewController ()

@end

@implementation PostoFormViewController
@synthesize delegate;
@synthesize editMode;
@synthesize posto;

@synthesize descricao;
@synthesize status;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (editMode) {
        [self preparaParaEdicao];
    } else {
        [self preparaParaAdicao];
    }
    
}

- (void)preparaParaAdicao {
    self.title = @"Adicionar Posto";
    
    UIBarButtonItem *botao = [[UIBarButtonItem alloc] initWithTitle:@"Adicionar" style:UIBarButtonItemStylePlain target:self action:@selector(adicionarPosto)];
    self.navigationItem.rightBarButtonItem = botao;
}

- (void)adicionarPosto {
    Posto *novoPosto = [[Posto alloc]init];
    
    [novoPosto setDescricao:descricao.text];
    [novoPosto setStatus:(status.isOn ? @"A" : @"C")];
    
    [delegate postoAdicionado:novoPosto];
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)preparaParaEdicao {
    self.title = @"Editar Posto";
    
    UIBarButtonItem *botao = [[UIBarButtonItem alloc] initWithTitle:@"Alterar" style:UIBarButtonItemStylePlain target:self action:@selector(alterarPosto)];
    self.navigationItem.rightBarButtonItem = botao;

    [self preencheFormulario];
}

- (void)alterarPosto {
    [posto setDescricao:descricao.text];
    [posto setStatus:(status.isOn ? @"A" : @"C")];
    
    [delegate postoAlterado];
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)preencheFormulario {
    [descricao setText:posto.descricao];
    
    [status setOn:([posto.status isEqualToString:@"A"] ? TRUE : FALSE)];
}

@end
