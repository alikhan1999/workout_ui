class AddUpdateEducationEntity {
  String? institute;
  String? degree;
  String? field;
  String? from;
  String? to;

  AddUpdateEducationEntity({this.institute, this.degree, this.field, this.from, this.to});

  AddUpdateEducationEntity.fromJson(Map<String, dynamic> json) {
    institute = json['institute'];
    degree = json['degree'];
    field = json['field'];
    from = json['from'];
    to = json['to'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['institute'] = this.institute;
    data['degree'] = this.degree;
    data['field'] = this.field;
    data['from'] = this.from;
    data['to'] = this.to;
    return data;
  }
}


