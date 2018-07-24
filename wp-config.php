<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе
 * установки. Необязательно использовать веб-интерфейс, можно
 * скопировать файл в "wp-config.php" и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки MySQL
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** Параметры MySQL: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define('DB_NAME', 'wp-auth');

/** Имя пользователя MySQL */
define('DB_USER', 'root');

/** Пароль к базе данных MySQL */
define('DB_PASSWORD', '');

/** Имя сервера MySQL */
define('DB_HOST', 'localhost');

/** Кодировка базы данных для создания таблиц. */
define('DB_CHARSET', 'utf8mb4');

/** Схема сопоставления. Не меняйте, если не уверены. */
define('DB_COLLATE', '');

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу.
 * Можно сгенерировать их с помощью {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными. Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'YM^44n^~YX;*!#}A[,IUoC?NIZ{Fu=(^)WIHF8/-H46t~<<I_$JahVNCur8e%P(f');
define('SECURE_AUTH_KEY',  'Z,?W~!ESdsNhR-)qBEX}J!rEErfzx{lK2:3Yp}d2eZIRT2@J#Iap{U6V@?A_2[-r');
define('LOGGED_IN_KEY',    'E=9cqGB`9~xU%_g,kAfmGu>4`uEn?|y8hN0n,g1J)n1^fWi:lBSA^|)* w8b4]!_');
define('NONCE_KEY',        'BdN*2FGhcPyl(-XtdiS!Hc~8nt]OkzlP%w8knrzk+&4.zIcLI6<g<o/zD=P9sonK');
define('AUTH_SALT',        '5840n)Fs xrY_)fm%GQ-)sa6`bqg)Z+~{kOlw2vGaIjm`DN}*m;M{k3Q0Zc@~YDs');
define('SECURE_AUTH_SALT', 'vhREfX^pS908bTh:yz$Yi@J2A*5Din%LsuO-H6b<i1CfW#.xdWJ[P*JJvl<YsrA-');
define('LOGGED_IN_SALT',   'i<y-<M+E]>qBSJcr6Dk+4{PIyU`9G}YI1/aMp!MB;65VTR)c+X$kkOC@@.GlxxNx');
define('NONCE_SALT',       '5<b|9.ZC?NA@S?tjPzn.YStfKzh:|:f*sqU,b@}&PDm1s4JxC|Ku:h}]g5.&V87-');

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix  = 'wp_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 *
 * Информацию о других отладочных константах можно найти в Кодексе.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Инициализирует переменные WordPress и подключает файлы. */
require_once(ABSPATH . 'wp-settings.php');
