class MockUser {
  final int id;
  final String firstName;
  final String lastName;
  final String phoneNumber;
  final String email;

  MockUser({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.email,
  });
}

List<MockUser> generateMockUsers(int numberOfUsers) {
  List<MockUser> users = [];

  for (int i = 1; i <= numberOfUsers; i++) {
    users.add(MockUser(
      id: i,
      firstName: 'FirstName$i',
      lastName: 'LastName$i',
      phoneNumber: '123-456-789$i',
      email: 'user$i@example.com',
    ));
  }

  return users;
}
