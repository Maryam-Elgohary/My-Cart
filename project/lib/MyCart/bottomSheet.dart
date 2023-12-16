import 'package:flutter/material.dart';

class CartBottomSheet extends StatefulWidget {
  const CartBottomSheet({super.key});

  @override
  State<CartBottomSheet> createState() => _CartBottomSheetState();
}

class _CartBottomSheetState extends State<CartBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await showModalBottomSheet(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(15.0),
              ),
            ),
            context: context,
            builder: (context) {
              return SizedBox(
                  height: 330,
                  child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          const Text(
                            "Remove from cart?",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 26),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Divider(
                            thickness: 1,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10, 10, 10, 10),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.network(
                                      'https://picsum.photos/seed/559/600',
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Align(
                                    alignment:
                                        const AlignmentDirectional(-1.00, 0.00),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              'Lowson Chair',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Align(
                                          alignment: const AlignmentDirectional(
                                              -1.00, 0.00),
                                          child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: 20,
                                                  height: 20,
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: Color(0xFF1B558E),
                                                    shape: BoxShape.circle,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                                const Text(
                                                  'Blue Grey',
                                                ),
                                              ]),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            const Text(
                                              '\$120.00',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 50,
                                            ),
                                            Container(
                                              width: 100,
                                              height: 40,
                                              decoration: BoxDecoration(
                                                color: const Color(0xFFDCDCDC),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: const Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(5, 5, 5, 5),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Icon(
                                                      Icons.remove_rounded,
                                                      color: Colors.black,
                                                      size: 24,
                                                    ),
                                                    Text(
                                                      '1',
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                    Icon(
                                                      Icons.add_rounded,
                                                      color: Colors.black,
                                                      size: 24,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Divider(
                            thickness: 1,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                  style: ButtonStyle(
                                      minimumSize:
                                          const MaterialStatePropertyAll(
                                              Size(180, 50)),
                                      backgroundColor:
                                          const MaterialStatePropertyAll(
                                              Color(0xFFDCDCDC)),
                                      shape: MaterialStatePropertyAll(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20)))),
                                  onPressed: () {},
                                  child: const Text(
                                    "Cancel",
                                    style: TextStyle(
                                        fontSize: 23, color: Colors.black),
                                  )),
                              ElevatedButton(
                                  style: ButtonStyle(
                                      minimumSize:
                                          const MaterialStatePropertyAll(
                                              Size(180, 50)),
                                      backgroundColor:
                                          const MaterialStatePropertyAll(
                                              Colors.black),
                                      shape: MaterialStatePropertyAll(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20)))),
                                  onPressed: () {},
                                  child: const Text(
                                    "Yes, Remove",
                                    style: TextStyle(fontSize: 23),
                                  )),
                            ],
                          )
                        ],
                      )));
            });
      },
      child: const Icon(
        Icons.delete_outline_rounded,
        color: Colors.black,
        size: 24,
      ),
    );
  }
}
