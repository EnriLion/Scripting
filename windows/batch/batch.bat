@echo off
TASKLIST
tasklist > process.txt
tasklist /fi "memusage gt 50000" 
