import 'dart:io';
import 'package:archive/archive_io.dart';
import 'package:path/path.dart' as path;

void main() {
  final inputDirectory = Directory(
    path.join(Directory.current.path, 'input_zip'),
  )..createSync(recursive: true);
  final outputDirectory = Directory(
    path.join(Directory.current.path, 'output_zip'),
  )..createSync(recursive: true);

  File(path.join(inputDirectory.path, 'file1.txt')).writeAsStringSync('file1');

  const zipFileName = 'output1.zip';
  final zipFilePath = path.join(inputDirectory.path, zipFileName);
  ZipFileEncoder().zipDirectory(inputDirectory, filename: zipFilePath);

  final zipBytes = File(
    zipFilePath,
  ).readAsBytesSync();

  File(
    path.join(outputDirectory.path, 'output2.zip'),
  )
    ..createSync(recursive: true)
    ..writeAsBytesSync(zipBytes);
}
