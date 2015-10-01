int add(int, int);
double div(int,int);
int main()
{
	int a, b;
	double c;
	a=10;
	b=12;
	//c=add(a,b);
	c=div(a,b);
	return c;
}

int add(int a, int b)
{
	return a+b;
}

double div(int a,int b)
{
	return (a/b);
}
