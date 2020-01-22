int main(void) {
  volatile int i;
  volatile int a;

  for(i=0;i<10000000;i++) {
    a=i+5;
  }
#ifdef SYSTEMC
  asm volatile ("ecall");
#endif
  return 0;
}
