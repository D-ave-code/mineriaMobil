import 'dart:convert';

class Books {
    Books({
        required this.autor,
        required this.id,
        required this.isbn,
        required this.price,
        required this.title,
    });

    String autor;
    int id;
    String isbn;
    double price;
    String title;

    factory Books.fromJson(Map<String, dynamic> json) => Books(
        autor: json["autor"],
        id: json["id"] as int,
        isbn: json["isbn"],
        price: json["price"] as double,
        title: json["title"],
    );

    Map<String, dynamic> toJson() => {
        "autor": autor,
        "id": id,
        "isbn": isbn,
        "price": price,
        "title": title,
    };
}