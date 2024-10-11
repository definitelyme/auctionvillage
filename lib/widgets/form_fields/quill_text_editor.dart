// library quill_text_editor.dart;

// import 'dart:convert';
// import 'dart:io';
// import 'dart:typed_data';

// import 'package:auctionvillage/utils/utils.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_quill/flutter_quill.dart' hide Text;
// import 'package:flutter_quill_extensions/flutter_quill_extensions.dart';
// import 'package:path/path.dart' hide context;
// import 'package:path_provider/path_provider.dart';
// import 'package:tuple/tuple.dart';

// /// A stateless widget to render QuillTextEditor.
// class QuillTextEditor extends StatefulWidget {
//   final FocusNode? focus;
//   const QuillTextEditor({super.key, this.focus});

//   @override
//   State<QuillTextEditor> createState() => _QuillTextEditorState();
// }

// class _QuillTextEditorState extends State<QuillTextEditor> {
//   late QuillController _quillController;
//   late FocusNode _focusNode;

//   @override
//   void initState() {
//     _quillController = QuillController.basic();
//     _focusNode = widget.focus ?? FocusNode();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return _buildWelcomeEditor(context);
//   }

//   Widget _buildWelcomeEditor(BuildContext context) {
//     var toolbar = QuillToolbar.basic(
//       controller: _quillController,
//       embedButtons: FlutterQuillEmbeds.buttons(),
//       showAlignmentButtons: true,
//       afterButtonPressed: _focusNode.requestFocus,
//     );

//     return SafeArea(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: <Widget>[
//           toolbar,
//           //
//           Expanded(
//             flex: 15,
//             child: Container(
//               color: Colors.white,
//               padding: const EdgeInsets.only(left: 16, right: 16),
//               child: QuillEditor(
//                 controller: _quillController,
//                 scrollController: ScrollController(),
//                 scrollable: true,
//                 focusNode: _focusNode,
//                 autoFocus: false,
//                 readOnly: false,
//                 placeholder: 'Add content',
//                 expands: false,
//                 padding: EdgeInsets.zero,
//                 customStyles: DefaultStyles(
//                   h1: DefaultTextBlockStyle(
//                       const TextStyle(
//                         fontSize: 32,
//                         color: Colors.black,
//                         height: 1.15,
//                         fontWeight: FontWeight.w300,
//                       ),
//                       const Tuple2(16, 0),
//                       const Tuple2(0, 0),
//                       null),
//                   sizeSmall: const TextStyle(fontSize: 9),
//                 ),
//                 embedBuilders: [...FlutterQuillEmbeds.builders(), NotesEmbedBuilder(addEditNote: _addEditNote)],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildMenuBar(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     const itemStyle = TextStyle(
//       color: Colors.white,
//       fontSize: 18,
//       fontWeight: FontWeight.bold,
//     );
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Divider(
//           thickness: 2,
//           color: Colors.white,
//           indent: size.width * 0.1,
//           endIndent: size.width * 0.1,
//         ),
//         ListTile(
//           title: const Center(child: Text('Read only demo', style: itemStyle)),
//           dense: true,
//           visualDensity: VisualDensity.compact,
//           onTap: _readOnly,
//         ),
//         Divider(
//           thickness: 2,
//           color: Colors.white,
//           indent: size.width * 0.1,
//           endIndent: size.width * 0.1,
//         ),
//       ],
//     );
//   }

//   void _readOnly() {
//     // navigator.pushWidget(ReadOnlyPage());
//   }

//   Future<void> _addEditNote(BuildContext context, {Document? document}) async {
//     final isEditing = document != null;
//     final quillEditorController = QuillController(
//       document: document ?? Document(),
//       selection: const TextSelection.collapsed(offset: 0),
//     );

//     await showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         titlePadding: const EdgeInsets.only(left: 16, top: 8),
//         title: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text('${isEditing ? 'Edit' : 'Add'} note'),
//             IconButton(
//               onPressed: () => Navigator.of(context).pop(),
//               icon: const Icon(Icons.close),
//             )
//           ],
//         ),
//         content: QuillEditor.basic(
//           controller: quillEditorController,
//           readOnly: false,
//         ),
//       ),
//     );

//     if (quillEditorController.document.isEmpty()) return;

//     final block = BlockEmbed.custom(NotesBlockEmbed.fromDocument(quillEditorController.document));
//     final controller = _quillController;
//     final index = controller.selection.baseOffset;
//     final length = controller.selection.extentOffset - index;

//     if (isEditing) {
//       final offset = getEmbedNode(controller, controller.selection.start).item1;
//       controller.replaceText(offset, 1, block, TextSelection.collapsed(offset: offset));
//     } else {
//       controller.replaceText(index, length, block, null);
//     }
//   }
// }

// class NotesEmbedBuilder implements EmbedBuilder {
//   NotesEmbedBuilder({required this.addEditNote});

//   Future<void> Function(BuildContext context, {Document? document}) addEditNote;

//   @override
//   String get key => 'notes';

//   @override
//   Widget build(
//     BuildContext context,
//     QuillController controller,
//     Embed node,
//     bool readOnly,
//   ) {
//     final notes = NotesBlockEmbed('${node.value.data}').document;

//     return Material(
//       color: Colors.transparent,
//       child: ListTile(
//         title: Text(
//           notes.toPlainText().replaceAll('\n', ' '),
//           maxLines: 3,
//           overflow: TextOverflow.ellipsis,
//         ),
//         leading: const Icon(Icons.notes),
//         onTap: () => addEditNote(context, document: notes),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10),
//           side: const BorderSide(color: Colors.grey),
//         ),
//       ),
//     );
//   }
// }

// class NotesBlockEmbed extends CustomBlockEmbed {
//   const NotesBlockEmbed(String value) : super(noteType, value);

//   static const String noteType = 'notes';

//   static NotesBlockEmbed fromDocument(Document document) => NotesBlockEmbed(jsonEncode(document.toDelta().toJson()));

//   Document get document => Document.fromJson(jsonDecode('$data') as List<dynamic>);
// }
