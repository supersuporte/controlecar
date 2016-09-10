//
//  PostoFormViewController.h
//  ControleCar
//
//  Created by Carlos Gomes on 10/09/16.
//  Copyright © 2016 Carlos Gomes. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PostoFormProtocol.h"

@interface PostoFormViewController : UITableViewController

@property (strong, nonatomic) id<PostoFormProtocol> delegate;

@property (weak, nonatomic) IBOutlet UITextField *descricao;
@property (weak, nonatomic) IBOutlet UITextField *status;

@end
