
main(argc, argv, env){
	int hour;
	int minute;
	int second;

	hour = 10;
	second = 120;
	
	minute = (second + hour * 3600) / 60;
	
	output(hour);
	output(minute);
	output(second);
	

	return 0;
}

