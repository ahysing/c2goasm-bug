// +build !cgo

package main

// This file Must be right next to assembly file stats_nocgo.s

import "unsafe"

// CalculateVariance gets the variance of the data set
func CalculateVariance(values []uint32) float64 {
	if len(values) == 0 || len(values) == 1 {
		return 0
	}

	lengthPtr := uintptr(len(values))
	var (
		buffer = unsafe.Pointer(&values[0])
		length = unsafe.Pointer(lengthPtr)
		res    float64
	)

	resultPointer := unsafe.Pointer(&res)
	__variance_uint32_nocgo_darwin(buffer, length, resultPointer)
	return res
}

//go:noescape
func __variance_uint32_nocgo_darwin(buffer, length, resultPointer unsafe.Pointer)
