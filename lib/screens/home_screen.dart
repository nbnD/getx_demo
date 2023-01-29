import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';
import 'package:getx_demo/controller/user_controller.dart';
import 'package:getx_demo/model/user_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<UserController>();
    // final controller =  Get.put<UserController>(UserController());
    List<UserModel> userList = controller.userList;
    return Scaffold(
      appBar: AppBar(title:const Text("Getx Demo"),),
      body: Obx(
        () => controller.isLoading.value
            ? const Center(child:  CircularProgressIndicator())
            : ListView.builder(
                itemCount: userList.length,
                itemBuilder: (_, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    child: Card(
                      color: Theme.of(context).primaryColor,
                      child: ListTile(
                        title: Text(
                          '${userList[index].firstName}  ${userList[index].lastName}',
                          style: const TextStyle(color: Colors.white),
                        ),
                        subtitle: Text(
                          '${userList[index].email}',
                          style: const TextStyle(color: Colors.white),
                        ),
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                             userList[index].avatar.toString()),
                        ),
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
