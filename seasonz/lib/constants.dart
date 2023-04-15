import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:intl/intl.dart';

const Color kPrimaryColor = Colors.white;
const Color kComponentColor = Colors.blue;
const Color kSecondaryColor = Color(0XFFEFEFF4); //Color(0XFFebecf1);
const Color kShadowColor = Color(0XFFe4e3e3);

final DateFormat kDateFormat = DateFormat.yMMMd().add_jm();

final String kPrimaryFont = 'Roboto';

final double kFontSizeVerySmall = 1.5;
final double kFontSizeSmall = 1.6;
final double kFontSizeNormal = 1.8;
final double kFontSizeSubHeading = 2.3;
final double kFontSizeHeading = 3;

final double kIconVerySizeSmall = 2;
final double kIconSizeSmall = 2.3;
final double kIconSizeNormal = 2.5;
final double kIconSizeLarge = 3.5;

const kSendButtonTextStyle = TextStyle(
  color: Colors.lightBlueAccent,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  border: InputBorder.none,
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
  ),
);

const kTextFieldDecoration = InputDecoration(
  hintText: '',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);

//user properties...

const kUserId = 'id';
const kUsername = 'username';
const kUserGender = 'gender';
const kUserRole = 'role';
const kUserDOB = 'birthday';
const kUserPhotoUrl = 'photo_url';
const kUserLatitude = 'latitude';
const kUserLongitude = 'longitude';
const kUserSkills = 'skills';
const kUserLocation = 'user_location';
const kUserGeopoint = 'user_geopoint';
const kUserSkillsList = 'skills_list';

const kUserGenderMan = 'man';
const kUserGenderWoman = 'woman';
const kUserGenderTrans = 'transgender';

const kUserRoleProfessional = 'professional';
const kUserRoleEmployer = 'employer';

const kPeerId = 'peer_id';
const kChatId = 'chat_id';

const kSkillId = 'skill_id';
const kSkillName = 'name';
const kSkillIconUrl = 'icon_url';
const kSkillColor = 'color';

const kJobId = 'job_id';
const kJobStartTime = 'start_time';
const kJobEndTime = 'end_time';
const kJobDescription = 'description';
const kJobHourlyRate = 'hourly_rate';
const kJobGeopint = 'job_location';
const kJobLocation = 'job_geopoint';
const kJobPostedBy = 'posted_by';
const kJobPostedOn = 'posted_on';
const kJobViews = 'views';
const kJobApplied = 'applied';
const kJobSelected = 'selected';
const kJobTitle = 'title';
const kJobType = 'type';
const kJobTypePosted = 'posted';
const kJobTypeApplied = 'applied';
const kJobTypeReceived = 'received';
const kJobTypeApproved = 'approved';

const kJobStatus = 'status';
const kJobStatusActive = 'active';
const kJobStatusClosed = 'closed';
const kJobStatusExpired = 'expired';

const kTimeStamp = 'time_stamp';
const kSenderId = 'sender_id';

const kNotificationOpened = 'isOpened';
const kNotificationType = 'type';
const kNotificationTypeApplied = 'applied';
const kNotificationTypeReceived = 'received';
const kNotificationTypeHired = 'hired';
const kNotificationTypeApproved = 'approved';
const kNotificationTypeRequest = 'request';
const kNotificationTypeAccept = 'accepted';
const kNotificationTypeJobDayAlert = 'job_day_alert';
const kNotificationTypeJobStartAlert = 'job_start_alert';
const kNotificationTypeJobCompleteAlert = 'job_complete_alert';

//Tables...
const kTableAllSkills = 'all_skills';
const kTableAllUsers = 'all_users';
const kTableAllJobs = 'all_jobs';
const kTableAllMessages = 'all_message_list';
const kTableAllChats = 'all_chats';
const kTableMyJobs = 'my_jobs';
const kTableMyActiveConnections = 'my_active_connections';
const kTableFavorite = 'favorites';
const kTableNotifications = 'notifications';
const kTableSavesJobs = 'saved_jobs';
