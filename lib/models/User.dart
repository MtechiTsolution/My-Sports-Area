class UserRegistration {
  final String email;
  final String firstName;
  final String lastName;
  final String password;
  final String passwordConfirmation;
  final String status;

  UserRegistration(
      {required this.email,
      required this.firstName,
      required this.lastName,
      required this.password,
      required this.passwordConfirmation,
      required this.status});

  // Convert the model to a JSON format
  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'first_name': firstName,
      'last_name': lastName,
      'password': password,
      'password_confirmation': passwordConfirmation,
      'status': status
    };
  }

  // Create a UserRegistration object from JSON data
  factory UserRegistration.fromJson(Map<String, dynamic> json) {
    return UserRegistration(
      email: json['email'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      password: json['password'],
      passwordConfirmation: json['passwordConfirmation'],
      status: json['status'],
    );
  }
}

class UserLogin {
  final String email;
  final String password;

  UserLogin({
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'password': password,
    };
  }
}

class User {
  final int id;
  final String firstName;
  final String lastName;
  final String email;
  final String status;
  final String? dateOfBirth;
  final String? bio;
  final String? address;
  final String? phoneNumber;
  final String rememberToken;
  final String createdAt;
  final String updatedAt;
  final String? gender;
  final String? emailVerifiedAt; // Nullable field

  User(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.status,
      this.dateOfBirth,
      this.bio,
      this.address,
      this.phoneNumber,
      required this.rememberToken,
      required this.createdAt,
      required this.updatedAt,
      this.emailVerifiedAt,
      this.gender // Nullable field
      });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        id: json['id'],
        firstName: json['first_name'],
        lastName: json['last_name'],
        email: json['email'],
        status: json['status'],
        dateOfBirth: json['date_of_birth'],
        bio: json['bio'],
        phoneNumber: json['phoneNumber'],
        address: json['address'],
        rememberToken: json['remember_token'],
        createdAt: json['created_at'],
        updatedAt: json['updated_at'],
        emailVerifiedAt: json['email_verified_at'],
        gender: json['gender'] // Nullable field
        );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'first_name': firstName,
      'last_name': lastName,
      'email': email,
      'status': status,
      'date_of_birth': dateOfBirth,
      'bio': bio,
      'phoneNumber': phoneNumber,
      'address': address,
      'remember_token': rememberToken,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'email_verified_at': emailVerifiedAt ?? '',
      'gender': gender
    };
  }
}
