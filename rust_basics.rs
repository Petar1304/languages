use std::mem;

fn analyze_slice(slice: &[i32]) {
  println!("first element of the slice: {}", slice[0]);
  println!("the slice has {} elements", slice.len());
}

fn main() {
  
  let logical: bool = true;
  let a_float: f32 = 3.14;
  let int: i16 = 1321;
  let mut mutable_int: i16 = 15;
  let c: char = 'c';

  println!("{}", c);

  let t: (u32, bool);
  t = (8, false);
  println!("{:?}", t);

  let matrix = ((1, 2, 3), (4, 5, 6), (7, 8, 9));
  println!("Matrix: {:?}", (matrix));
  
  let xs: [i32; 5] = [1, 2, 3, 4, 5];
  println!("{:?}", xs);
  analyze_slice(&xs);

  println!("array occupies {} bytes", mem::size_of_val(&xs));
}
