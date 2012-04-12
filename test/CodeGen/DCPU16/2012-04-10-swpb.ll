; XFAIL: *
; RUN: llc < %s -march=dcpu16 | FileCheck %s
target datalayout = "e-p:16:16:16-i1:8:8-i8:8:8-i16:16:16-i32:16:16"
target triple = "dcpu16"

define i16 @swpb(i16 %x) nounwind readnone {
entry:
  %shl = shl i16 %x, 8
  %shr = ashr i16 %x, 8
  %or = or i16 %shl, %shr
  ret i16 %or
}