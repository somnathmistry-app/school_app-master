import 'package:flutter/material.dart';

import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart'
    show CalendarCarousel;
import 'package:flutter_calendar_carousel/classes/event.dart';
//import 'package:intl/intl.dart' show DateFormat;
import 'package:school_app/styles/app_colors.dart';

import '../styles/common_module/app_bar.dart';

class HolidayList extends StatefulWidget {
  const HolidayList({Key? key}) : super(key: key);


  @override
  _HolidayListState createState() =>  _HolidayListState();
}

class _HolidayListState extends State<HolidayList> {

 // DateFormat myDate = DateFormat.yMMMMd('en_US');
 // String _currentMonth = DateFormat.yMMM().format(DateTime.now());
 // List<DateTime> _markedDate = [DateTime(2018, 9, 20), DateTime(2018, 10, 11)];
  final DateTime _currentDate = DateTime.now();
  DateTime _currentDate2 = DateTime.now();
  DateTime _targetDateTime = DateTime.now();
  static final Widget _eventIcon =  Container(
    decoration:  BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(1000)),
        border: Border.all(color: Colors.blue, width: 2.0)),
    child: const Icon(
      Icons.person,
      color: Colors.amber,
    ),
  );

  @override
  void initState() {
 //  print(formattedY);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final calendarCarouselNoHeader = CalendarCarousel<Event>(
      todayBorderColor: AppColors.themeColor,
      onDayPressed: (date, events) {
        setState(() => _currentDate2 = date);
        for (var event in events) {

        }
      },
     // daysHaveCircularBorder: true,
      showOnlyCurrentMonthDate: false,
      weekendTextStyle: const TextStyle(
        color: Colors.black,
      ),
      thisMonthDayBorderColor: Colors.grey,
      weekFormat: false,
      firstDayOfWeek: 1,
      //markedDatesMap: _markedDateMap,
      height: 420.0,
      // daysTextStyle: TextStyle(color: Colors.white),
      headerTextStyle: const TextStyle(fontSize: 19,color: Colors.black),
      weekdayTextStyle: TextStyle(color: AppColors.themeColor),
      selectedDateTime: _currentDate2,
      targetDateTime: _targetDateTime,
      customGridViewPhysics: const NeverScrollableScrollPhysics(),
      markedDateCustomShapeBorder:
      const CircleBorder(side: BorderSide(color: Colors.yellow)),
      markedDateCustomTextStyle: const TextStyle(fontSize: 18, color: Colors.black,),
      showHeader: true,
      todayTextStyle: TextStyle(color: AppColors.white),
      todayButtonColor: AppColors.themeColorTwo,
      selectedDayTextStyle: const TextStyle(color: Colors.yellow,),
      minSelectedDate: _currentDate.subtract(const Duration(days: 360)),
      maxSelectedDate: _currentDate.add(const Duration(days: 360)),
      prevDaysTextStyle: const TextStyle(fontSize: 16, color: Colors.grey,),
      inactiveDaysTextStyle: const TextStyle(color: Colors.tealAccent, fontSize: 16,),
      onCalendarChanged: (DateTime date) {
        setState(() {
          _targetDateTime = date;
      //    _currentMonth = DateFormat.yMMM().format(_targetDateTime);
        });
      },
      onDayLongPressed: (DateTime date) {

      },
    );
    return Scaffold(
        appBar: MyAppBar.myAppBar('Holidays'),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16.0),
              child: calendarCarouselNoHeader,
            ),
            const SizedBox(height: 15,),
            const Text('   List Of Holiday',style: TextStyle(fontSize: 17,)),
            const SizedBox(height: 15),
            Expanded(
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                return Container(
                  height: 57,
                  margin: const EdgeInsets.symmetric(vertical: 8,horizontal: 12),
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 8),
                  decoration: BoxDecoration(border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(11)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Diwali',style: TextStyle(fontSize: 17,)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('24th, NOV',style: TextStyle(color: Colors.grey)),
                          Text('Monday',style: TextStyle(color: Colors.grey)),
                        ],
                      )
                    ],
                  ),
                );
              },
              ),
            )
          ],
        )
    );
  }
}

/*
FlutterCalendar(
          selectionMode: CalendarSelectionMode.single,
          onDayPressed: (DateTime date) {
            print(date);
          }
      )
 */
