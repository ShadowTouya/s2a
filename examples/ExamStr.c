

main(argc, argv, env){
	int i;
	int val;
	int base;


	base = malloc(40);

	val = 97;
	i = 0;
	while(SQAless(i, 26)){
		SQAstore(base, i, val + i);
		i = i + 1;
	}
	SQAstore(base, 26, 0);
	puts(base);
	free(base);
	
	
	return 0;
}

