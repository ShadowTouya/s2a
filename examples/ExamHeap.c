main(argc, argv, env){
	int base;
	int i;
	int val;

	base = malloc(40);
	
	i = 0;
	while(SQAless(i, 10)){
		SQAstore(base, i*4, i);
		i = i + 1;
	}

	i = 0;
	while(SQAless(i, 10)){
		val = SQAload(base, i*4);
		output(val);
		i = i + 1;
	}

	return 0;
}

