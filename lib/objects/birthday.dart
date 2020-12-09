class Birthday {
  // FIELDS

  String _personName;
  DateTime _birthDate;
  DateTime _modifiedDate;
  DateTime _createdDate;

  // CONSTRUCTORS

  Birthday({
    String personName,
    DateTime birthDate,
    DateTime modifiedDate,
    DateTime createdDate,
  }) {
    /**
     * Create a [Birthday] object with given dates and person's name.
     * Unsupplied dates are set to the current date.
     */
    this._personName = personName ?? "Unknown";
    this._birthDate = birthDate ?? DateTime.now();
    this._modifiedDate = modifiedDate ?? DateTime.now();
    this._createdDate = createdDate ?? DateTime.now();
  }

  // DUMMY

  factory Birthday.dummy() => Birthday(personName: "Rijk");

  // JSON FUNCTIONS

  Map<String, dynamic> toJson() {
    return {
      "personName": this._personName,
      "createdDate": this._createdDate.toString(),
      "modifiedDate": this._modifiedDate.toString(),
      "birthDate": this._birthDate.toString(),
    };
  }

  factory Birthday.fromJson(Map<String, dynamic> jsonMap) {
    return Birthday(
      personName: jsonMap["personName"],
      birthDate: jsonMap["birthDate"],
      createdDate: jsonMap["createdDate"],
      modifiedDate: jsonMap["modifiedDate"],
    );
  }

  // GENERAL FUNCTIONS

  void updateModifiedDate() {
    /**
     * Sets this [Birthday]'s [modifiedDate] to [DateTime.now()].
     * Used when any fields are changed.
     */
    this._modifiedDate = DateTime.now();
  }

  // GETTERS

  String get personName => this._personName;
  DateTime get modifiedDate => this._modifiedDate;
  DateTime get createdDate => this._createdDate;
  DateTime get birthDate => this._birthDate;

  // SETTERS

  set personName(String newPersonName) {
    this._personName = newPersonName;
    this.updateModifiedDate();
  }

  set birthDate(dynamic newBirthDate) {
    if (newBirthDate is DateTime) {
      this._birthDate = newBirthDate;
      this.updateModifiedDate();
    }
    if (newBirthDate is String) {
      this._birthDate = DateTime.parse(newBirthDate);
      this.updateModifiedDate();
    }
  }
}
