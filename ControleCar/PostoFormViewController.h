//
//  PostoFormViewController.h
//  ControleCar
//
//  Created by Carlos Gomes on 10/09/16.
//  Copyright © 2016 Carlos Gomes. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PostoProtocol.h"

@interface PostoFormViewController : UITableViewController

@property (strong, nonatomic) id<PostoProtocol> delegate;
@property (assign, nonatomic) BOOL editMode;
@property (strong, nonatomic) Posto *posto;

@property (weak, nonatomic) IBOutlet UITextField *descricao;
@property (weak, nonatomic) IBOutlet UISwitch *status;

@end
