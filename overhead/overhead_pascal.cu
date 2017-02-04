#include <iostream>
#include <chrono>

__global__ void nop() {}

void func(const int loop = 10000) {
  using namespace std::chrono;

  const auto beg = system_clock::now();
  for (int i = 0; i < loop; i++) {
    nop<<<1000, 128>>>();
  }
  cudaDeviceSynchronize();
  const auto end = system_clock::now();
  std::cout << static_cast<double>(duration_cast<microseconds>(end - beg).count()) / static_cast<double>(loop)
            << " [microseconds]\n";
}

int main() {
  func();
}
