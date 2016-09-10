//
//  PostosFormViewController.h
//  ControleCar
//
//  Created by Carlos Gomes on 02/09/16.
//  Copyright © 2016 Carlos Gomes. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PostoProtocol.h"

@interface PostosFormViewController : UITableViewController <UIActionSheetDelegate, UINavigationControllerDelegate, UIActionSheetDelegate>

@property (strong, nonatomic) id<PostoProtocol> delegate;

@property (weak, nonatomic) IBOutlet UITextField *descricao;
@property (weak, nonatomic) IBOutlet UITextField *status;

- (id)initWithTitle:(NSString *)title;

@end
