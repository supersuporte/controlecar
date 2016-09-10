//
//  PostosFormViewController.m
//  ControleCar
//
//  Created by Carlos Gomes on 02/09/16.
//  Copyright © 2016 Carlos Gomes. All rights reserved.
//

#import "PostosFormViewController.h"
#import "Posto.h"

@interface PostosFormViewController ()
@end

@implementation PostosFormViewController
@synthesize delegate;
@synthesize descricao;
@synthesize status;

- (id)initWithTitle:(NSString *)title {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    self = [storyboard instantiateViewControllerWithIdentifier:@"PostosFormViewController"];
    
    self.title = title;
    
    return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIBarButtonItem *voltar = [[UIBarButtonItem alloc] initWithTitle:@"Cancelar" style:UIBarButtonItemStylePlain target:self action:@selector(voltar)];
    
    self.navigationItem.backBarButtonItem = voltar;
}

- (void) voltar {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
