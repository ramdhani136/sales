class Test {
  int? id;
  String? name;
  int? idCustomer;
  dynamic address;
  String? pic;
  String? phone;
  dynamic priceNote;
  dynamic remindOrderNote;
  dynamic billingNote;
  dynamic compInformNote;
  String? img;
  dynamic signature;
  dynamic lat;
  dynamic lng;
  int? idUser;
  dynamic rating;
  dynamic surveyNote;
  int? idBranch;
  dynamic surveyAt;
  bool? isSurvey;
  int? status;
  String? createdAt;
  String? updatedAt;
  User? user;
  Branch? branch;
  Customer? customer;

  Test(
      {this.id,
      this.name,
      this.idCustomer,
      this.address,
      this.pic,
      this.phone,
      this.priceNote,
      this.remindOrderNote,
      this.billingNote,
      this.compInformNote,
      this.img,
      this.signature,
      this.lat,
      this.lng,
      this.idUser,
      this.rating,
      this.surveyNote,
      this.idBranch,
      this.surveyAt,
      this.isSurvey,
      this.status,
      this.createdAt,
      this.updatedAt,
      this.user,
      this.branch,
      this.customer});

  Test.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    idCustomer = json['id_customer'];
    address = json['address'];
    pic = json['pic'];
    phone = json['phone'];
    priceNote = json['priceNote'];
    remindOrderNote = json['remindOrderNote'];
    billingNote = json['billingNote'];
    compInformNote = json['compInformNote'];
    img = json['img'];
    signature = json['signature'];
    lat = json['lat'];
    lng = json['lng'];
    idUser = json['id_user'];
    rating = json['rating'];
    surveyNote = json['surveyNote'];
    idBranch = json['id_branch'];
    surveyAt = json['surveyAt'];
    isSurvey = json['isSurvey'];
    status = json['status'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    user = json['user'] != null ? User?.fromJson(json['user']) : null;
    branch = json['branch'] != null ? Branch?.fromJson(json['branch']) : null;
    customer =
        json['customer'] != null ? Customer?.fromJson(json['customer']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['id_customer'] = idCustomer;
    data['address'] = address;
    data['pic'] = pic;
    data['phone'] = phone;
    data['priceNote'] = priceNote;
    data['remindOrderNote'] = remindOrderNote;
    data['billingNote'] = billingNote;
    data['compInformNote'] = compInformNote;
    data['img'] = img;
    data['signature'] = signature;
    data['lat'] = lat;
    data['lng'] = lng;
    data['id_user'] = idUser;
    data['rating'] = rating;
    data['surveyNote'] = surveyNote;
    data['id_branch'] = idBranch;
    data['surveyAt'] = surveyAt;
    data['isSurvey'] = isSurvey;
    data['status'] = status;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    if (user != null) {
      data['user'] = user?.toJson();
    }
    if (branch != null) {
      data['branch'] = branch?.toJson();
    }
    if (customer != null) {
      data['customer'] = customer?.toJson();
    }
    return data;
  }
}

class User {
  int? id;
  String? name;
  String? username;
  dynamic email;
  dynamic phone;

  User({this.id, this.name, this.username, this.email, this.phone});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    username = json['username'];
    email = json['email'];
    phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['username'] = username;
    data['email'] = email;
    data['phone'] = phone;
    return data;
  }
}

class Branch {
  int? id;
  String? name;

  Branch({this.id, this.name});

  Branch.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}

class Customer {
  int? id;
  String? name;
  String? type;
  int? idCustomerGroup;
  bool? status;
  Customergroup? customergroup;

  Customer(
      {this.id,
      this.name,
      this.type,
      this.idCustomerGroup,
      this.status,
      this.customergroup});

  Customer.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    type = json['type'];
    idCustomerGroup = json['id_customerGroup'];
    status = json['status'];
    customergroup = json['customergroup'] != null
        ? Customergroup?.fromJson(json['customergroup'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['type'] = type;
    data['id_customerGroup'] = idCustomerGroup;
    data['status'] = status;
    if (customergroup != null) {
      data['customergroup'] = customergroup?.toJson();
    }
    return data;
  }
}

class Customergroup {
  int? id;
  String? name;
  dynamic deskripsi;
  bool? status;

  Customergroup({this.id, this.name, this.deskripsi, this.status});

  Customergroup.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    deskripsi = json['deskripsi'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['deskripsi'] = deskripsi;
    data['status'] = status;
    return data;
  }
}
