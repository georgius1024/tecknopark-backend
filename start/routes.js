'use strict'

/*
|--------------------------------------------------------------------------
| Routes
|--------------------------------------------------------------------------
|
| Http routes are entry points to your web application. You can create
| routes for different URL's and bind Controller actions to them.
|
| A complete guide on routing is available here.
| http://adonisjs.com/docs/4.0/routing
|
*/

const Route = use('Route')

Route.get('/api/v1/quotes', 'QuotesController.all')

Route.get('/', ({ request }) => {
  return { greeting: 'Hello world in JSON' }
})


// ������ ��� ������� � ������ (��� ��������, ��� �����������)
Route
  .group(() => {
    Route.get('mail/activate/:code', 'AuthController.mailActivate')
    Route.get('mail/reset/:code', 'AuthController.mailResetPassword')
  })

// ������ API, �� ��������� �����������
Route
  .group(() => {
    Route.post('register', 'AuthController.register')
    Route.post('sign-in', 'AuthController.signIn')
    Route.post('login-traditional', 'AuthController.loginTraditional')
    Route.post('login-passwordless', 'AuthController.loginPasswordless')
    Route.post('once/:code', 'AuthController.loginOnce')
    Route.post('forgot/:email', 'AuthController.forgotPassword')
  })
  .prefix('api/v1')

// ����� API, ����������� �������� � ��������� RESET
Route
  .group(() => {
    Route.post('resetpass', 'AuthController.resetPassword')
  })
  .prefix('api/v1')
  .middleware(['auth'])


// ������ API, ��������� ����� ����������� ������������/������
Route
  .group(() => {
    Route.get('user-profile', 'AuthController.showProfile')
    Route.post('user-profile', 'AuthController.updateProfile')
    Route.post('user-change-pass', 'AuthController.changePassword')

  })
  .prefix('api/v1')
  .middleware(['auth'])


// ������ API, ��������� ����������� ������������
Route
  .group(() => {
    Route.get('user-profile', 'AuthController.showProfile')
    Route.post('user-profile', 'AuthController.updateProfile')
    Route.post('user-change-pass', 'AuthController.changePassword')

  })
  .prefix('api/v1')
  .middleware(['auth', 'user'])

// ������ API, ��������� ����������� ������
Route
  .group(() => {
    Route.resource('user', 'UserController')
  })
  .prefix('api/v1')
  .middleware(['auth', 'admin'])
