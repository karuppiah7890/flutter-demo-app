import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PhotosPage extends StatefulWidget {
  @override
  _PhotosPageState createState() => _PhotosPageState();
}

class _PhotosPageState extends State<PhotosPage> {
  var photosList;

  @override
  void initState() {
    super.initState();

    fetchData();
  }

  Future<void> fetchData() async {
    var url = "https://picsum.photos/list";

    var response = await http.get(url);

    var decodedJson = jsonDecode(response.body);
    photosList = decodedJson;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Photos Page"),
        ),
        body: photosList == null
            ? Center(
                child: CircularProgressIndicator(),
              )
            : RefreshIndicator(
                child: ListView.builder(
                    itemCount: photosList.length,
                    itemBuilder: (BuildContext context, int index) => Card(
                          elevation: 0.0,
                          child: ListTile(
                            title: Text(photosList[index]['filename']),
                            subtitle: Text(photosList[index]['author']),
                            leading: CircleAvatar(
                              child: Text(photosList[index]['id'].toString()),
                            ),
                            trailing: Text(photosList[index]['format']),
                          ),
                        )),
                onRefresh: fetchData,
              ));
  }
}
