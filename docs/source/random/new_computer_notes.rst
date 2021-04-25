PC Build
========

TODO 

[x] Find candidates for each part
[ ] Make sure they are compatible with linux
[ ] Make sure they are compatible with eachother



Parts
-----

#. cpu
   - socket type compatible
#. ram
#. motherboard
#. graphics card
   - 30-40 of the total price
    - going to shoot for under 300
#. storage
#. power supply
#. case
#. cooler

The motherboard is a large, flat piece of silicon, while the CPU (Central Processing Unit) is a chip installed on the motherboard.

GPU
---

- RTX 3070
- hz
- apparently tensor cores are good for matrix multiplications

Best GPU overall: RTX 3080 and RTX 3090.

GPUs to avoid (as an individual): Any Tesla card; any Quadro card; any Founders
Edition card; Titan RTX, Titan V, Titan XP.

Cost-efficient but expensive: RTX 3080.

Cost-efficient and cheaper:  RTX 3070, RTX 2060 Super

I have little money: Buy used cards. Hierarchy: RTX 2070 ($400), RTX 2060
($300), GTX 1070 ($220), GTX 1070 Ti ($230), GTX 1650 Super ($190), GTX 980 Ti
(6GB $150).

I have almost no money: There are a lot of startups that promo their clouds:
Use free cloud credits and switch companies accounts until you can afford a
GPU.

I do Kaggle: RTX 3070.

I am a competitive computer vision, pretraining, or machine translation researcher: 4x RTX 3090. Wait until working builds with good cooling, and enough power are confirmed (I will update this blog post).

I am an NLP researcher: If you do not work on machine translation, language modeling, or pretraining of any kind, an RTX 3080 will be sufficient and cost-effective.

I started deep learning, and I am serious about it: Start with an RTX 3070. If you are still serious after 6-9 months, sell your RTX 3070 and buy 4x RTX 3080. Depending on what area you choose next (startup, Kaggle, research, applied deep learning), sell your GPUs, and buy something more appropriate after about three years (next-gen RTX 40s GPUs).

I want to try deep learning, but I am not serious about it: The RTX 2060 Super is excellent but may require a new power supply to be used. If your motherboard has a PCIe x16 slot and you have a power supply with around 300 W, a GTX 1050 Ti is a great option since it will not require any other computer components to work with your desktop computer.

GPU Cluster used for parallel models across less than 128 GPUs: If you are
allowed to buy RTX GPUs for your cluster: 66% 8x RTX 3080 and 33% 8x RTX 3090
(only if sufficient cooling is guaranteed/confirmed). If cooling of RTX 3090s
is not sufficient buy 33% RTX 6000 GPUs or 8x Tesla A100 instead. If you are
not allowed to buy RTX GPUs, I would probably go with 8x A100 Supermicro nodes
or 8x RTX 6000 nodes.

GPU Cluster used for parallel models across 128 GPUs: Think about 8x Tesla A100
setups. If you use more than 512 GPUs, you should think about getting a DGX
A100 SuperPOD system that fits your scale.

CPU
---



RAM
---

Motherboard

Power Supply
------------

80 plus gold, this is mainly efficiency.

make sure its compatible with gpu





