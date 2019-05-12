import { StyleSheet } from 'react-native';
import theme from '../../../theme';

export default StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: theme.Color.White,
  },

  ctnMyClaimHeader: {
    height: 200,
    backgroundColor: '#ffb100',
    justifyContent: 'center',
  },

  txtMyClaimText1: {
    fontSize: theme.Size.FontHuger,
    color: theme.Color.White,
    alignSelf: 'center',
  },

  containerForm: {
    flex: 1,
    backgroundColor: theme.Color.White,
    flexDirection: 'column',
  },

  inStepMyClaim: {
    marginTop: 20,
    marginLeft: 20,
    marginRight: 20,
    flexDirection: 'row',
    textAlign: 'center',
    alignSelf: 'center',
  },

  filterTextMyClaim: {
    fontWeight: 'bold',
    marginRight: 5,
    alignSelf: 'center',
  },

  filterButtonMyClaim: {
    marginLeft: 5,
    marginRight: 5,
    backgroundColor: '#4083ff',
    color: '#4083ff',
    paddingLeft: 7,
    paddingRight: 7,
    height: 30,
    width: 'auto',
  },

  groupItemsForm: {
    margin: 20,
    backgroundColor: theme.Color.White,
    borderWidth: 1,
    borderColor: '#eeeeee',
    borderRadius: 5,
  },

  headerItemForm: {
    paddingLeft: 20,
    paddingRight: 20,
    backgroundColor: '#d8d8d8',
    height: 40,
    alignItems: 'center',
    flexDirection: 'row',
  },

  headerTextForm: {
    fontWeight: 'bold',
  },

  mainItemLeftForm: {
    width: '70%',
  },

  mainItemRightForm: {
    width: '30%',
  },

  mainItemForm: {
    paddingLeft: 20,
    paddingRight: 20,
    height: 80,
    alignItems: 'center',
    flexDirection: 'row',
    justifyContent: 'space-between',
    borderWidth: 1,
    borderColor: '#eeeeee',
  },

  mainTextLeftForm: {
    fontWeight: 'bold',
    fontSize: theme.Size.FontSmall,
  },

  mainRightForm: {
    justifyContent: 'flex-end',
    flexDirection: 'row',
  },

  mainTextRightTopForm: {
    fontWeight: 'bold',
    fontSize: theme.Size.FontBig,
    color: 'green',
  },

  mainTextRightBottomForm: {
    fontWeight: 'bold',
    fontSize: theme.Size.FontSmall,
    paddingRight: 5,
  },

  imageIconForm: {
    height: 20,
    width: 20,
  },

  mainTripItemForm: {
    paddingLeft: 20,
    paddingRight: 20,
    height: 40,
    justifyContent: 'center',
    borderWidth: 1,
    borderColor: '#eeeeee',
  },

  mainTripTextForm: {
    fontWeight: 'bold',
    fontSize: theme.Size.FontSmall,
  },

  buttonSubmit: {
    ...theme.Style.DefaultButton,
    marginTop: 20,
    width: '100%',
    borderRadius: 0,
    backgroundColor: '#4083ff',
    color: '#4083ff',
  },

  buttonText: {
    flexDirection: 'row',
    alignSelf: 'flex-end',
    paddingRight: 20,
  },

  textButton: {
    fontSize: theme.Size.FontSmall,
    color: 'white',
    alignSelf: 'center',
  },

  imageButton: {
    alignSelf: 'center',
    tintColor: 'white',
  },

  iconBuyMyClaim: {
    height: 70,
    width: 70,
    alignSelf: 'center',
    marginTop: 30,
  },
});
