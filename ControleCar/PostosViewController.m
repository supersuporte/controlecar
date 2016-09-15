//
//  PostosViewController.m
//  ControleCar
//
//  Created by Carlos Gomes on 19/08/16.
//  Copyright © 2016 Carlos Gomes. All rights reserved.
//

#import "PostosViewController.h"
#import "Posto.h"
#import "PostoFormViewController.h"

@interface PostosViewController () {
    NSMutableArray *postos;
}

@end

@implementation PostosViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self carregaPlist];
    
    self.editButtonItem.title = @"Editar";
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
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellIdentifier];
    }
    
    if (indexPath.section == 0) {
        cell.textLabel.text = @"+ Adicionar Posto";
    } else {
        Posto *posto = [postos objectAtIndex:[indexPath row]];
        cell.textLabel.text = [posto descricao];
        cell.detailTextLabel.text = [posto.status isEqualToString:@"A"] ? @"Ativo" : @"Cancelado";
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        return false;
    } else {
        return true;
    }
    
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [postos removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
        [self gravaPlist];
    }
}

- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath {
    Posto *p = [postos objectAtIndex:sourceIndexPath.row];
    [postos removeObjectAtIndex:sourceIndexPath.row];
    [postos insertObject:p atIndex:destinationIndexPath.row];
    [self gravaPlist];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self performSegueWithIdentifier:@"postoFormViewController" sender:indexPath];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSIndexPath *indexPath = sender;

    PostoFormViewController *postoVC = [segue destinationViewController];
    postoVC.delegate = self;
    
    if ([[segue identifier] isEqualToString:@"postoFormViewController"]) {
        if (indexPath.section == 0) {
            postoVC.editMode = NO;
        } else {
            postoVC.editMode = YES;
            postoVC.posto = [postos objectAtIndex:[indexPath row]];
        }
    }
    
}

- (void)postoAdicionado:(Posto *)posto {
    [postos addObject:posto];
    [self.tableView reloadData];
    [self gravaPlist];
}

- (void)postoAlterado {
    [self.tableView reloadData];
    [self gravaPlist];
}

- (void)gravaPlist {
    NSMutableDictionary *listaDePostos = [[NSMutableDictionary alloc] init];
    
    for (int i = 0; i < postos.count; i++) {
        Posto *posto = [postos objectAtIndex:i];
        NSMutableDictionary *d = [[NSMutableDictionary alloc] init];
        
        [d setValue:[posto descricao] forKey:@"descricao"];
        [d setValue:[posto status] forKey:@"status"];
        
        [listaDePostos setValue:d forKey:[NSString stringWithFormat:@"%i", i]];
    }
    
    NSString *caminho = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    NSString *arquivo = [NSString stringWithFormat:@"%@/postos.plist", caminho];
    [listaDePostos writeToFile:arquivo atomically:YES];
}

@end
