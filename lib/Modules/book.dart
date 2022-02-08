// //import 'package:example/mock_data.dart';
// import 'package:flutter/material.dart';
// import 'package:booking_calendar/booking_calendar.dart';

// void main() {
//   runApp(const Booking());
// }

// class Booking extends StatefulWidget {
//   const Booking({Key? key}) : super(key: key);

//   @override
//   State<Booking> createState() => _BookingCalendarDemoAppState();
// }

// class _BookingCalendarDemoAppState extends State<Booking> {
//   final now = DateTime.now();
//   late BookingService mockBookingService;

//   @override
//   void initState() {
//     super.initState();
//     mockBookingService = BookingService(
//         serviceName: 'Booking',
//         serviceDuration: 30,
//         bookingEnd: DateTime(now.year, now.month, now.day, 8, 0),
//         bookingStart: DateTime(now.year, now.month, now.day, 18, 0));
//   }

//   Stream<dynamic>? getBookingStreamMock({required DateTime end, required DateTime start}) {
//     return Stream.value([]);
//   }

//   Future<dynamic> uploadBookingMock({required BookingService newBooking}) async {
//     await Future.delayed(const Duration(seconds: 1));
//     converted.add(DateTimeRange(start: newBooking.bookingStart, end: newBooking.bookingEnd));
//     //print('${newBooking.toJson()} has been uploaded');
//   }

//   List<DateTimeRange> converted = [];

//   List<DateTimeRange> convertStreamResultMock({required dynamic streamResult}) {
//     ///here you can parse the streamresult and convert to [List<DateTimeRange>]
//     DateTime first = now;
//     DateTime second = now.add(const Duration(minutes: 60));
//     DateTime third = now.subtract(const Duration(minutes: 240));
//     DateTime fourth = now.subtract(const Duration(minutes: 500));
//     converted.add(DateTimeRange(start: first, end: now.add(const Duration(minutes: 30))));
//     converted.add(DateTimeRange(start: second, end: second.add(const Duration(minutes: 23))));
//     converted.add(DateTimeRange(start: third, end: third.add(const Duration(minutes: 15))));
//     converted.add(DateTimeRange(start: fourth, end: fourth.add(const Duration(minutes: 50))));
//     return converted;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         //title: 'Booking Calendar Demo',
//         debugShowCheckedModeBanner: false,
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//         ),
//         home: Scaffold(
//           // appBar: AppBar(
//           //   title: const Text('Book With Us'),
//           // ),
//           body: Center(
//             child: BookingCalendar(
//               bookingService: mockBookingService,
//               convertStreamResultToDateTimeRanges: convertStreamResultMock,
//               getBookingStream: getBookingStreamMock,
//               uploadBooking: uploadBookingMock,
//             ),
//           ),
//         ));
//   }
// }