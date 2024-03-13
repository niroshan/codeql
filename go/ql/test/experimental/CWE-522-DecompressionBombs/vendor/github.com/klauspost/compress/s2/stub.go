// Code generated by depstubber. DO NOT EDIT.
// This is a simple stub for github.com/klauspost/compress/s2, strictly for use in testing.

// See the LICENSE file for information about the licensing of the original library.
// Source: github.com/klauspost/compress/s2 (exports: Reader; functions: NewReader)

// Package s2 is a stub of github.com/klauspost/compress/s2, generated by depstubber.
package s2

import (
	io "io"
)

func NewReader(_ io.Reader, _ ...ReaderOption) *Reader {
	return nil
}

type ReadSeeker struct {
	Reader *Reader
}

func (_ ReadSeeker) DecodeConcurrent(_ io.Writer, _ int) (int64, error) {
	return 0, nil
}

func (_ ReadSeeker) Read(_ []byte) (int, error) {
	return 0, nil
}

func (_ ReadSeeker) ReadByte() (byte, error) {
	return 0, nil
}

func (_ ReadSeeker) ReadSeeker(_ bool, _ []byte) (*ReadSeeker, error) {
	return nil, nil
}

func (_ ReadSeeker) Reset(_ io.Reader) {}

func (_ ReadSeeker) Skip(_ int64) error {
	return nil
}

func (_ ReadSeeker) SkippableCB(_ byte, _ func(io.Reader) error) error {
	return nil
}

func (_ *ReadSeeker) ReadAt(_ []byte, _ int64) (int, error) {
	return 0, nil
}

func (_ *ReadSeeker) Seek(_ int64, _ int) (int64, error) {
	return 0, nil
}

type Reader struct{}

func (_ *Reader) DecodeConcurrent(_ io.Writer, _ int) (*ReadSeeker, error) {
	return nil, nil
}

func (_ *Reader) Read(_ []byte) (int, error) {
	return 0, nil
}

func (_ *Reader) ReadByte() (byte, error) {
	return 0, nil
}

func (_ *Reader) ReadSeeker(_ bool, _ []byte) (*ReadSeeker, error) {
	return nil, nil
}

func (_ *Reader) Reset(_ io.Reader) {}

func (_ *Reader) Skip(_ int64) error {
	return nil
}

func (_ *Reader) SkippableCB(_ byte, _ func(io.Reader) error) error {
	return nil
}

type ReaderOption func(*Reader) error
