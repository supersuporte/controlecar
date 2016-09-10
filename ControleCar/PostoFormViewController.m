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
@synthesize descricao;
@synthesize status;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = delegate.titulo;
    self.navigationItem.rightBarButtonItem = delegate.botaoDireito;
}

- (void)acaoBotaoDireito {
    [delegate acaoBotaoDireito];
}

@end
