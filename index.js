import {NativeModules, Platform} from 'react-native';

const {ReactNativeContactsSortOrder} = NativeModules;

const GIVEN_NAME = "GivenName";
const FAMILY_NAME = "FamilyName";
const DEFAULT = "Default";
let getSortOrder;
let getDisplayOrder;

if (Platform.OS === 'android') {
    getSortOrder = () => FAMILY_NAME
} else {
    getSortOrder = ReactNativeContactsSortOrder.getContactsSortOrder;
}

if (Platform.OS === 'android') {
    getDisplayOrder = () => FAMILY_NAME
} else {
    getDisplayOrder = ReactNativeContactsSortOrder.getContactsDisplayOrder;
}

export default {
    GIVEN_NAME,
    FAMILY_NAME,
    DEFAULT,
    getSortOrder,
    getDisplayOrder
};
