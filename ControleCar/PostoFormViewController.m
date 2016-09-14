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
@synthesize postoForm;

@synthesize descricao;
@synthesize status;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = postoForm.titulo;
    self.navigationItem.rightBarButtonItem = [self botaoDireito];
    
    //[self preencheFormulario];
}

- (UIBarButtonItem *)botaoDireito {
    
    NSString *titulo = [postoForm tituloDoBotaoDireito];
    SEL selector = [postoForm acaoDoBotaoDireito];
    
    UIBarButtonItem *botao = [[UIBarButtonItem alloc] initWithTitle:titulo style:UIBarButtonItemStylePlain target:self action:selector];

    return botao;
}

- (void)alterar {
    [self.navigationController popViewControllerAnimated:YES];
}



/*
- (void)preencheFormulario {
    [descricao setText:delegate.posto.descricao];
    
    if ([delegate.posto.status isEqualToString:@"A"]) {
        [status setOn:TRUE];
    } else {
        [status setOn:FALSE];
    }
}
*/
 
@end
