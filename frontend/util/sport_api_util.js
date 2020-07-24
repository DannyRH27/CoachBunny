export const allSports = () => $.ajax({
  url: '/api/sports',
  method: 'GET',
});
