main(argc, argv, env){
	int a;
	int b;

	a = 30;
	b = 40;


	if(a){
		output(b);
	}else{
		output(a);
	}

	if(SQAless(b, 50)){
		output(b);
	}
	return 0;
}

