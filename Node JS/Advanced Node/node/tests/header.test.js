const Page = require('./helpers/page');

let page;

beforeEach(async () => {
  page = await Page.build();
  await page.goto('http://localhost:3000', { waitUntil: 'networkidle2' });
});

afterEach(async () => {
  await page.close();
});

test('the header has the correct text', async () => {
  expect(await page.getContentsOf('a.brand-logo')).toEqual('Blogster');
});

/// This test will fail because the OAuth flow doesn't work
test('clicking login starts oauth flow', async () => {
  await page.click('.right a');
  expect(await page.url()).toMatch(/acounts\.google\.com/);
});

test('When signed in, shows logout button', async () => {
  await page.login();
  expect(await page.getContentsOf('a[href="/auth/logout"]')).toEqual('Logout');
});