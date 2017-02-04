#include <iostream>
#include <chrono>
#include <omp.h>

void func(const int loop = 1) {
  using namespace std::chrono;

  const auto beg = system_clock::now();
  for (int i = 0; i < loop; i++) {
#pragma omp parallel
    {}
  }
  const auto end = system_clock::now();
  std::cout << static_cast<double>(duration_cast<microseconds>(end - beg).count()) / static_cast<double>(loop)
            << " [microseconds]\n";
}

int main() {
  func();
}
