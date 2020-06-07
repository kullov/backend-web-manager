export default function authHeader() {
  let user = JSON.parse(sessionStorage.getItem('jhi-authenticationToken'));

  if (user) {
    return { Authorization: 'Bearer ' + user };
  } else {
    return {};
  }
}