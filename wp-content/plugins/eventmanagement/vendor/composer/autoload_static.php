<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInitf4e4a8f46028f539b51a1261f55c5933
{
    public static $prefixLengthsPsr4 = array (
        'I' => 
        array (
            'Inc\\' => 4,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'Inc\\' => 
        array (
            0 => __DIR__ . '/../..' . '/inc',
        ),
    );

    public static $classMap = array (
        'Composer\\InstalledVersions' => __DIR__ . '/..' . '/composer/InstalledVersions.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInitf4e4a8f46028f539b51a1261f55c5933::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInitf4e4a8f46028f539b51a1261f55c5933::$prefixDirsPsr4;
            $loader->classMap = ComposerStaticInitf4e4a8f46028f539b51a1261f55c5933::$classMap;

        }, null, ClassLoader::class);
    }
}
