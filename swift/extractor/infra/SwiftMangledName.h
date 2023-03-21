#pragma once

#include <iostream>
#include <vector>
#include <variant>
#include <string>

#include "swift/extractor/trap/TrapLabel.h"

namespace codeql {

struct SwiftMangledName {
  using Part = std::variant<UntypedTrapLabel, std::string, unsigned>;

  std::vector<Part> parts;

  explicit operator bool() const { return !parts.empty(); }

  std::string str() const;

  // streaming labels or ints into a SwiftMangledName just appends them
  template <typename Tag>
  SwiftMangledName& operator<<(TrapLabel<Tag> label) {
    assert(label && "using undefined label in mangled name");
    parts.emplace_back(label);
    return *this;
  }

  SwiftMangledName& operator<<(unsigned i) {
    parts.emplace_back(i);
    return *this;
  }

  // streaming string-like stuff will add a new part it only if strictly required, otherwise it will
  // append to the last part if it is a string
  template <typename T>
  SwiftMangledName& operator<<(T&& arg) {
    if (parts.empty() || !std::holds_alternative<std::string>(parts.back())) {
      parts.emplace_back("");
    }
    std::get<std::string>(parts.back()) += std::forward<T>(arg);
    return *this;
  }

  SwiftMangledName& operator<<(SwiftMangledName&& other) {
    parts.reserve(parts.size() + other.parts.size());
    for (auto& p : other.parts) {
      parts.emplace_back(std::move(p));
    }
    other.parts.clear();
    return *this;
  }

  SwiftMangledName& operator<<(const SwiftMangledName& other) {
    parts.reserve(parts.size() + other.parts.size());
    parts.insert(parts.end(), other.parts.begin(), other.parts.end());
    return *this;
  }
};

}  // namespace codeql
