part of 'util_cubit.dart';

enum FeedbackType {
  suggestion('suggestion'),
  inquiry('inquiry'),
  complaint('complaint');

  final String name;

  const FeedbackType(this.name);

  String get value => when(complaint: 'Issues & Complaints', inquiry: 'Inquiries', suggestion: 'Suggestions');

  String get plural => name.pluralize();

  String get toName => when(complaint: 'COMPLAINTS', inquiry: 'ENQUIRIES', suggestion: 'SUGGESTIONS');

  T when<T>({
    required T suggestion,
    required T inquiry,
    required T complaint,
  }) {
    switch (this) {
      case FeedbackType.suggestion:
        return suggestion;
      case FeedbackType.inquiry:
        return inquiry;
      case FeedbackType.complaint:
        return complaint;
    }
  }
}

@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class UtilState extends BaseState with _$UtilState {
  static final nameFocus = FocusNode();
  static final emailAddressFocus = FocusNode();
  static final supportMsgFocus = FocusNode();

  const factory UtilState({
    @Default(false) bool isLoading,
    @Default(false) bool validate,
    @Default(false) bool isUploadingImage,
    FeedbackType? feedbackType,
    required EmailAddress emailAddress,
    required DisplayName displayName,
    required FeedbackBody supportMessage,
    @Default(KtList.empty()) KtList<UploadableMedia> supportImages,
    @Default(None()) Option<AppHttpResponse?> status,
  }) = _UtilState;

  const UtilState._();

  factory UtilState.initial() => UtilState(
        displayName: DisplayName(null),
        emailAddress: EmailAddress(null),
        supportMessage: FeedbackBody(null),
      );
}
