import { readFile } from 'fs';

for (let i = 0; i < 5; i++) {
  readFile('stuff.txt', (err, data) => {
    console.log(data.toString()); // callback
  });
}
console.log('here');

setTimeout(() => {
  console.log(2);
}, 0);
console.log(1);


const promise =
  new Promise((resolve, reject) => {
    resolve('good'); // ignores .catch
    reject('bad'); // ignores .then
  })
  .then(value => {
    console.log(value);
    return 1;
  })
  .then(value => {
    console.log(value);
    return 2;
  })
  .then(value => {
    console.log(value);
    throw('ERROR');
    return 3;
  })
  .then(value => {
    console.log(value);
    return 4;
  })

  .catch(err => {
    console.log(err);
  });
