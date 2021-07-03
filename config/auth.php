<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Valores predeterminados de autenticación
    | ------------------------------------------------- -------------------------
    |
    | Esta opción controla el "protector" de autenticación y la contraseña predeterminados.
    | restablecer opciones para su aplicación. Puede cambiar estos valores predeterminados
    | según sea necesario, pero son un comienzo perfecto para la mayoría de las aplicaciones.
    |
    */

    'defaults' => [
        'guard' => 'web',
        'passwords' => 'users',
    ],

    /*
    |--------------------------------------------------------------------------
    | Guardias de autenticación
    | ------------------------------------------------- -------------------------
    |
    | A continuación, puede definir cada protección de autenticación para su aplicación.
    | Por supuesto, se ha definido una gran configuración predeterminada para usted.
    | aquí, que utiliza el almacenamiento de sesiones y el proveedor de usuarios Eloquent.
    |
    | Todos los controladores de autenticación tienen un proveedor de usuarios. Esto define cómo el
    | los usuarios se recuperan realmente de su base de datos u otro almacenamiento
    | mecanismos utilizados por esta aplicación para conservar los datos de su usuario.
    |
    | Supported: "session", "token"
    |
    */

    'guards' => [
        'web' => [
            'driver' => 'session',
            'provider' => 'users',
        ],

        'api' => [
            'driver' => 'token',
            'provider' => 'users',
            'hash' => false,
        ],
    ],

    /*
    |--------------------------------------------------------------------------
     Proveedores de usuarios
    | ------------------------------------------------- -------------------------
    |
    | Todos los controladores de autenticación tienen un proveedor de usuarios. Esto define cómo el
    | los usuarios se recuperan realmente de su base de datos u otro almacenamiento
    | mecanismos utilizados por esta aplicación para conservar los datos de su usuario.
    |
    | Si tiene varias tablas de usuario o modelos, puede configurar varias
    | fuentes que representan cada modelo / tabla. Estas fuentes pueden entonces
    | ser asignado a los guardias de autenticación adicionales que haya definido.
    |
    | Supported: "database", "eloquent"
    |
    */

    'providers' => [
        'users' => [
            'driver' => 'eloquent',
            'model' => App\User::class,
        ],

        // 'users' => [
        //     'driver' => 'database',
        //     'table' => 'users',
        // ],
    ],

    /*
    |--------------------------------------------------------------------------
    | Restablecimiento de contraseñas
    | ------------------------------------------------- -------------------------
    |
    | Puede especificar varias configuraciones de restablecimiento de contraseña si tiene más
    | de una tabla de usuario o modelo en la aplicación y desea tener
    | configuraciones de restablecimiento de contraseña independientes basadas en los tipos de usuario específicos.
    |
    | El tiempo de expiración es la cantidad de minutos que debe durar el token de reinicio.
    | considerado válido. Esta característica de seguridad mantiene los tokens de corta duración, por lo que
    | tienen menos tiempo para adivinar. Puede cambiar esto según sea necesario.
    |
    */

    'passwords' => [
        'users' => [
            'provider' => 'users',
            'table' => 'password_resets',
            'expire' => 60,
            'throttle' => 60,
        ],
    ],

    /*
    |--------------------------------------------------------------------------
    | Tiempo de espera de confirmación de contraseña
    | ------------------------------------------------- -------------------------
    |
    | Aquí puede definir la cantidad de segundos antes de la confirmación de la contraseña
    | se agota el tiempo de espera y se le pide al usuario que vuelva a ingresar su contraseña a través del
    | pantalla de confirmación. De forma predeterminada, el tiempo de espera dura tres horas.
    |
    */

    'password_timeout' => 10800,

];
