//
//  PostosEditarController.m
//  ControleCar
//
//  Created by Carlos Gomes on 30/08/16.
//  Copyright © 2016 Carlos Gomes. All rights reserved.
//

#import "PostosEditarController.h"
#import "Posto.h"

@interface PostosEditarController () {
    Posto *posto;
}

@end

@implementation PostosEditarController

- (id)initWithPosto:(Posto *)_posto {
    self = [super initWithTitle:@"Editar Contato"];
    
    self = [super initWithNibName:self.nibName bundle:[NSBundle mainBundle]];

    //UIBarButtonItem *alterar = [[UIBarButtonItem alloc] initWithTitle:@"Alterar" style:UIBarButtonItemStylePlain target:self action:@selector(alterar)];

    //self.navigationItem.rightBarButtonItem = alterar;
    
    if (self) {
        posto = _posto;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)preencheForm {
    [self.descricao setText:posto.descricao];
    [self.status setText:posto.status];
}

- (void)alterar {
    
}

@end
