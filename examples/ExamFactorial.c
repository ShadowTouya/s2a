f(n){
	if(n){
		return f(n-1) + n;
	}else{
		return n;
	}
}



main(argc, argv, env){
	int s;
	s = f(2);	
	output(s);
	return 0;
}

