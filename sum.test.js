 // sum.test.js - The test file
 const sum = require('./sum');
  
 describe('sum function', () => {
 // Test case 1: Testing positive numbers
 test('adds 1 + 2 to equal 3', () => {
   expect(sum(1, 2)).toBe(3);
 });
 
 // Test case 2: Testing negative numbers
 test('adds -3 + (-7) to equal -10', () => {
   expect(sum(-3, -7)).toBe(-10);
 });
 
 // Test case 3: Testing a positive and a negative number
 test('adds 5 + (-3) to equal 2', () => {
   expect(sum(5, -3)).toBe(2);
 });
 
 // Test case 4: Testing zero with a positive number
 test('adds 0 + 10 to equal 10', () => {
   expect(sum(0, 10)).toBe(10);
 });
 
 // Test case 5: Testing zero with a negative number
 test('adds 0 + (-5) to equal -5', () => {
   expect(sum(0, -5)).toBe(-5);
 });
});