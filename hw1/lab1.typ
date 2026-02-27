= CS 498 Machine Learning System - Lab Assignment1

Zifan Ying (zifany4)

== (1)

$
  d_"head" = d_"model" / h = 768 / 12 = 64
$

== (2)

$
  d_"model" = h * d_"head" = 29 * 28 = 812
$

== (3)

Optimizer states are stored in FP32.

== (4)

Encoder self-attention: $O(s^2 d_"model")$

Decoder self-attention: $O(s^2 d_"model")$

== (5)

Token embeddings:

$
  n_"tokens" d_"model" = 65536 times 8192 = 2^29
$

Self-attention
($W_Q$, $W_K$, $W_V$, $W_O$ matrices):

$
  4 d_"model"^2 = 4 times 8192^2 = 2^28
$

MLP (up-down projection):

$
  2 times 4 times d_"model"^2 = 8 times 8192^2 = 2^29
$

Total (parameters):

$
  (2^28 + 2^29) L + 2^29 = L times 2^30 = 52076478464
$

Total memory: 

$
  52076478464 * 2 = 104152956928 "btyes"
$
