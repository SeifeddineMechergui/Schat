const jsonfile = require('jsonfile');
const moment = require('moment');
const simpleGit = require('simple-git');

const importRandom = async () => {
  const randomModule = await import('random');
  return randomModule.default;
};

const FILE_PATH = "./data.json";
const makeCommit = async (n) => {
  if (n === 0) return simpleGit().push();
  const random = await importRandom();
  const x = random.int(0, 54);
  const y = random.int(0, 6);
  const DATE = moment().subtract(1, 'y').add(1, 'd')
    .add(x, 'w').add(y, 'd').format();
  const data = {
    date: DATE,
  };
  console.log(DATE);
  jsonfile.writeFile(FILE_PATH, data, async () => {
    await simpleGit().add([FILE_PATH]).commit(DATE, { '--date': DATE });
    await makeCommit(n - 1);
  });
};
makeCommit(10);
/*
const jsonfile = require('jsonfile');
const moment = require('moment');
const simpleGit = require('simple-git');

const importRandom = async () => {
  const randomModule = await import('random');
  return randomModule.default;
};

const FILE_PATH = "./data.json";

const makeCommit = async (n) => {
  if (n === 0) return simpleGit().push();

  const random = await importRandom();
  const startDate = moment('2021-10-02');
  const currentDate = moment();
  const daysDiff = currentDate.diff(startDate, 'days');

  const randomDays = random.int(0, daysDiff);
  const DATE = startDate.clone().add(randomDays, 'days').format();

  const data = {
    date: DATE,
  };

  console.log(DATE);

  jsonfile.writeFile(FILE_PATH, data, async () => {
    await simpleGit().add([FILE_PATH]).commit(DATE, { '--date': DATE });
    await makeCommit(n - 1);
  });
};

makeCommit(3000);

*/