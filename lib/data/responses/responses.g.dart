// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'responses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponse _$BaseResponseFromJson(Map<String, dynamic> json) {
  return BaseResponse()
    ..status = json['status'] as int?
    ..message = json['message'] as String?;
}

Map<String, dynamic> _$BaseResponseToJson(BaseResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

CustomerResponse _$CustomerResponseFromJson(Map<String, dynamic> json) {
  return CustomerResponse(
    json['id'] as String?,
    json['name'] as String?,
    json['numOfNotifications'] as int?,
  );
}

Map<String, dynamic> _$CustomerResponseToJson(CustomerResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'numOfNotifications': instance.numOfNotifications,
    };

ContactsResponse _$ContactsResponseFromJson(Map<String, dynamic> json) {
  return ContactsResponse(
    json['email'] as String?,
    json['phone'] as String?,
    json['link'] as String?,
  );
}

Map<String, dynamic> _$ContactsResponseToJson(ContactsResponse instance) =>
    <String, dynamic>{
      'email': instance.email,
      'phone': instance.phone,
      'link': instance.link,
    };

AuthenticationResponse _$AuthenticationResponseFromJson(
    Map<String, dynamic> json) {
  return AuthenticationResponse(
    json['customer'] == null
        ? null
        : CustomerResponse.fromJson(json['customer'] as Map<String, dynamic>),
    json['contacts'] == null
        ? null
        : ContactsResponse.fromJson(json['contacts'] as Map<String, dynamic>),
  )
    ..status = json['status'] as int?
    ..message = json['message'] as String?;
}

Map<String, dynamic> _$AuthenticationResponseToJson(
        AuthenticationResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'customer': instance.customer,
      'contacts': instance.contacts,
    };

ForgotPasswordResponse _$ForgotPasswordResponseFromJson(
    Map<String, dynamic> json) {
  return ForgotPasswordResponse(
    json['support'] as String?,
  )
    ..status = json['status'] as int?
    ..message = json['message'] as String?;
}

Map<String, dynamic> _$ForgotPasswordResponseToJson(
        ForgotPasswordResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'support': instance.support,
    };

ServiceResponse _$ServiceResponseFromJson(Map<String, dynamic> json) {
  return ServiceResponse(
    json['id'] as int?,
    json['title'] as String?,
    json['image'] as String?,
  );
}

Map<String, dynamic> _$ServiceResponseToJson(ServiceResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
    };

StoreResponse _$StoreResponseFromJson(Map<String, dynamic> json) {
  return StoreResponse(
    json['id'] as int?,
    json['title'] as String?,
    json['image'] as String?,
  );
}

Map<String, dynamic> _$StoreResponseToJson(StoreResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
    };

BannerResponse _$BannerResponseFromJson(Map<String, dynamic> json) {
  return BannerResponse(
    json['id'] as int?,
    json['title'] as String?,
    json['image'] as String?,
    json['link'] as String?,
  );
}

Map<String, dynamic> _$BannerResponseToJson(BannerResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'link': instance.link,
    };

HomeDataResponse _$HomeDataResponseFromJson(Map<String, dynamic> json) {
  return HomeDataResponse(
    (json['services'] as List<dynamic>?)
        ?.map((e) => ServiceResponse.fromJson(e as Map<String, dynamic>))
        .toList(),
    (json['stores'] as List<dynamic>?)
        ?.map((e) => StoreResponse.fromJson(e as Map<String, dynamic>))
        .toList(),
    (json['banners'] as List<dynamic>?)
        ?.map((e) => BannerResponse.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$HomeDataResponseToJson(HomeDataResponse instance) =>
    <String, dynamic>{
      'services': instance.services,
      'stores': instance.stores,
      'banners': instance.banners,
    };

HomeResponse _$HomeResponseFromJson(Map<String, dynamic> json) {
  return HomeResponse(
    json['data'] == null
        ? null
        : HomeDataResponse.fromJson(json['data'] as Map<String, dynamic>),
  )
    ..status = json['status'] as int?
    ..message = json['message'] as String?;
}

Map<String, dynamic> _$HomeResponseToJson(HomeResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

StoreDetailsResponse _$StoreDetailsResponseFromJson(Map<String, dynamic> json) {
  return StoreDetailsResponse(
    json['id'] as int?,
    json['title'] as String?,
    json['image'] as String?,
    json['details'] as String?,
    json['services'] as String?,
    json['about'] as String?,
  )
    ..status = json['status'] as int?
    ..message = json['message'] as String?;
}

Map<String, dynamic> _$StoreDetailsResponseToJson(
        StoreDetailsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'details': instance.details,
      'services': instance.services,
      'about': instance.about,
    };
