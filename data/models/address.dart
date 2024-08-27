class Address {
  String? id;
  String? locationId;
  String? address;
  String? city;
  String? state;
  String? status;
  String? createdAt;
  String? updatedAt;

  Address(
      {this.id,
        this.locationId,
        this.address,
        this.city,
        this.state,
        this.status,
        this.createdAt,
        this.updatedAt});

  Address.fromJson(Map<String, dynamic> json) {
    id = json['id'].toString();
    locationId = json['location_id'];
    address = json['address'];
    city = json['city'];
    state = json['state'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['location_id'] = this.locationId;
    data['address'] = this.address;
    data['city'] = this.city;
    data['state'] = this.state;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
