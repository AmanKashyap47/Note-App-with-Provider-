import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_note_list_update_delete/list_map_provider.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Data"),
      ),
      body: Consumer<ListMapProvider>(builder: (ctx, provider, __) {
        var allContacts = provider.getListData();
        return allContacts.isNotEmpty
            ? ListView.builder(
                itemCount: allContacts.length,
                itemBuilder: (_, index) {
                  return ListTile(
                    title: Text(allContacts[index]["name"]),
                    subtitle: Text(allContacts[index]["mobile"]),
                    trailing: SizedBox(
                      width: 100,
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              //provider.updateMap bhi use kar sakte hai
                              context.read<ListMapProvider>().updateMap({
                                "name": "Ram",
                                "mobile": "12345677",
                              }, index);
                            },
                            icon: Icon(Icons.edit),
                            color: Colors.blue,
                          ),
                          IconButton(
                            onPressed: () {
                              provider.deleteMap(index);
                            },
                            icon: Icon(Icons.delete),
                            color: Colors.red,
                          )
                        ],
                      ),
                    ),
                  );
                })
            : Center(
                child: Text("no Contacts yet!!"),
              );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<ListMapProvider>(context, listen: false).addMap({
            "name": "abhishak",
            "mobile": "1234567789",
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
