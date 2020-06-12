#import "ReactNativeContactsSortOrder.h"
@import Contacts;

@implementation ReactNativeContactsSortOrder

RCT_EXPORT_MODULE()

NSString *const GIVEN_NAME = @"GivenName";
NSString *const FAMILY_NAME = @"FamilyName";
NSString *const DEFAULT = @"Default";

RCT_EXPORT_METHOD(getContactsSortOrder: (RCTResponseSenderBlock)callback)
{
    CNContactSortOrder sortOrder = CNContactsUserDefaults.sharedDefaults.sortOrder;

    NSString *order;

    switch (sortOrder) {
        case CNContactSortOrderGivenName:
            order = GIVEN_NAME;
            break;
        case CNContactSortOrderFamilyName:
            order = FAMILY_NAME;
            break;
        default:
            order = DEFAULT;
            break;
    }
    callback(@[order]);
}

RCT_EXPORT_METHOD(getContactsDisplayOrder: (RCTResponseSenderBlock)callback)
{
    CNContact* fakeContact = [[CNContact alloc]init];
    CNContactDisplayNameOrder displayOrder = [[CNContactFormatter class]nameOrderForContact:fakeContact];

    NSString *order;

    switch (displayOrder) {
        case CNContactDisplayNameOrderGivenNameFirst:
            order = GIVEN_NAME;
            break;
        case CNContactDisplayNameOrderFamilyNameFirst:
            order = FAMILY_NAME;
            break;
        default:
            order = DEFAULT;
            break;
    }
    callback(@[order]);
}

@end
