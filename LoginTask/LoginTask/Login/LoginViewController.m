//
//  LoginViewController.m
//  LoginTask
//
//  Created by Macbook on 5.07.21.
//

#import "LoginViewController.h"

@interface LoginViewController ()
@property (weak, nonatomic) IBOutlet UITextField *loginTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UIButton *authorizeButton;
@property (weak, nonatomic) IBOutlet UIView *secureContainer;
@property (weak, nonatomic) IBOutlet UIButton *firstButton;
@property (weak, nonatomic) IBOutlet UIButton *secondButton;
@property (weak, nonatomic) IBOutlet UIButton *thirdButton;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupTextFields];
    [self setupButton];
    [self setupSecureButtons];
}

- (void)setupTextFields {
    self.loginTextField.layer.cornerRadius = 5;
    self.loginTextField.layer.borderWidth = 1.5;
    self.loginTextField.layer.borderColor = [UIColor blackColor].CGColor;
    self.passwordTextField.layer.cornerRadius = 5;
    self.passwordTextField.layer.borderWidth = 1.5;
    self.passwordTextField.layer.borderColor = [UIColor blackColor].CGColor;
}

- (void)setupButton {
    // Setup
    self.authorizeButton.layer.borderWidth = 2.0;
    self.authorizeButton.layer.cornerRadius = 10.0;
    [self.authorizeButton.layer setBorderColor: [UIColor colorWithRed: 0.50 green: 0.64 blue: 0.93 alpha: 1.00].CGColor];
    [self.authorizeButton setImage:[UIImage systemImageNamed:@"person"] forState:normal];
    
    // Insets
    self.authorizeButton.contentEdgeInsets = UIEdgeInsetsMake(10, 20, 10, 20);
    self.authorizeButton.imageEdgeInsets = UIEdgeInsetsMake(0, -10, 0, 0);
    
    // UIControlStateHighlighted
    [self.authorizeButton setImage:[UIImage imageNamed:@"person.fill"]forState: UIControlStateHighlighted];
    [self.authorizeButton setTitleColor:[[UIColor colorWithRed: 0.50 green: 0.64 blue: 0.93 alpha: 1.00] colorWithAlphaComponent:0.4] forState: UIControlStateHighlighted];
    
    // UIControlStateDisabled
    [self.authorizeButton setTitleColor:[[UIColor colorWithRed: 0.50 green: 0.64 blue: 0.93 alpha: 1.00] colorWithAlphaComponent: 0.5] forState: UIControlStateDisabled];
}

- (void)setupSecureButtons {
    self.firstButton.layer.cornerRadius = 25;
    self.secondButton.layer.cornerRadius = 25;
    self.thirdButton.layer.cornerRadius = 25;
    self.firstButton.layer.borderWidth = 1.5;
    self.secondButton.layer.borderWidth = 1.5;
    self.thirdButton.layer.borderWidth = 1.5;
    self.firstButton.layer.borderColor = [UIColor colorWithRed: 0.50 green: 0.64 blue: 0.93 alpha: 1.00].CGColor;
    self.secondButton.layer.borderColor = [UIColor colorWithRed: 0.50 green: 0.64 blue: 0.93 alpha: 1.00].CGColor;
    self.thirdButton.layer.borderColor = [UIColor colorWithRed: 0.50 green: 0.64 blue: 0.93 alpha: 1.00].CGColor;
}


- (IBAction)authorizeButtonDidTap:(id)sender {
    if([self.loginTextField.text isEqual: @"username"]) {
        self.loginTextField.layer.borderColor = [UIColor colorWithRed: 0.57 green: 0.78 blue: 0.69 alpha: 1.00].CGColor;
        self.loginTextField.alpha = 0.5;
        [self.loginTextField setEnabled:NO];
    } else {
        self.loginTextField.layer.borderColor = [UIColor colorWithRed: 0.76 green: 0.00 blue: 0.08 alpha: 1.00].CGColor;
    }
    
    if([self.passwordTextField.text isEqual: @"password"]) {
        self.passwordTextField.layer.borderColor = [UIColor colorWithRed: 0.57 green: 0.78 blue: 0.69 alpha: 1.00].CGColor;
        self.passwordTextField.alpha = 0.5;
        [self.passwordTextField setEnabled:NO];
    } else {
        self.passwordTextField.layer.borderColor = [UIColor colorWithRed: 0.76 green: 0.00 blue: 0.08 alpha: 1.00].CGColor;
    }
    
    if([self.loginTextField.text isEqual: @"username"] && [self.passwordTextField.text isEqual: @"password"]) {
        self.authorizeButton.layer.opacity = 0.5;
        [self.authorizeButton setUserInteractionEnabled:NO];
        [self.secureContainer setHidden:NO];
    }
}

@end
