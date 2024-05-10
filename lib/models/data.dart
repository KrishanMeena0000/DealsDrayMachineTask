class DealsDray {
   String deviceId;
   String deviceName;
   String userId;
   String email;
   String password;
   String otp;
   String refferalCode;
   String mobileNumber;

   DealsDray(
   { 
   required this.deviceId,
   required this.deviceName,
   required this.userId,
   required this.email,
   required this.password,
   required this.otp,
   required this.refferalCode,
   required this.mobileNumber,}
   );
factory DealsDray.fromJson(dynamic json) => DealsDray(
      deviceId: json["deviceId"],
      deviceName: json["deviceName"],
      userId: json["userId"],
      email: json["email"],
      password: json["password"],
      otp: json["otp"],
      refferalCode: json["reffralCode"],
      mobileNumber: json["mobileNumber"]
      );
  
}
