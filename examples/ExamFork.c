main(argc, argv, env){
	int pid;
	pid = fork();
	if(SQAless(pid, 0)){
		output(pid);
	}
	else if(SQAequal(pid, 0)){
		output(pid);
	}
	else{
		wait(0);
		output(pid);
	}
	return 0;
}

