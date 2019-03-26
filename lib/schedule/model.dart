import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_pk/util.dart';

class Speaker {
  final String id;
  final String name;
  final String photoUrl;
  final String description;
  final DocumentReference reference;

  Speaker({
    this.name,
    this.id,
    this.description,
    this.reference,
    this.photoUrl,
  });

  Speaker.fromMap(Map<String, dynamic> map, {this.reference})
      : id = map['id'],
        description = map['description'],
        name = map['name'],
        photoUrl = map['photoUrl'];

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "photoUrl": photoUrl,
      };

  Speaker.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, reference: snapshot.reference);
}

class Session {
  final String id;
  final String title;
  final DateTime startDateTime;
  final DateTime endDateTime;
  final String color;
  final String textColor;
  final String description;
  final String speakerId;
  final List speakers;
  final DocumentReference reference;

  Session(
      {this.id,
      this.title,
      this.endDateTime,
      this.startDateTime,
      this.color,
      this.textColor,
      this.description,
      this.speakerId,
      this.reference,
      this.speakers});

  Session.fromMap(Map<String, dynamic> map, {this.reference})
      : id = map['id'],
        title = map['title'],
        endDateTime = toDateTime(map['endDateTime']),
        startDateTime = toDateTime(map['startDateTime']),
        color = map['color'],
        textColor = map['textColor'],
        speakerId = map['speakerId'],
        speakers = map['speakers'],
        description = map['description'];

  Session.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, reference: snapshot.reference);
}

class Sponsor {
  final int type;
  final String imageUrl;
  final DocumentReference reference;

  Sponsor({
    this.type,
    this.reference,
    this.imageUrl,
  });

  Sponsor.fromMap(Map<String, dynamic> map, {this.reference})
      : type = map['type'],
        imageUrl = map['imageUrl'];

  Map<String, dynamic> toJson() => {
    "type": type,
    "imageUrl": imageUrl,
  };

  Sponsor.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, reference: snapshot.reference);
}
