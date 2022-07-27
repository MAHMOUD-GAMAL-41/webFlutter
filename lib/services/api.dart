import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:petology/models/filters.dart';
import 'package:petology/utils/constants.dart';

import '../models/pet.dart';
import '../models/user.dart';

class ApiService {
  Future<String> registerUser(User data) async {
    String accessToken = "";
    final http.Response response = await http.post(
      Uri.parse(kAuthRegister),
      headers: {
        "accept": "application/json",
        "Content-Type": "application/json",
      },
      body: data.toRawJson(),
    );
    if (response.statusCode == 200) {
      accessToken = jsonDecode(response.body)["accessToken"];
    }
    return accessToken;
  }

  Future<String> loginUserWithEmail(String email, String password) async {
    String accessToken = "";
    final http.Response response = await http.post(
      Uri.parse(kAuthLogin),
      headers: {
        "accept": "application/json",
        "Content-Type": "application/json",
      },
      body: json.encode(
        {
          "email": email,
          "password": password,
        },
      ),
    );
    if (response.statusCode == 200) {
      accessToken = jsonDecode(response.body)["accessToken"];
    }
    return accessToken;
  }

  Future<String> loginUserWithFB() async {
    String accessToken = "";
    final http.Response response = await http.get(
      Uri.parse(kAuthFacebook),
      headers: {
        "accept": "application/json",
      },
    );
    if (response.statusCode == 200) {
      accessToken = jsonDecode(response.body)["accessToken"];
    }
    return accessToken;
  }

  Future<String> loginUserWithGoogle() async {
    String accessToken = "";
    final http.Response response = await http.get(
      Uri.parse(kAuthGoogle),
      headers: {
        "accept": "application/json",
      },
    );
    if (response.statusCode == 200) {
      accessToken = jsonDecode(response.body)["accessToken"];
    }
    return accessToken;
  }

  Future<Map<String, String>> getFirstSection() async {
    Map<String, String> data = {};
    final http.Response response = await http.get(
      Uri.parse(kFirstSec),
      headers: {
        "accept": "application/json",
        "Authorization":
            "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NjAsImVtYWlsIjoib21hcnlhaGlhdGF3Zmlla0BnbWFpbC5jb20iLCJpYXQiOjE2NTg5MTcyOTAsImV4cCI6MTY1OTAwMzY5MH0.BIBqEGsbzXu7PFYpsoH3R05JaXTG86pP0joHBvgwZE8",
      },
    );
    if (response.statusCode == 200) {
      data = jsonDecode(response.body);
    }
    return data;
  }

  Future<List<Pet>> getSpecificCategoryPets(int id) async {
    List<Pet> data = List<Pet>.empty();
    final http.Response response = await http.get(
      Uri.parse("$kSpecificCategory$id$kSharedPets"),
      headers: {
        "accept": "application/json",
        "Authorization":
            "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NjAsImVtYWlsIjoib21hcnlhaGlhdGF3Zmlla0BnbWFpbC5jb20iLCJpYXQiOjE2NTg5MTcyOTAsImV4cCI6MTY1OTAwMzY5MH0.BIBqEGsbzXu7PFYpsoH3R05JaXTG86pP0joHBvgwZE8",
      },
    );
    if (response.statusCode == 200) {
      data = decodePetsFromJson(response.body);
    }
    return data;
  }

  Future<Filters> getPetFiltersByCategory(int id) async {
    Filters? data;
    final http.Response response = await http.get(
      Uri.parse("$kFilterPets$id"),
      headers: {
        "accept": "application/json",
        "Authorization":
            "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NjAsImVtYWlsIjoib21hcnlhaGlhdGF3Zmlla0BnbWFpbC5jb20iLCJpYXQiOjE2NTg5MTcyOTAsImV4cCI6MTY1OTAwMzY5MH0.BIBqEGsbzXu7PFYpsoH3R05JaXTG86pP0joHBvgwZE8",
      },
    );
    if (response.statusCode == 200) {
      data = Filters.fromRawJson(response.body);
    }
    return data!;
  }

  Future<String> makePetReq(
    int categoryId,
    String img,
    String loc,
    String phone,
  ) async {
    String data = "";
    final http.Response response = await http.post(
      Uri.parse(kRequestPet),
      headers: {
        "accept": "application/json",
        "Content-Type": "application/json",
        "Authorization":
            "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NjAsImVtYWlsIjoib21hcnlhaGlhdGF3Zmlla0BnbWFpbC5jb20iLCJpYXQiOjE2NTg5MTcyOTAsImV4cCI6MTY1OTAwMzY5MH0.BIBqEGsbzXu7PFYpsoH3R05JaXTG86pP0joHBvgwZE8",
      },
      body: json.encode(
        {
          "categoryId": categoryId,
          "imageBase64": img,
          "location": loc,
          "phoneNumber": phone,
        },
      ),
    );
    if (response.statusCode == 200) {
      data = json.decode(response.body)["message"];
    }
    return data;
  }

  Future<Pet> addPet(
    Pet pet,
  ) async {
    Pet? data;
    final http.Response response = await http.post(
      Uri.parse(kListPets),
      headers: {
        "accept": "application/json",
        "Content-Type": "application/json",
        "Authorization":
            "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NjAsImVtYWlsIjoib21hcnlhaGlhdGF3Zmlla0BnbWFpbC5jb20iLCJpYXQiOjE2NTg5MTcyOTAsImV4cCI6MTY1OTAwMzY5MH0.BIBqEGsbzXu7PFYpsoH3R05JaXTG86pP0joHBvgwZE8",
      },
      body: json.encode(
        {
          "pet": {
            "name": pet.name,
            "image": pet.image,
            "year": pet.year,
            "month": pet.month,
            "size": pet.size,
            "breed": pet.breed,
            "gender": pet.gender,
            "hairLength": pet.hairLength,
            "color": pet.color,
            "careBehavior": pet.careBehavior,
            "houseTrained": pet.houseTrained,
            "description": pet.description,
            "location": pet.location,
            "phone": pet.phone,
            "vaccinated": pet.vaccinated,
            "categoryId": pet.categoryId,
          },
        },
      ),
    );
    if (response.statusCode == 200) {
      data = Pet.fromRawJson(response.body);
    }
    return data!;
  }

  Future<List<Pet>> getAllPets() async {
    List<Pet> data = List<Pet>.empty();
    final http.Response response = await http.get(
      Uri.parse(kListPets),
      headers: {
        "accept": "application/json",
        "Content-Type": "application/json",
        "Authorization":
            "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NjAsImVtYWlsIjoib21hcnlhaGlhdGF3Zmlla0BnbWFpbC5jb20iLCJpYXQiOjE2NTg5MTcyOTAsImV4cCI6MTY1OTAwMzY5MH0.BIBqEGsbzXu7PFYpsoH3R05JaXTG86pP0joHBvgwZE8",
      },
    );
    if (response.statusCode == 200) {
      data = decodePetsFromJson(response.body);
    }
    return data;
  }

  Future<Pet> getSpecficPets(int id) async {
    Pet? data;
    final http.Response response = await http.get(
      Uri.parse("$kListPets/$id"),
      headers: {
        "accept": "application/json",
        "Content-Type": "application/json",
        "Authorization":
            "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NjAsImVtYWlsIjoib21hcnlhaGlhdGF3Zmlla0BnbWFpbC5jb20iLCJpYXQiOjE2NTg5MTcyOTAsImV4cCI6MTY1OTAwMzY5MH0.BIBqEGsbzXu7PFYpsoH3R05JaXTG86pP0joHBvgwZE8",
      },
    );
    if (response.statusCode == 200) {
      data = Pet.fromRawJson(response.body);
    }
    return data!;
  }
}
