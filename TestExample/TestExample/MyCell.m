

#import "MyCell.h"
#import <QuartzCore/QuartzCore.h>

@implementation MyCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        
        [self setSelectionStyle:UITableViewCellSelectionStyleNone];
        
        self.mainViewLeft = [[UIView alloc] init];
        _mainViewLeft.backgroundColor = [UIColor redColor];
        _mainViewLeft.layer.masksToBounds = NO;
        _mainViewLeft.layer.cornerRadius = 3; // if you like rounded corners
        _mainViewLeft.layer.shadowOffset = CGSizeMake(0, 1);
        _mainViewLeft.layer.shadowRadius = 1;
        _mainViewLeft.layer.shadowOpacity = 0.5;
        [self.contentView addSubview:self.mainViewLeft];
        
        
        self.mainViewRight = [[UIView alloc] init];
        _mainViewRight.backgroundColor = [UIColor redColor];
        _mainViewRight.layer.masksToBounds = NO;
        _mainViewRight.layer.cornerRadius = 3; // if you like rounded corners
        _mainViewRight.layer.shadowOffset = CGSizeMake(0, 1);
        _mainViewRight.layer.shadowRadius = 1;
        _mainViewRight.layer.shadowOpacity = 0.5;
        [self.contentView addSubview:self.mainViewRight];
        
        UILabel *lbl = [[UILabel alloc] init];
        lbl.frame = CGRectMake(10, 110, 100, 40);
        lbl.text = @"Test";
        lbl.backgroundColor = [UIColor clearColor];
        lbl.textColor = [UIColor whiteColor];
        [_mainViewLeft addSubview:lbl];

        UILabel *lbl2 = [[UILabel alloc] init];
        lbl2.frame = CGRectMake(10, 110, 100, 40);
        lbl2.text = @"Test";
        lbl2.backgroundColor = [UIColor clearColor];
        lbl2.textColor = [UIColor whiteColor];
        [_mainViewRight addSubview:lbl2];
        
        
        UIImageView *iv = [[UIImageView alloc] init];
        [iv setFrame:CGRectMake(5, 5, 134, 114)];
        iv.image = [UIImage imageNamed:@"img.png"];
        [_mainViewLeft addSubview:iv];
        
        
        UIImageView *iv2 = [[UIImageView alloc] init];
        [iv2 setFrame:CGRectMake(5, 5, 134, 114)];
        iv2.image = [UIImage imageNamed:@"img.png"];
        [_mainViewRight addSubview:iv2];
        
    }
    return self;
}

-(void)layoutSubviews{
    _mainViewLeft.frame = CGRectMake(9, 9, 143, 143);
    _mainViewRight.frame = CGRectMake(143 + 18, 9, 143, 143);
}

@end
