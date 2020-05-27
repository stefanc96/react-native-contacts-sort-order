#import "ReactNativeContactsSortOrder.h"
@import Contacts;

@implementation ReactNativeContactsSortOrder

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(getContactsSortOrder: (RCTResponseSenderBlock)callback)
{
    CNContactSortOrder sortOrder = CNContactsUserDefaults.sharedDefaults.sortOrder;

    NSString *const GIVEN_NAME = @"GivenName";
    NSString *const FAMILY_NAME = @"FamilyName";
    NSString *const DEFAULT = @"Default";
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

@end
