//
//  PostosViewController.m
//  ControleCar
//
//  Created by Carlos Gomes on 19/08/16.
//  Copyright © 2016 Carlos Gomes. All rights reserved.
//

#import "PostosViewController.h"
#import "Posto.h"
#import "PostoFormAdicionar.h"
#import "PostoFormEditar.h"
#import "PostoFormViewController.h"

@interface PostosViewController () {
    NSMutableArray *postos;
}

@end

@implementation PostosViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self carregaPlist];
    
    self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)carregaPlist {
    NSMutableDictionary *arrayDePostos;
    
    NSString *caminho;
    
    NSString *documentsDir = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    NSString *arquivo = [NSString stringWithFormat:@"%@/postos.plist", documentsDir];
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    if ([fileManager fileExistsAtPath:arquivo]) {
        caminho = arquivo;
    } else {
        caminho = [[NSBundle mainBundle] pathForResource:@"postos" ofType:@"plist"];
    }
    
    arrayDePostos = [[NSMutableDictionary alloc] initWithContentsOfFile:caminho];
    postos = [[NSMutableArray alloc] init];
    
    for (NSString *key in arrayDePostos) {
        
        Posto *p = [[Posto alloc] init];
        
        NSDictionary *d = [arrayDePostos objectForKey:key];
        
        [p setCodigo:[d objectForKey:@"codigo"]];
        [p setDescricao:[d objectForKey:@"descricao"]];
        [p setStatus:[d objectForKey:@"status"]];
        
        [postos addObject:p];
    }
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [postos removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        return false;
    } else {
        return true;
    }
    
}

- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath {
    Posto *p = [postos objectAtIndex:sourceIndexPath.row];
    [postos removeObjectAtIndex:sourceIndexPath.row];
    [postos insertObject:p atIndex:destinationIndexPath.row];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return 1;
    } else {
        return [postos count];
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    
    if (indexPath.section == 0) {
        cell.textLabel.text = @"+ Adicionar Posto";
    } else {
        Posto *posto = [postos objectAtIndex:[indexPath row]];
        cell.textLabel.text = [posto descricao];
    }

    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self performSegueWithIdentifier:@"postoForm" sender:indexPath];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSIndexPath *i = sender;
    Posto *posto = [postos objectAtIndex:[i row]];

    if ([[segue identifier] isEqualToString:@"postoForm"]) {
        PostoFormViewController *postoVC = [segue destinationViewController];
        postoVC.delegate = self;

        if (i.section == 0) {
            PostoFormAdicionar *postoForm = [[PostoFormAdicionar alloc] init];
            postoVC.postoForm = postoForm;
        } else {
            PostoFormEditar *postoForm = [[PostoFormEditar alloc] initWithPosto:posto];
            postoVC.postoForm = postoForm;
        }
    }
    
}

@end
