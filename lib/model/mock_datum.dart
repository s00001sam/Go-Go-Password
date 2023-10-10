import 'package:gogo_password/model/bank_info.dart';
import 'package:gogo_password/model/login_info.dart';
import 'package:gogo_password/model/note_info.dart';
import 'package:gogo_password/util/constants.dart';

var allMockInfos = [login1, bank1, creditCard1, note1];

var login1 = LoginInfo(
  name: 'google',
  webUrl: 'www.google.com',
  webImageUrl: '',
  account: 's00001sam@gmail.com',
  password: '123456',
  note: '',
  createdTime: 1690729800,
  updatedTime: 1690729800,
);

var bank1 = createBankCard(
  '山姆銀行',
  '',
  '999',
  'ChiaWei Lee',
  '',
  1690709823,
  1690709823,
  '00001111222233335555',
  'a0123456789',
);

var creditCard1 = createCreditCard(
  '阿姆姆銀行',
  '',
  '123',
  'Chiawei Lee',
  '',
  1690709000,
  1690709000,
  '77771111888822229999',
  CreditCardType.visa,
  '12/26',
  '123',
);

var note1 = NoteInfo(
  name: '山姆秘密筆記喔',
  noteImageUrl: '',
  note: '我是山姆，我是孩子王～～～',
  createdTime: 1690709888,
  updatedTime: 1690709888,
);
