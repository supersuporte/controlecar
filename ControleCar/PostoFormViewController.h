//
//  PostoFormViewController.h
//  ControleCar
//
//  Created by Carlos Gomes on 10/09/16.
//  Copyright © 2016 Carlos Gomes. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PostoProtocol.h"
#import "PostoFormProtocol.h"

@interface PostoFormViewController : UITableViewController

@property (strong, nonatomic) id<PostoProtocol> delegate;
@property (strong, nonatomic) NSObject<PostoFormProtocol> *postoForm;

@property (weak, nonatomic) IBOutlet UITextField *descricao;
@property (weak, nonatomic) IBOutlet UISwitch *status;

@end
