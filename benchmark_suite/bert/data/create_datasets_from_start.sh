#!/bin/bash

# Copyright (c) 2019-2020 NVIDIA CORPORATION. All rights reserved.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#Download
#download_wikipedia --outdir ${BERT_PREP_WORKING_DIR}/wikipedia/
python3.8 data/bertPrep.py --action download --dataset google_pretrained_weights  # Includes vocab
python3.8 data/bertPrep.py --action download --dataset squad
#python3 /workspace/bert/data/bertPrep.py --action download --dataset mrpc
#python3 /workspace/bert/data/bertPrep.py --action download --dataset sst-2
