import { NativeModules } from 'react-native';
const { ReactNativeContactsSortOrder } = NativeModules;

const GIVEN_NAME = "GivenName";
const FAMILY_NAME = "FamilyName";
const DEFAULT = "Default";

const getSortOrder = ReactNativeContactsSortOrder.getContactsSortOrder;

export default {
    GIVEN_NAME,
    FAMILY_NAME,
    DEFAULT,
    getSortOrder
};
