import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isListViewVisible = false;
  List<Map<String, dynamic>> listResponse = [];
  int currentPage = 1;

  @override
  void initState() {
    _fetchDataFromApi();
    super.initState();
  }

  Future<void> _fetchDataFromApi() async {
    final response = await http.get(Uri.parse("https://reqres.in/api/users?page=$currentPage"));

    if (response.statusCode == 200) {
      setState(() {
        final mapResponse = json.decode(response.body);
        final newData = List<Map<String, dynamic>>.from(mapResponse['data']);

        // Append the new data to the existing list
        listResponse.addAll(newData);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fetch Data From API'),
      ),
      body: Stack(
        children: [
          if (isListViewVisible && listResponse.isNotEmpty)
            _buildListView(),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    isListViewVisible = !isListViewVisible;
                  });
                },
                child: Text(isListViewVisible ? 'Hide List' : 'Show List'),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListView() {
    return ListView.builder(
      itemCount: listResponse.length,
      itemBuilder: (context, index) {
        final responseData = listResponse[index];
        return _buildListItem(responseData);
      },
    );
  }

  Widget _buildListItem(Map<String, dynamic> responseData) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        leading: responseData['avatar'] != null
            ? CircleAvatar(
                backgroundImage: NetworkImage(responseData['avatar']),
              )
            : Icon(Icons.person),
        title: Text(responseData['first_name'] + ' ' + responseData['last_name']),
        subtitle: Text(responseData['email']),
      ),
    );
  }
}
