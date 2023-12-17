import 'package:flutter/material.dart';

class SignupFailedDialog extends StatelessWidget {
  const SignupFailedDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.all(20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0.0),
      ),
      content: Container(
        width: double.infinity,
        decoration: BoxDecoration(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              child: Row(
                children: [
                  Icon(Icons.warning),
                  SizedBox(width: 5),
                  Text('Error al registrar.')
                ],
              ),
            ),
            SizedBox(height: 8),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Icon(
                          Icons.error,
                          color: Colors.purple.withOpacity(0.6),
                        ),
                      ),
                      SizedBox(width: 5),
                      Expanded(
                        child: Text(
                          'No puedes dejar el campo nombre vacio.',
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Icon(
                          Icons.error,
                          color: Colors.purple.withOpacity(0.6),
                        ),
                      ),
                      SizedBox(width: 5),
                      Expanded(
                        child: Text(
                          'No puedes dejar el campo nombre vacio.',
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Icon(
                          Icons.error,
                          color: Colors.purple.withOpacity(0.6),
                        ),
                      ),
                      SizedBox(width: 5),
                      Expanded(
                        child: Text(
                          'No puedes dejar el campo nombre vacio.',
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Icon(
                          Icons.error,
                          color: Colors.purple.withOpacity(0.6),
                        ),
                      ),
                      SizedBox(width: 5),
                      Expanded(
                        child: Text(
                          'No puedes dejar el campo nombre vacio.',
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Icon(
                          Icons.error,
                          color: Colors.purple.withOpacity(0.6),
                        ),
                      ),
                      SizedBox(width: 5),
                      Expanded(
                        child: Text(
                          'No puedes dejar el campo nombre vacio.',
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Icon(
                          Icons.error,
                          color: Colors.purple.withOpacity(0.6),
                        ),
                      ),
                      SizedBox(width: 5),
                      Expanded(
                        child: Text(
                          'No puedes dejar el campo nombre vacio.',
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Icon(
                          Icons.error,
                          color: Colors.purple.withOpacity(0.6),
                        ),
                      ),
                      SizedBox(width: 5),
                      Expanded(
                        child: Text(
                          'No puedes dejar el campo nombre vacio.',
                        ),
                      )
                    ],
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Cerrar'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
