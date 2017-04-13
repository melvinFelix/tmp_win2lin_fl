//ROBOT 3 
 #include<stdio.h>

void traverse(int,int,int,int,int*,int*);

int main() {
    int n;
    int a[100];
    int b[100];
    printf("Enter the size of the grid\n");
    scanf("%d",&n);
    printf("The paths for the robot are\n");
    traverse(n,0,0,0,a,b);
    return 0;
}

void traverse(int n, int x, int y, int i, int* a, int* b) {
    int j = 0;
    if(x>(n-1)||y>(n-1)) {
        return;
    }
    a[i] = x;
    b[i] = y;
    if((x==(n-1))&&(y == (n-1))) {
        for(j = 0;j<2*n-2;j++) {
            printf("( %d , %d ) - ",a[j],b[j]);
        }
        printf("( %d , %d )\n",x,y);
        return;
    }
    traverse(n,x+1,y,i+1,a,b);
    traverse(n,x,y+1,i+1,a,b);
    return;
}

// ROBOT 4
  #include<stdio.h>

void traverse(int,int,int,int,int*,int*);

int main() {
	int n;
	int a[100];
	int b[100];
	printf("Enter the size of the grid\n");
	scanf("%d",&n);
	printf("The paths for the robot are\n");
	traverse(n,0,0,0,a,b);
	return 0;
}

void traverse(int n, int x, int y, int i, int*a, int* b) {
    int j = 0;
    if(x>(n-1)||y>(n-1)) {
        return;
    }
    a[i] = x;
    b[i] = y;
    if((x == (n-1))&&(y == (n-1))) {
        for(j = 0;j<2*n-2;j++) {
            if(a[j]!=(n-1)||b[j]!=(n-1)) {
                printf("( %d , %d ) - ",a[j],b[j]);
            }
        }
        printf("( %d , %d )\n",x,y);
        return;
    }
    traverse(n,x+1,y,i+1,a,b);
    traverse(n,x,y+1,i+1,a,b);
    traverse(n,x+1,y+1,i+1,a,b);
    return;
}

//ROBOT 5
  #include<stdio.h>

void traverse(int, int, int, int, int*, int*, int*, int*, int);

int main() {
	int n;
	int a[100];
	int b[100];
	int p1[100];
	int p2[100];
	int i = 0;
	printf("Enter the size of the grid\n");
	scanf("%d",&n);
	printf("Enter the grid points that are offsets\n");
	scanf("%d %d",&p1[0],&p2[0]);
	while((p1[i]!=-1)&&(p2[i]!=-1)) {
	    i++;
	    scanf("%d %d",&p1[i],&p2[i]);
	}
	printf("The paths for the robot are\n");
	traverse(n,0,0,0,a,b,p1,p2,i);
	return 0;
}

void traverse(int n, int x, int y, int l, int* a, int* b, int* p1, int *p2, int i) {
    int j;
    if(x>(n-1)||y>(n-1)) {
        return;
    }
    
    for(j = 0;j<=(i-1);j++) {
        if((x==(p1[j]))&&(y == p2[j])) {
            return;
        }
    }
    a[l] = x;
    b[l] = y;
    if((x == (n-1))&&(y == (n-1))) {
        for(j = 0;j<2*n-2;j++) {
            if(a[j]!=(n-1)||b[j]!=(n-1)) {
                printf("( %d , %d ) - ",a[j],b[j]);
            }
        }
        printf("( %d , %d )\n",x,y);
    }
    traverse(n,x+1,y,l+1,a,b,p1,p2,i);
    traverse(n,x,y+1,l+1,a,b,p1,p2,i);
    return;
}

//ROBOTS 6
  #include<stdio.h>

void traverse(int, int, int, int, int*, int*, int*, int*, int);

int main() {
	int n;
	int a[100];
	int b[100];
	int p1[100];
	int p2[100];
	int i = 0;
	printf("Enter the size of the grid\n");
	scanf("%d",&n);
	printf("Enter the grid points that are offsets\n");
	scanf("%d %d",&p1[0],&p2[0]);
	while((p1[i]!=-1)&&(p2[i]!=-1)) {
	    i++;
	    scanf("%d %d",&p1[i],&p2[i]);
	}
	printf("The paths for the robot are\n");
	traverse(n,0,0,0,a,b,p1,p2,i);
	return 0;
}

void traverse(int n, int x, int y, int l, int* a ,int* b, int* p1, int* p2, int i) {
    int j = 0;
    if(x>(n-1)||y>(n-1)) {
        return;
    }
    
    for(j = 0;j<=(i-1);j++) {
        if((x == p1[j])&&(y == p2[j])) {
            return;
        }
    }
    a[l] = x;
    b[l] = y;
    if((x == (n-1))&&(y == (n-1))) {
        for(j = 0;j<2*n-2;j++) {
            if(a[j]!=(n-1)||b[j]!=(n-1)) {
                printf("( %d , %d ) - ",a[j],b[j]);
            }
        }
        printf("( %d , %d )\n",x,y);
    }
    traverse(n,x+1,y,l+1,a,b,p1,p2,i);
    traverse(n,x,y+1,l+1,a,b,p1,p2,i);
    traverse(n,x+1,y+1,l+1,a,b,p1,p2,i);
    return;
}

