import 'dart:convert';

enum LeadStatus { newLead, chatting, meeting, won }

class Customer {
  final String id;
  final String name;
  final String phone;
  final String city;
  final int budget;
  final String favoriteType;
  final String notes;
  final String status;
  final String lastActivity;
  LeadStatus leadStatus;

  Customer({
    required this.id,
    required this.name,
    required this.phone,
    required this.city,
    required this.budget,
    required this.favoriteType,
    required this.notes,
    required this.status,
    required this.lastActivity,
    required this.leadStatus,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'phone': phone,
      'city': city,
      'budget': budget,
      'favoriteType': favoriteType,
      'notes': notes,
      'status': status,
      'lastActivity': lastActivity,
      'leadStatus': leadStatus.name,
    };
  }

  factory Customer.fromJson(Map<String, dynamic> json) {
    LeadStatus statusMapping;
    switch(json['leadStatus']) {
      case 'new': statusMapping = LeadStatus.newLead; break;
      case 'chatting': statusMapping = LeadStatus.chatting; break;
      case 'meeting': statusMapping = LeadStatus.meeting; break;
      case 'won': statusMapping = LeadStatus.won; break;
      default: statusMapping = LeadStatus.newLead;
    }

    return Customer(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      phone: json['phone'] ?? '',
      city: json['city'] ?? '',
      budget: json['budget'] ?? 0,
      favoriteType: json['favoriteType'] ?? '',
      notes: json['notes'] ?? '',
      status: json['status'] ?? 'active',
      lastActivity: json['lastActivity'] ?? 'همین الان',
      leadStatus: statusMapping,
    );
  }
}

class SimCard {
  final String id;
  final String number;
  final int price;
  final String rondType;
  String status;
  final List<String> tags;

  SimCard({
    required this.id,
    required this.number,
    required this.price,
    required this.rondType,
    required this.status,
    required this.tags,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'number': number,
        'price': price,
        'rondType': rondType,
        'status': status,
        'tags': tags,
      };

  factory SimCard.fromJson(Map<String, dynamic> json) {
    return SimCard(
      id: json['id'] ?? '',
      number: json['number'] ?? '',
      price: json['price'] ?? 0,
      rondType: json['rondType'] ?? '',
      status: json['status'] ?? 'available',
      tags: List<String>.from(json['tags'] ?? []),
    );
  }
}

class Transaction {
  final String id;
  final String type;
  final String customerName;
  final String simNumber;
  final int price;
  final int profit;
  final String date;

  Transaction({
    required this.id,
    required this.type,
    required this.customerName,
    required this.simNumber,
    required this.price,
    required this.profit,
    required this.date,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'type': type,
        'customerName': customerName,
        'simNumber': simNumber,
        'price': price,
        'profit': profit,
        'date': date,
      };

  factory Transaction.fromJson(Map<String, dynamic> json) {
    return Transaction(
      id: json['id'] ?? '',
      type: json['type'] ?? 'sell',
      customerName: json['customerName'] ?? '',
      simNumber: json['simNumber'] ?? '',
      price: json['price'] ?? 0,
      profit: json['profit'] ?? 0,
      date: json['date'] ?? '',
    );
  }
}
