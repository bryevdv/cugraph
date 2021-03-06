/*
 * Copyright (c) 2020, NVIDIA CORPORATION.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <functions.hpp>
#include "COOtoCSR.cuh"

namespace cugraph {

// Explicit instantiation for uint32_t + float
template std::unique_ptr<GraphCSR<uint32_t, uint32_t, float>> coo_to_csr<uint32_t, uint32_t, float>(
  GraphCOOView<uint32_t, uint32_t, float> const &graph, rmm::mr::device_memory_resource *);

// Explicit instantiation for uint32_t + double
template std::unique_ptr<GraphCSR<uint32_t, uint32_t, double>>
coo_to_csr<uint32_t, uint32_t, double>(GraphCOOView<uint32_t, uint32_t, double> const &graph,
                                       rmm::mr::device_memory_resource *);

// Explicit instantiation for int + float
template std::unique_ptr<GraphCSR<int32_t, int32_t, float>> coo_to_csr<int32_t, int32_t, float>(
  GraphCOOView<int32_t, int32_t, float> const &graph, rmm::mr::device_memory_resource *);

// Explicit instantiation for int + double
template std::unique_ptr<GraphCSR<int32_t, int32_t, double>> coo_to_csr<int32_t, int32_t, double>(
  GraphCOOView<int32_t, int32_t, double> const &graph, rmm::mr::device_memory_resource *);

// Explicit instantiation for int64_t + float
template std::unique_ptr<GraphCSR<int64_t, int64_t, float>> coo_to_csr<int64_t, int64_t, float>(
  GraphCOOView<int64_t, int64_t, float> const &graph, rmm::mr::device_memory_resource *);

// Explicit instantiation for int64_t + double
template std::unique_ptr<GraphCSR<int64_t, int64_t, double>> coo_to_csr<int64_t, int64_t, double>(
  GraphCOOView<int64_t, int64_t, double> const &graph, rmm::mr::device_memory_resource *);

}  // namespace cugraph
