import {NativeModules, Platform} from 'react-native';

const {ReactNativeContactsSortOrder} = NativeModules;

const GIVEN_NAME = "GivenName";
const FAMILY_NAME = "FamilyName";
const DEFAULT = "Default";
let getSortOrder;

if (Platform.OS === 'android') {
    getSortOrder = () => FAMILY_NAME
} else {
    getSortOrder = ReactNativeContactsSortOrder.getContactsSortOrder;
}

export default {
    GIVEN_NAME,
    FAMILY_NAME,
    DEFAULT,
    getSortOrder
};
