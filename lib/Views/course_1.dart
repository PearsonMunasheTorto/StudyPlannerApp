import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class ComputationalModeling extends StatefulWidget {
  const ComputationalModeling({super.key});

  @override
  State<ComputationalModeling> createState() => _ComputationalModelingState();
}

class _ComputationalModelingState extends State<ComputationalModeling> {
  final List<String> pdfFiles = [
    'Course outline'

  ];

  Color blue = const Color(0xF51F3E83).withOpacity(0.41);
  Color cardColor = const Color(0xF51F3E83).withOpacity(0.8);
  Color textColor = Colors.white.withOpacity(0.9);

  void viewPDF(int index) {
    Navigator.push(context, MaterialPageRoute(
        builder: (context) => DisplayDocuments(pdfPath: 'assets/notes/computationalModeling/${pdfFiles[index]}.pdf',),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blue,
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Course Details",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        backgroundColor: blue,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Mobile Application Development'.toUpperCase(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),textAlign: TextAlign.center),
              const SizedBox(height: 55),
              ...List.generate(pdfFiles.length, (index) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    color: cardColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(title: Text(pdfFiles[index],
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white)),
                    trailing:
                    Icon(Icons.picture_as_pdf, size: 18, color: textColor),
                    onTap: () {
                      viewPDF(index);
                    },
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}

class DisplayDocuments extends StatelessWidget {
  final String pdfPath;

  const DisplayDocuments({super.key, required this.pdfPath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PDF Viewer'),
        backgroundColor: const Color(0xFF132057).withOpacity(0.8),
      ),
      body: SfPdfViewer.asset(pdfPath,
        enableTextSelection: true,
        canShowPaginationDialog: true,
        canShowScrollHead: true,
        canShowScrollStatus: true,
      ),
    );
  }
}

