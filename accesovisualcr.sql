-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 13-12-2021 a las 22:52:16
-- Versión del servidor: 8.0.27-0ubuntu0.20.04.1
-- Versión de PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `accesovisualcr`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `id` int NOT NULL,
  `titulo` varchar(250) NOT NULL,
  `subtitulo` text NOT NULL,
  `img_id` varchar(250) DEFAULT NULL,
  `cuerpo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`id`, `titulo`, `subtitulo`, `img_id`, `cuerpo`) VALUES
(1, 'Museos accesibles también para las personas sordas', 'Con motivo del Día Internacional de los Museos, que se celebra hoy, la Confederación Española de Familias de Personas Sordas (FIAPAS), reclama mejoras y la generalización de la accesibilidad para las personas sordas en espacios museísticos.', 'aw9uiymfcqhzdgm7tlj5', '“Museos e historias controvertidas: decir lo indecible en los museos” es el lema bajo el que se celebra este año el Día Internacional de los Museos. De esta forma se quiere destacar el papel de los museos al servicio de la sociedad como guardianes de la memoria colectiva.\r\n\r\nSin embargo, son muchos los espacios museísticos que olvidan que la sociedad también incluye personas con problemas auditivos, de distinto tipo y grado.\r\n\r\nEn el caso de nuestro país, en torno a tres millones de personas, se ven privadas del derecho de acceso a la Cultura en igualdad de condiciones que el resto de ciudadanos. Y es posible que tampoco puedan participar en las actividades o jornadas de puertas abiertas que se han programado en los Museos Estatales para la celebración de este Día.\r\n\r\nPara evitar esta situación, es necesario contar con recursos de apoyo para el acceso a la información y a la comunicación, como: subtitulado en las piezas audiovisuales y en los actos públicos celebrados en estos espacios, generalización de audioguías subtituladas o guías multimedias interactivas, así como lazos de inducción magnética individuales que facilitan a los usuarios de prótesis auditivas su participación en las visitas guiadas. Gracias a estos sistemas de inducción magnética, las personas sordas que usan audífonos o implantes auditivos pueden recibir directamente, a través de estas prótesis, la voz del guía, eliminando los problemas producidos por la distancia entre ambos, la reverberación o el eco y el ruido de fondo, favoreciendo la comprensión de los mensajes.\r\n\r\nFIAPAS recuerda que estos recursos deben generalizarse en todos los museos, independientemente de su titularidad. Y, por supuesto, de manera permanente y no con carácter extraordinario con ocasión de una celebración puntual.'),
(2, 'LA ACCESIBILIDAD EN LAS CIUDADES PARA LAS PERSONAS CON DISCAPACIDAD AUDITIVA', 'Con motivo del Día Internacional de los Museos, que se celebra hoy, la Confederación Española de Familias de Personas Sordas (FIAPAS), reclama mejoras y la generalización de la accesibilidad para las personas sordas en espacios museísticos.', 'a6nreqe8neqlkest4ies', '“Museos e historias controvertidas: decir lo indecible en los museos” es el lema bajo el que se celebra este año el Día Internacional de los Museos. De esta forma se quiere destacar el papel de los museos al servicio de la sociedad como guardianes de la memoria colectiva.\r\n\r\nSin embargo, son muchos los espacios museísticos que olvidan que la sociedad también incluye personas con problemas auditivos, de distinto tipo y grado.\r\n\r\nEn el caso de nuestro país, en torno a tres millones de personas, se ven privadas del derecho de acceso a la Cultura en igualdad de condiciones que el resto de ciudadanos. Y es posible que tampoco puedan participar en las actividades o jornadas de puertas abiertas que se han programado en los Museos Estatales para la celebración de este Día.\r\n\r\nPara evitar esta situación, es necesario contar con recursos de apoyo para el acceso a la información y a la comunicación, como: subtitulado en las piezas audiovisuales y en los actos públicos celebrados en estos espacios, generalización de audioguías subtituladas o guías multimedias interactivas, así como lazos de inducción magnética individuales que facilitan a los usuarios de prótesis auditivas su participación en las visitas guiadas. Gracias a estos sistemas de inducción magnética, las personas sordas que usan audífonos o implantes auditivos pueden recibir directamente, a través de estas prótesis, la voz del guía, eliminando los problemas producidos por la distancia entre ambos, la reverberación o el eco y el ruido de fondo, favoreciendo la comprensión de los mensajes.\r\n\r\nFIAPAS recuerda que estos recursos deben generalizarse en todos los museos, independientemente de su titularidad. Y, por supuesto, de manera permanente y no con carácter extraordinario con ocasión de una celebración puntual.'),
(3, 'Visualfy, la idea española que ofrece un asistente virtual a las personas sordas', 'A veces, una solución tecnológica es tan simple y tan efectiva para los que se benefician de ella que te preguntas por qué nadie había pensado en ella antes cuando la tecnología actual es perfectamente capaz de hacerlo realidad. Es la sensación que hemos tenido con Visualfy, un proyecto pensado para facilitar la vida de las personas sordas.', 'qsyytgrfs31wuzacwfl4', 'Esas señales visuales pueden ser notificaciones en el móvil, cambios de color o parpadeos en bombillas inteligentes como las Philips Hue o incluso avisos en algunas Smart TV compatibles con el servicio. Así, por ejemplo, las personas que no oyen bien pueden recibir los avisos pertinentes cuando suene una alarma en casa o la lavadora haya terminado su programa.\r\n\r\nSon los desarrolladores los que van añadiendo sonidos a su \"catálogo de detecciones\", aunque los propios usuarios pueden grabar los sonidos de su propia casa para que el sistema de Visualfy los pueda identificar. Puedes \"entrenar\" a la aplicación con sonidos de todo tipo e importancia: desde una simple tetera con el agua hirviendo a una alarma de incendios. Muchas instalaciones indicadas para personas sordas implican obras y un gasto mucho mayor, así que la ventaja de Visualfy es que sólo hay que enchufar y configurar.'),
(4, 'Conozca la nueva plataforma gratuita para aprender LESCO', 'Con el objetivo de crear conciencia sobre la inclusión de las personas con discapacidad en la sociedad, promover una cultura de educación y responsabilidad y derribar barreras comunicativas se lanza la plataforma gratuita “Yo puedo aprender LESCO, ¿y vos?”.', 'vywibnnofnkukfwzb1nh', 'Si usted está interesado en recibir las clases, solamente deben registrarse en el formulario con sus datos personales y esperar la confirmación por parte de la fundación, posteriormente podrán acceder a los cursos de LESCO 1 y 2, grabados en línea por la instructora sorda Virya Castillo Vargas.\r\n\r\nCada uno se compone de diez lecciones las cuales se pueden ir completando de manera autónoma.\r\n\r\nLa Fundación Yo puedo ¿y vos?, Grupo Bimbo y Museo de los Niños, son las organizaciones promotoras del proyecto.'),
(5, 'Telelesco: noticias accesibles para la población sorda ', '\"Nosotros tenemos como objetivo con Telelesco el poder accesibilizar información\".', 'zmgxhlb2dy7kqswzlvag', '¿Qué hace ante ello Telelesco? Pues bien: el equipo graba videos en lesco con la información que los diferentes medios de comunicación publicamos sobre determinados temas, y lo postea en sus redes sociales para que estas personas sordas puedan informarse de una forma más adecuada respecto a la realidad y al acontecer noticioso.'),
(6, 'Hands-On Lesco lanza diccionario para acercar a población a la lengua de señas costarricense', 'La academia de LESCO Hands-On lanzó recientemente una iniciativa que pretende construir un diccionario de acceso gratuito a las comunidades, para que estudiantes, personas interesadas o personas usuarias de la lengua de señas costarricense (LESCO), tengan una herramienta con material de repaso, aprendizaje y consulta en línea.', 'nwraenetjbmho78io5cd', 'El proyecto se encuentra en una etapa piloto y ya incluye más de 400 señas de vocabulario, principalmente verbos y adjetivos. Con el tiempo, se espera añadir más vocabulario de acuerdo a las principales consultas y necesidades que vayan surgiendo. \r\n\r\nLa herramienta, a la cual se puede acceder a través del sitio www.handsonlesco.com/diccionario/ permite buscar señas por categoría, letra o palabra, así como crear un usuario para guardar señas favoritas. \r\n\r\nEste trabajo pretende llenar la falta de recursos de consulta existentes sobre el vocabulario y que sea de fácil acceso para cualquier persona, considerando que la lengua de señas es compleja, cambiante y diversa en cada país.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int NOT NULL,
  `usuario` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'flavia', 'e10adc3949ba59abbe56e057f20f883e'),
(4, 'leo', 'e10adc3949ba59abbe56e057f20f883e');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
