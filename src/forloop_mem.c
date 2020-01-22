int main(void) {
  unsigned int vet[1000];
  volatile int i,j;
  volatile int a;

  for(j=0;j<5000;j++) {
	  for(i=0;i<1000;i++) {
		vet[i]=i+j;
	  }
	  for(i=0;i<1000;i++) {
		a+=vet[i];
	  }
  }
#ifdef SYSTEMC  
  asm volatile ("ecall");
#endif
  return 0;
}
