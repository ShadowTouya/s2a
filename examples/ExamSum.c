g(from, to, step){
	int sum;
	sum = 0;
	while(SQAless(from, to+1)){
		sum = sum + from;
		from = from + step;
	}
	return sum;
}


main(argc, argv, env){
	int s;

	s = g(1, 100, 1);
	output(s);
	
	return 0;
}

