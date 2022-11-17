
printStrs(strs){
	int i;
	int s;

	i = 0;
	s = SQAload(strs, i*4);
	while(s){
		puts(s);
		i = i + 1;
		s = SQAload(strs, i*4);
	}
}

main(argc, argv, env){
	output(argc);
	printStrs(argv);
	printStrs(env);
	return 0;
}

