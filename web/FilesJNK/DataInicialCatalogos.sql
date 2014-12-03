INSERT INTO `saac`.`grupo_catalogo`(`GRP_CAT_NEMONICO`, `GRP_CAT_VALOR`, `GRP_CAT_ESTADO`) VALUES('NACIONALIDADES', 'NACIONALIDADES', 1);
INSERT INTO `saac`.`grupo_catalogo`(`GRP_CAT_NEMONICO`, `GRP_CAT_VALOR`, `GRP_CAT_ESTADO`) VALUES('ESTADO_CIVIL', 'ESTADO CIVIL', 1);
INSERT INTO `saac`.`grupo_catalogo`(`GRP_CAT_NEMONICO`, `GRP_CAT_VALOR`, `GRP_CAT_ESTADO`) VALUES('NIVEL_EDUCACION', 'NIVEL EDUCACION', 1);
INSERT INTO `saac`.`grupo_catalogo`(`GRP_CAT_NEMONICO`, `GRP_CAT_VALOR`, `GRP_CAT_ESTADO`) VALUES('GENERO', 'GENERO', 1);

INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(1, 'AFGANO (A)', 'AFGANO (A)', 'AFGANO (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(2, 'ALBANES (A)', 'ALBANES (A)', 'ALBANES (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(3, 'ALEMAN (A)', 'ALEMAN (A)', 'ALEMAN (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(4, 'ARABE', 'ARABE', 'ARABE', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(5, 'ARGELINO (A)', 'ARGELINO (A)', 'ARGELINO (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(6, 'ARGENTINO (A)', 'ARGENTINO (A)', 'ARGENTINO (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(7, 'AUSTRALIANO (A)', 'AUSTRALIANO (A)', 'AUSTRALIANO (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(8, 'BELGA', 'BELGA', 'BELGA', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(9, 'BOLIVIANO (A)', 'BOLIVIANO (A)', 'BOLIVIANO (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(10, 'BRASILERO (A)', 'BRASILERO (A)', 'BRASILERO (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(11, 'BRITANICO (A)', 'BRITANICO (A)', 'BRITANICO (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(12, 'BULGARO (A)', 'BULGARO (A)', 'BULGARO (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(13, 'CAMBOYANO (A)', 'CAMBOYANO (A)', 'CAMBOYANO (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(14, 'CANADIENSE', 'CANADIENSE', 'CANADIENSE', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(15, 'CHECO (A)', 'CHECO (A)', 'CHECO (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(16, 'CHILENO (A)', 'CHILENO (A)', 'CHILENO (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(17, 'CHINO (A)', 'CHINO (A)', 'CHINO (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(18, 'COLOMBIANO (A)', 'COLOMBIANO (A)', 'COLOMBIANO (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(19, 'CONGOLEÑO (A)', 'CONGOLEÑO (A)', 'CONGOLEÑO (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(20, 'COREANO (A)', 'COREANO (A)', 'COREANO (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(21, 'COSTARRICENSE', 'COSTARRICENSE', 'COSTARRICENSE', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(22, 'CUBANO (A)', 'CUBANO (A)', 'CUBANO (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(23, 'DANES (A)', 'DANES (A)', 'DANES (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(24, 'DANES (A)', 'DANES (A)', 'DANES (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(25, 'DOMINICANO (A)', 'DOMINICANO (A)', 'DOMINICANO (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(26, 'ECUATOGUINEANO (A)', 'ECUATOGUINEANO (A)', 'ECUATOGUINEANO (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(27, 'ECUATORIANO (A)', 'ECUATORIANO (A)', 'ECUATORIANO (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(28, 'EGIPCIO (A)', 'EGIPCIO (A)', 'EGIPCIO (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(29, 'EMIRIAN', 'EMIRIAN', 'EMIRIAN', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(30, 'ESCOSES (A)', 'ESCOSES (A)', 'ESCOSES (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(31, 'ESPAÑOL (A)', 'ESPAÑOL (A)', 'ESPAÑOL (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(32, 'ESTADOUNIDENSE', 'ESTADOUNIDENSE', 'ESTADOUNIDENSE', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(33, 'ESTONIO (A)', 'ESTONIO (A)', 'ESTONIO (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(34, 'ETIOPE', 'ETIOPE', 'ETIOPE', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(35, 'FILIPINO (A)', 'FILIPINO (A)', 'FILIPINO (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(36, 'FINLANDES (A)', 'FINLANDES (A)', 'FINLANDES (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(37, 'FRANCES (A)', 'FRANCES (A)', 'FRANCES (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(38, 'GALES (A)', 'GALES (A)', 'GALES (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(39, 'GRIEGO (A)', 'GRIEGO (A)', 'GRIEGO (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(40, 'GUATEMALTECO (A)', 'GUATEMALTECO (A)', 'GUATEMALTECO (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(41, 'HAITIANO (A)', 'HAITIANO (A)', 'HAITIANO (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(42, 'HINDU', 'HINDU', 'HINDU', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(43, 'HOLANDES (A)', 'HOLANDES (A)', 'HOLANDES (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(44, 'HONDUREÑO (A)', 'HONDUREÑO (A)', 'HONDUREÑO (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(45, 'HUNGARO (A)', 'HUNGARO (A)', 'HUNGARO (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(46, 'INDIO (A)', 'INDIO (A)', 'INDIO (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(47, 'INDONES (A)', 'INDONES (A)', 'INDONES (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(48, 'INGLES (A)', 'INGLES (A)', 'INGLES (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(49, 'IRLANDES (A)', 'IRLANDES (A)', 'IRLANDES (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(50, 'ISRAELI', 'ISRAELI', 'ISRAELI', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(51, 'ITALIANO (A)', 'ITALIANO (A)', 'ITALIANO (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(52, 'JAPONES (A)', 'JAPONES (A)', 'JAPONES (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(53, 'JORDANO (A)', 'JORDANO (A)', 'JORDANO (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(54, 'LETONA', 'LETONA', 'LETONA', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(55, 'LEXEMBURGUESA', 'LEXEMBURGUESA', 'LEXEMBURGUESA', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(56, 'LIBANES (A)', 'LIBANES (A)', 'LIBANES (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(57, 'LITUANA', 'LITUANA', 'LITUANA', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(58, 'MALAYO (A)', 'MALAYO (A)', 'MALAYO (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(59, 'MALTESA', 'MALTESA', 'MALTESA', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(60, 'MARROQUI', 'MARROQUI', 'MARROQUI', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(61, 'MEXICANO (A)', 'MEXICANO (A)', 'MEXICANO (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(62, 'NEOCELANDES (A)', 'NEOCELANDES (A)', 'NEOCELANDES (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(63, 'NICARAGÜENSE', 'NICARAGÜENSE', 'NICARAGÜENSE', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(64, 'NIGERIANO (A)', 'NIGERIANO (A)', 'NIGERIANO (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(65, 'NORUEGO (A)', 'NORUEGO (A)', 'NORUEGO (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(66, 'PANAMEÑO (A)', 'PANAMEÑO (A)', 'PANAMEÑO (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(67, 'PARAGUAYO (A)', 'PARAGUAYO (A)', 'PARAGUAYO (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(68, 'PERUANO (A)', 'PERUANO (A)', 'PERUANO (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(69, 'POLACO (A)', 'POLACO (A)', 'POLACO (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(70, 'PORTUGUES (A)', 'PORTUGUES (A)', 'PORTUGUES (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(71, 'PUERTORRIQUEÑO (A)', 'PUERTORRIQUEÑO (A)', 'PUERTORRIQUEÑO (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(72, 'RUMANO (A)', 'RUMANO (A)', 'RUMANO (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(73, 'RUSO (A)', 'RUSO (A)', 'RUSO (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(74, 'SALVADOREÑO (A)', 'SALVADOREÑO (A)', 'SALVADOREÑO (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(75, 'SERBIO (A)', 'SERBIO (A)', 'SERBIO (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(76, 'SUECO (A)', 'SUECO (A)', 'SUECO (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(77, 'SUIZO (A)', 'SUIZO (A)', 'SUIZO (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(78, 'SURCOREANO (A)', 'SURCOREANO (A)', 'SURCOREANO (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(79, 'TAILANDES (A)', 'TAILANDES (A)', 'TAILANDES (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(80, 'TAIWANES (A)', 'TAIWANES (A)', 'TAIWANES (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(81, 'TURCO (A)', 'TURCO (A)', 'TURCO (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(82, 'UCRANIANO (A)', 'UCRANIANO (A)', 'UCRANIANO (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(83, 'URUGUAYO (A)', 'URUGUAYO (A)', 'URUGUAYO (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(84, 'VENEZOLANO (A)', 'VENEZOLANO (A)', 'VENEZOLANO (A)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));
INSERT INTO `saac`.`catalogo`(`cat_orden`, `cat_nemonico`, `cat_valor`, `cat_descripcion`, `cat_estado`, `grupo_catalogo`) VALUES(85, 'VIETNAMITA', 'VIETNAMITA', 'VIETNAMITA', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NACIONALIDADES'));

INSERT INTO `saac`.`catalogo`(`CAT_NEMONICO`, `CAT_DESCRIPCION`, `CAT_VALOR`, `CAT_ESTADO`, `grupo_catalogo`, `CAT_ORDEN`)
VALUES('SOLTERO', 'SOLTERO', 'SOLTERO', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='ESTADO_CIVIL'), 1);
INSERT INTO `saac`.`catalogo`(`CAT_NEMONICO`, `CAT_DESCRIPCION`, `CAT_VALOR`, `CAT_ESTADO`, `grupo_catalogo`, `CAT_ORDEN`)
VALUES('CASADO', 'CASADO', 'CASADO', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='ESTADO_CIVIL'), 2);
INSERT INTO `saac`.`catalogo`(`CAT_NEMONICO`, `CAT_DESCRIPCION`, `CAT_VALOR`, `CAT_ESTADO`, `grupo_catalogo`, `CAT_ORDEN`)
VALUES('VIUDO', 'VIUDO', 'VIUDO', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='ESTADO_CIVIL'), 3);
INSERT INTO `saac`.`catalogo`(`CAT_NEMONICO`, `CAT_DESCRIPCION`, `CAT_VALOR`, `CAT_ESTADO`, `grupo_catalogo`, `CAT_ORDEN`)
VALUES('DIVORCIADO', 'DIVORCIADO', 'DIVORCIADO', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='ESTADO_CIVIL'), 4);
INSERT INTO `saac`.`catalogo`(`CAT_NEMONICO`, `CAT_DESCRIPCION`, `CAT_VALOR`, `CAT_ESTADO`, `grupo_catalogo`, `CAT_ORDEN`)
VALUES('UNIÓN_LIBRE', 'UNIÓN LIBRE', 'UNIÓN LIBRE', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='ESTADO_CIVIL'), 5);

INSERT INTO `saac`.`catalogo`(`CAT_NEMONICO`, `CAT_DESCRIPCION`, `CAT_VALOR`, `CAT_ESTADO`, `grupo_catalogo`, `CAT_ORDEN`)
VALUES('NINGUNO', 'NINGUNO', 'NINGUNO', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NIVEL_EDUCACION'), 1);
INSERT INTO `saac`.`catalogo`(`CAT_NEMONICO`, `CAT_DESCRIPCION`, `CAT_VALOR`, `CAT_ESTADO`, `grupo_catalogo`, `CAT_ORDEN`)
VALUES('PRIMARIA', 'PRIMARIA', 'PRIMARIA', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NIVEL_EDUCACION'), 2);
INSERT INTO `saac`.`catalogo`(`CAT_NEMONICO`, `CAT_DESCRIPCION`, `CAT_VALOR`, `CAT_ESTADO`, `grupo_catalogo`, `CAT_ORDEN`)
VALUES('SECUNDARIA', 'SECUNDARIA', 'SECUNDARIA', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NIVEL_EDUCACION'), 3);
INSERT INTO `saac`.`catalogo`(`CAT_NEMONICO`, `CAT_DESCRIPCION`, `CAT_VALOR`, `CAT_ESTADO`, `grupo_catalogo`, `CAT_ORDEN`)
VALUES('SUPERIOR NO UNIVERSITARIO (HASTA 4 AÑOS DE ESTUDIO)', 'SUPERIOR NO UNIVERSITARIO (HASTA 4 AÑOS DE ESTUDIO)', 'SUPERIOR NO UNIVERSITARIO (HASTA 4 AÑOS DE ESTUDIO)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NIVEL_EDUCACION'), 4);
INSERT INTO `saac`.`catalogo`(`CAT_NEMONICO`, `CAT_DESCRIPCION`, `CAT_VALOR`, `CAT_ESTADO`, `grupo_catalogo`, `CAT_ORDEN`)
VALUES('SUPERIOR UNIVERSITARIO ( DE 4 A 7 AÑOS DE ESTUDIO)', 'SUPERIOR UNIVERSITARIO ( DE 4 A 7 AÑOS DE ESTUDIO)', 'SUPERIOR UNIVERSITARIO ( DE 4 A 7 AÑOS DE ESTUDIO)', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NIVEL_EDUCACION'), 5);
INSERT INTO `saac`.`catalogo`(`CAT_NEMONICO`, `CAT_DESCRIPCION`, `CAT_VALOR`, `CAT_ESTADO`, `grupo_catalogo`, `CAT_ORDEN`)
VALUES('POST GRADO', 'POST GRADO', 'POST GRADO', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='NIVEL_EDUCACION'), 6);

INSERT INTO `saac`.`catalogo`(`CAT_NEMONICO`, `CAT_DESCRIPCION`, `CAT_VALOR`, `CAT_ESTADO`, `grupo_catalogo`, `CAT_ORDEN`)
VALUES('FEMENINO', 'FEMENINO', 'FEMENINO', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='GENERO'), 1);
INSERT INTO `saac`.`catalogo`(`CAT_NEMONICO`, `CAT_DESCRIPCION`, `CAT_VALOR`, `CAT_ESTADO`, `grupo_catalogo`, `CAT_ORDEN`)
VALUES('MASCULINO', 'MASCULINO', 'MASCULINO', 1, (SELECT GRP_CAT_CODIGO FROM grupo_catalogo WHERE GRP_CAT_NEMONICO='GENERO'), 2);

-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('001.000.000.000', NULL, 'USA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('007.000.000.000', NULL, 'RUSSIA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('011.000.000.000', NULL, 'CANADA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('012.000.000.000', NULL, 'DOMINICAN REPUBLIC ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('015.000.000.000', NULL, 'KAZAKHSTAN ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('016.000.000.000', NULL, 'UZBEKISTAN ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('017.000.000.000', NULL, 'TAJIKISTAN ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('020.000.000.000', NULL, 'EGYPT ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('027.000.000.000', NULL, 'SOUTH AFRICA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('030.000.000.000', NULL, 'GREECE ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('031.000.000.000', NULL, 'NETHERLANDS ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('032.000.000.000', NULL, 'BELGIUM ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('033.000.000.000', NULL, 'FRANCE ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('034.000.000.000', NULL, 'SPAIN ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('036.000.000.000', NULL, 'HUNGARY ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('039.000.000.000', NULL, 'ITALY ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('040.000.000.000', NULL, 'ROMANIA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('041.000.000.000', NULL, 'SWITZERLAND ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('043.000.000.000', NULL, 'AUSTRIA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('044.000.000.000', NULL, 'UNITED KINGDOM ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('045.000.000.000', NULL, 'DENMARK ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('046.000.000.000', NULL, 'SWEDEN ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('047.000.000.000', NULL, 'NORWAY ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('048.000.000.000', NULL, 'POLAND ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('049.000.000.000', NULL, 'GERMANY ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('051.000.000.000', NULL, 'PERU ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('052.000.000.000', NULL, 'MEXICO ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('053.000.000.000', NULL, 'CUBA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('054.000.000.000', NULL, 'ARGENTINA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('055.000.000.000', NULL, 'BRAZIL ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('056.000.000.000', NULL, 'CHILE ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('057.000.000.000', NULL, 'COLOMBIA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('058.000.000.000', NULL, 'VENEZUELA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('060.000.000.000', NULL, 'MALAYSIA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('061.000.000.000', NULL, 'AUSTRALIA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('062.000.000.000', NULL, 'INDONESIA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('063.000.000.000', NULL, 'PHILIPPINES ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('064.000.000.000', NULL, 'NEW ZEALAND ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('065.000.000.000', NULL, 'SINGAPORE ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('066.000.000.000', NULL, 'THAILAND ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('081.000.000.000', NULL, 'JAPAN ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('082.000.000.000', NULL, 'KOREA (SOUTH) ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('084.000.000.000', NULL, 'VIETNAM ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('086.000.000.000', NULL, 'CHINA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('090.000.000.000', NULL, 'TURKEY ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('091.000.000.000', NULL, 'INDIA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('092.000.000.000', NULL, 'PAKISTAN ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('093.000.000.000', NULL, 'AFGHANISTAN  ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('094.000.000.000', NULL, 'SRI LANKA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('095.000.000.000', NULL, 'MYANMAR (BURMA) ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('098.000.000.000', NULL, 'IRAN ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('212.000.000.000', NULL, 'MOROCCO ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('213.000.000.000', NULL, 'ALGERIA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('216.000.000.000', NULL, 'TUNISIA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('218.000.000.000', NULL, 'LIBYA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('220.000.000.000', NULL, 'GAMBIA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('221.000.000.000', NULL, 'SENEGAL ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('222.000.000.000', NULL, 'MAURITANIA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('223.000.000.000', NULL, 'MALI ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('224.000.000.000', NULL, 'GUINEA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('225.000.000.000', NULL, 'IVORY COAST ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('226.000.000.000', NULL, 'BURKINA FASO ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('227.000.000.000', NULL, 'NIGER ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('228.000.000.000', NULL, 'TOGO ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('229.000.000.000', NULL, 'BENIN ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('230.000.000.000', NULL, 'MAURITIUS ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('231.000.000.000', NULL, 'LIBERIA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('232.000.000.000', NULL, 'SIERRA LEONE ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('233.000.000.000', NULL, 'GHANA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('234.000.000.000', NULL, 'NIGERIA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('235.000.000.000', NULL, 'CHAD ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('236.000.000.000', NULL, 'CENTRAL AFRICAN REP ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('237.000.000.000', NULL, 'CAMEROON ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('238.000.000.000', NULL, 'CAPE VERDE ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('239.000.000.000', NULL, 'SÃO TOMÉ & PRINCIPÉ ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('240.000.000.000', NULL, 'EQUATORIAL GUINEA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('241.000.000.000', NULL, 'GABON ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('242.000.000.000', NULL, 'CONGO ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('243.000.000.000', NULL, 'ZAIRE ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('244.000.000.000', NULL, 'ANGOLA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('245.000.000.000', NULL, 'GUINEA-BISSAU ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('246.000.000.000', NULL, 'DIEGO GARCIA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('247.000.000.000', NULL, 'ASCENSION ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('248.000.000.000', NULL, 'SEYCHELLES ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('249.000.000.000', NULL, 'SUDAN ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('250.000.000.000', NULL, 'RWANDA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('251.000.000.000', NULL, 'ETHIOPIA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('252.000.000.000', NULL, 'SOMALIA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('253.000.000.000', NULL, 'DJIBOUTI ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('254.000.000.000', NULL, 'KENYA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('255.000.000.000', NULL, 'TANZANIA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('256.000.000.000', NULL, 'UGANDA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('257.000.000.000', NULL, 'BURUNDI ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('258.000.000.000', NULL, 'MOZAMBIQUE ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('260.000.000.000', NULL, 'ZAMBIA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('261.000.000.000', NULL, 'MADAGASCAR ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('262.000.000.000', NULL, 'REUNION ISLAND ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('263.000.000.000', NULL, 'ZIMBABWE ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('264.000.000.000', NULL, 'NAMIBIA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('265.000.000.000', NULL, 'MALAWI ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('266.000.000.000', NULL, 'LESOTHO ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('267.000.000.000', NULL, 'BOTSWANA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('268.000.000.000', NULL, 'SWAZILAND ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('269.000.000.000', NULL, 'MAYOTTE ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('270.000.000.000', NULL, 'COMOROS IS. ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('290.000.000.000', NULL, 'SAINT HELENA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('291.000.000.000', NULL, 'ERITREA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('297.000.000.000', NULL, 'ARUBA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('298.000.000.000', NULL, 'FÆROE ISLANDS ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('299.000.000.000', NULL, 'GREENLAND ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('350.000.000.000', NULL, 'GIBRALTAR ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('351.000.000.000', NULL, 'PORTUGAL ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('352.000.000.000', NULL, 'LUXEMBOURG ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('353.000.000.000', NULL, 'IRELAND ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('354.000.000.000', NULL, 'ICELAND ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('355.000.000.000', NULL, 'ALBANIA  ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('356.000.000.000', NULL, 'MALTA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('357.000.000.000', NULL, 'CYPRUS ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('358.000.000.000', NULL, 'FINLAND ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('359.000.000.000', NULL, 'BULGARIA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('370.000.000.000', NULL, 'LITHUANIA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('371.000.000.000', NULL, 'LATVIA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('372.000.000.000', NULL, 'ESTONIA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('373.000.000.000', NULL, 'MOLDOVA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('374.000.000.000', NULL, 'ARMENIA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('375.000.000.000', NULL, 'BELARUS ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('376.000.000.000', NULL, 'ANDORRA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('377.000.000.000', NULL, 'MONACO ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('378.000.000.000', NULL, 'SAN MARINO ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('379.000.000.000', NULL, 'VATICAN CITY ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('380.000.000.000', NULL, 'UKRAINE ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('381.000.000.000', NULL, 'YUGOSLAVIA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('385.000.000.000', NULL, 'CROATIA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('386.000.000.000', NULL, 'SLOVENIA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('387.000.000.000', NULL, 'BOSNIA - HERZEGOVINA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('389.000.000.000', NULL, '(FYR) MACEDONIA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('420.000.000.000', NULL, 'CZECH REPUBLIC ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('421.000.000.000', NULL, 'SLOVAKIA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('500.000.000.000', NULL, 'FALKLAND ISLANDS ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('501.000.000.000', NULL, 'BELIZE ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('502.000.000.000', NULL, 'GUATEMALA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('503.000.000.000', NULL, 'EL SALVADOR ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('504.000.000.000', NULL, 'HONDURAS ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('505.000.000.000', NULL, 'NICARAGUA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('506.000.000.000', NULL, 'COSTA RICA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('507.000.000.000', NULL, 'PANAMA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('508.000.000.000', NULL, 'ST PIERRE & MIQUÉLON ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('509.000.000.000', NULL, 'HAITI ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('590.000.000.000', NULL, 'GUADELOUPE ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('591.000.000.000', NULL, 'BOLIVIA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('592.000.000.000', NULL, 'GUYANA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.000.000.000', NULL, 'ECUADOR ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('594.000.000.000', NULL, 'GUIANA (FRENCH) ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('595.000.000.000', NULL, 'PARAGUAY ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('596.000.000.000', NULL, 'MARTINIQUE ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('597.000.000.000', NULL, 'SURINAME ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('598.000.000.000', NULL, 'URUGUAY ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('599.000.000.000', NULL, 'NETHERLANDS ANTILLES ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('673.000.000.000', NULL, 'BRUNEI DARUSSALAM ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('674.000.000.000', NULL, 'NAURU ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('675.000.000.000', NULL, 'PAPUA NEW GUINEA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('676.000.000.000', NULL, 'TONGA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('677.000.000.000', NULL, 'SOLOMON ISLANDS ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('678.000.000.000', NULL, 'VANUATU ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('679.000.000.000', NULL, 'FIJI ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('680.000.000.000', NULL, 'PALAU ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('682.000.000.000', NULL, 'COOK ISLANDS ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('683.000.000.000', NULL, 'NIUE ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('684.000.000.000', NULL, 'AMERICAN SAMOA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('685.000.000.000', NULL, 'WESTERN SAMOA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('686.000.000.000', NULL, 'KIRIBATI ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('687.000.000.000', NULL, 'NEW CALEDONIA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('688.000.000.000', NULL, 'TUVALU ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('689.000.000.000', NULL, 'FRENCH POLYNESIA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('690.000.000.000', NULL, 'TOKELAU ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('691.000.000.000', NULL, 'F.S. MICRONESIA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('692.000.000.000', NULL, 'MARSHALL ISLANDS ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('850.000.000.000', NULL, 'DPR KOREA (NORTH)', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('852.000.000.000', NULL, 'HONG KONG ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('853.000.000.000', NULL, 'MACAU ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('855.000.000.000', NULL, 'CAMBODIA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('856.000.000.000', NULL, 'LAOS ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('880.000.000.000', NULL, 'BANGLADESH ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('886.000.000.000', NULL, 'TAIWAN ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('960.000.000.000', NULL, 'MALDIVES ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('961.000.000.000', NULL, 'LEBANON ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('962.000.000.000', NULL, 'JORDAN ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('963.000.000.000', NULL, 'SYRIA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('964.000.000.000', NULL, 'IRAQ ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('965.000.000.000', NULL, 'KUWAIT ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('966.000.000.000', NULL, 'SAUDI ARABIA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('967.000.000.000', NULL, 'YEMEN ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('968.000.000.000', NULL, 'OMAN ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('970.000.000.000', NULL, 'PALESTINE ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('971.000.000.000', NULL, 'UNITED ARAB EMIRATES ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('972.000.000.000', NULL, 'ISRAEL ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('973.000.000.000', NULL, 'BAHRAIN ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('974.000.000.000', NULL, 'QATAR ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('975.000.000.000', NULL, 'BHUTAN ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('976.000.000.000', NULL, 'MONGOLIA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('977.000.000.000', NULL, 'NEPAL ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('993.000.000.000', NULL, 'TURKMENISTAN ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('994.000.000.000', NULL, 'AZERBAIJAN ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('995.000.000.000', NULL, 'REP. OF GEORGIA ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('996.000.000.000', NULL, 'KYRGYZ REPUBLIC ', 1 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.001.000.000', '593.000.000.000', 'AZUAY', 2 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.002.000.000', '593.000.000.000', 'BOLIVAR', 2 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.003.000.000', '593.000.000.000', 'CAÑAR', 2 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.004.000.000', '593.000.000.000', 'CARCHI', 2 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.005.000.000', '593.000.000.000', 'COTOPAXI', 2 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.006.000.000', '593.000.000.000', 'CHIMBORAZO', 2 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.007.000.000', '593.000.000.000', 'EL ORO', 2 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.008.000.000', '593.000.000.000', 'ESMERALDAS', 2 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.009.000.000', '593.000.000.000', 'GUAYAS', 2 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.010.000.000', '593.000.000.000', 'IMBABURA', 2 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.011.000.000', '593.000.000.000', 'LOJA', 2 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.012.000.000', '593.000.000.000', 'LOS RIOS', 2 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.013.000.000', '593.000.000.000', 'MANABI', 2 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.014.000.000', '593.000.000.000', 'MORONA SANTIAGO', 2 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.015.000.000', '593.000.000.000', 'NAPO', 2 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.016.000.000', '593.000.000.000', 'PASTAZA', 2 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.017.000.000', '593.000.000.000', 'PICHINCHA', 2 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.018.000.000', '593.000.000.000', 'TUNGURAHUA', 2 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.019.000.000', '593.000.000.000', 'ZAMORA CHINCHIPE', 2 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.020.000.000', '593.000.000.000', 'GALAPAGOS', 2 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.021.000.000', '593.000.000.000', 'SUCUMBIOS', 2 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.022.000.000', '593.000.000.000', 'ORELLANA', 2 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.023.000.000', '593.000.000.000', 'SANTO DOMINGO DE LOS TSÁCHILAS', 2 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.024.000.000', '593.000.000.000', 'SANTA ELENA', 2 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.001.001.000', '593.001.000.000', 'CUENCA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.001.002.000', '593.001.000.000', 'GIRON', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.001.003.000', '593.001.000.000', 'GUALACEO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.001.004.000', '593.001.000.000', 'NABON', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.001.005.000', '593.001.000.000', 'PAUTE', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.001.006.000', '593.001.000.000', 'PUCARA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.001.007.000', '593.001.000.000', 'SAN FERNANDO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.001.008.000', '593.001.000.000', 'SANTA ISSABEL', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.001.009.000', '593.001.000.000', 'SIGSIG', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.001.010.000', '593.001.000.000', 'OÑA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.001.011.000', '593.001.000.000', 'CHORDELEG', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.001.012.000', '593.001.000.000', 'EL PAN', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.001.013.000', '593.001.000.000', 'SEVILLA DE ORO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.001.014.000', '593.001.000.000', 'GUACHAPALA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.002.001.000', '593.002.000.000', 'GUARANDA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.002.002.000', '593.002.000.000', 'CHILLANES', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.002.003.000', '593.002.000.000', 'CHIMBO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.002.004.000', '593.002.000.000', 'ECHEANDIA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.002.005.000', '593.002.000.000', 'SAN MIGUEL', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.002.006.000', '593.002.000.000', 'CALUMA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.002.007.000', '593.002.000.000', 'LAS NAVES', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.003.001.000', '593.003.000.000', 'AZOGUES', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.003.002.000', '593.003.000.000', 'BIBLIAN', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.003.003.000', '593.003.000.000', 'CAÑAR', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.003.004.000', '593.003.000.000', 'LA TRONCAL', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.003.005.000', '593.003.000.000', 'EL TAMBO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.003.006.000', '593.003.000.000', 'DELEG', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.003.007.000', '593.003.000.000', 'SUSCAL', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.004.001.000', '593.004.000.000', 'TULCÁN', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.004.002.000', '593.004.000.000', 'BOLIVAR', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.004.003.000', '593.004.000.000', 'ESPEJO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.004.004.000', '593.004.000.000', 'MIRA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.004.005.000', '593.004.000.000', 'MONTUFAR', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.004.006.000', '593.004.000.000', 'SAN PEDRO DE HUACA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.005.001.000', '593.005.000.000', 'LATACUNGA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.005.002.000', '593.005.000.000', 'LA MANA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.005.003.000', '593.005.000.000', 'PANGUA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.005.004.000', '593.005.000.000', 'PUJILI', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.005.005.000', '593.005.000.000', 'SALCEDO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.005.006.000', '593.006.000.000', 'SAQUISILI', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.005.007.000', '593.006.000.000', 'SIGCHOS', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.006.001.000', '593.006.000.000', 'RIOBAMBA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.006.002.000', '593.006.000.000', 'ALAUSI', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.006.003.000', '593.006.000.000', 'COLTA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.006.004.000', '593.006.000.000', 'CHAMBO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.006.005.000', '593.006.000.000', 'CHUNCHI', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.006.006.000', '593.006.000.000', 'GUAMOTE', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.006.007.000', '593.006.000.000', 'GUANO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.006.008.000', '593.006.000.000', 'PALLATANGA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.006.009.000', '593.006.000.000', 'PENIPE', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.006.010.000', '593.006.000.000', 'CUMANDA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.007.001.000', '593.007.000.000', 'MACHALA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.007.002.000', '593.007.000.000', 'ARENILLAS', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.007.003.000', '593.007.000.000', 'ATAHUALPA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.007.004.000', '593.007.000.000', 'BALSAS', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.007.005.000', '593.007.000.000', 'CHILLA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.007.006.000', '593.007.000.000', 'GUABO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.007.007.000', '593.007.000.000', 'HUAQUILLAS', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.007.008.000', '593.007.000.000', 'MARCABELI', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.007.009.000', '593.007.000.000', 'PASAJE', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.007.010.000', '593.007.000.000', 'PI-AS', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.007.011.000', '593.007.000.000', 'PORTOVELO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.007.012.000', '593.007.000.000', 'SANTA ROSA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.007.013.000', '593.007.000.000', 'ZARUMA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.007.014.000', '593.007.000.000', 'LAS LAJAS', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.008.001.000', '593.008.000.000', 'ESMERALDAS', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.008.002.000', '593.008.000.000', 'ELOY ALFARO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.008.003.000', '593.008.000.000', 'MUISNE', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.008.004.000', '593.008.000.000', 'QUININDE', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.008.005.000', '593.008.000.000', 'SAN LORENZO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.008.006.000', '593.008.000.000', 'ATACAMES', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.008.007.000', '593.008.000.000', 'RIO VERDE', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.009.001.000', '593.009.000.000', 'GUAYAQUIL', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.009.002.000', '593.009.000.000', 'ALFREDO BAQUERIZO MORENO (JUJUAN)', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.009.003.000', '593.009.000.000', 'BALAO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.009.004.000', '593.009.000.000', 'BALZAR', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.009.005.000', '593.009.000.000', 'COLIMES', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.009.006.000', '593.009.000.000', 'DAULE', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.009.007.000', '593.009.000.000', 'DURÁN', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.009.008.000', '593.009.000.000', 'EMPALME', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.009.009.000', '593.009.000.000', 'EL TRIUNFO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.009.010.000', '593.009.000.000', 'MILAGRO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.009.011.000', '593.009.000.000', 'NARANJAL', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.009.012.000', '593.009.000.000', 'NARANJITO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.009.013.000', '593.009.000.000', 'PALESTINA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.009.014.000', '593.009.000.000', 'PEDRO CARBO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.009.015.000', '593.009.000.000', 'SAMBORONDON', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.009.016.000', '593.009.000.000', 'SANTA LUCIA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.009.017.000', '593.009.000.000', 'URBINA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.009.018.000', '593.009.000.000', 'SAN JACINTO DE YAGUACHI', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.009.019.000', '593.009.000.000', 'PLAYAS', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.009.020.000', '593.009.000.000', 'SIMÓN BOLIVAR', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.009.021.000', '593.009.000.000', 'CORONEL MARCELINO MARIDUEÑA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.009.022.000', '593.009.000.000', 'LOMAS DE SARGENTILLO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.009.023.000', '593.009.000.000', 'NOBOL', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.009.024.000', '593.009.000.000', 'GENERAL ANTONIO ELIZALDE (BUCAY)', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.009.025.000', '593.009.000.000', 'ISIDRO AYORA (SOLEDAD)', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.010.001.000', '593.010.000.000', 'IBARRA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.010.002.000', '593.010.000.000', 'ANTONIO ANTE', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.010.003.000', '593.010.000.000', 'COTACACHI', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.010.004.000', '593.010.000.000', 'OTAVALO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.010.005.000', '593.010.000.000', 'PIMAMPIRO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.010.006.000', '593.010.000.000', 'SAN MIGEL DE URCUQUI', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.011.001.000', '593.011.000.000', 'LOJA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.011.002.000', '593.011.000.000', 'CALVAS', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.011.003.000', '593.011.000.000', 'CATAMAYO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.011.004.000', '593.011.000.000', 'CELICA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.011.005.000', '593.011.000.000', 'CHAGUARPAMBA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.011.006.000', '593.011.000.000', 'ESPINDOLA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.011.007.000', '593.011.000.000', 'GONZANAMA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.011.008.000', '593.011.000.000', 'MACARA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.011.009.000', '593.011.000.000', 'PALTAS', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.011.010.000', '593.011.000.000', 'PUYANGO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.011.011.000', '593.011.000.000', 'SARAGURO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.011.012.000', '593.011.000.000', 'SOZORANGA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.011.013.000', '593.011.000.000', 'ZAPOTILLO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.011.014.000', '593.011.000.000', 'PINDAL', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.011.015.000', '593.011.000.000', 'QUILANGA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.011.016.000', '593.011.000.000', 'OLMEDO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.012.001.000', '593.012.000.000', 'BABAHOYO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.012.002.000', '593.012.000.000', 'BABA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.012.003.000', '593.012.000.000', 'MONTALVO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.012.004.000', '593.012.000.000', 'PUEBLO VIEJO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.012.005.000', '593.012.000.000', 'QUEVEDO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.012.006.000', '593.012.000.000', 'URDANETA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.012.007.000', '593.012.000.000', 'VENTANAS', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.012.008.000', '593.012.000.000', 'VINCES', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.012.009.000', '593.012.000.000', 'PALENQUE', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.012.010.000', '593.012.000.000', 'BUENA FE', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.012.011.000', '593.012.000.000', 'VALENCIA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.012.012.000', '593.012.000.000', 'MOCACHE', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.013.001.000', '593.013.000.000', 'PORTOVIEJO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.013.002.000', '593.013.000.000', 'BOLIVAR', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.013.003.000', '593.013.000.000', 'CHONE', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.013.004.000', '593.013.000.000', 'EL CARMEN', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.013.005.000', '593.013.000.000', 'FLAVIO ALFARO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.013.006.000', '593.013.000.000', 'JIPIJAPA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.013.007.000', '593.013.000.000', 'JUNIN', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.013.008.000', '593.013.000.000', 'MANTA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.013.009.000', '593.013.000.000', 'MONTECRISTI', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.013.010.000', '593.013.000.000', 'PAJAN', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.013.012.000', '593.013.000.000', 'ROCAFUERTE', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.013.013.000', '593.013.000.000', 'SANTA ANA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.013.014.000', '593.013.000.000', 'SUCRE', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.013.015.000', '593.013.000.000', 'TOSAGUA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.013.016.000', '593.013.000.000', '24 DE MAYO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.013.017.000', '593.013.000.000', 'PEDERNALES', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.013.018.000', '593.013.000.000', 'OLMEDO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.013.019.000', '593.013.000.000', 'LOPEZ', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.013.020.000', '593.013.000.000', 'JAMA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.013.021.000', '593.013.000.000', 'JARAMIJO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.014.001.000', '593.014.000.000', 'MORONA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.014.002.000', '593.014.000.000', 'GUALAQUIZA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.014.003.000', '593.014.000.000', 'LIMON INDANZA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.014.004.000', '593.014.000.000', 'PALORA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.014.005.000', '593.014.000.000', 'SANTIAGO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.014.006.000', '593.014.000.000', 'SUCUA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.014.007.000', '593.014.000.000', 'HUAMBOYA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.014.008.000', '593.014.000.000', 'SAN JUAN BOSCO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.014.009.000', '593.014.000.000', 'TAISHA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.014.010.000', '593.014.000.000', 'LOGROÑO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.014.011.000', '593.014.000.000', 'MACAS', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.015.001.000', '593.015.000.000', 'TENA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.015.002.000', '593.015.000.000', 'AGUARICO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.015.003.000', '593.015.000.000', 'ARCHIDONA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.015.004.000', '593.015.000.000', 'EL CHACO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.015.005.000', '593.015.000.000', 'LA JOYA DE LOS SACHAS', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.015.006.000', '593.015.000.000', 'ORELLANA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.015.007.000', '593.015.000.000', 'QUIJOS', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.015.008.000', '593.015.000.000', 'LORETO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.015.009.000', '593.015.000.000', 'CARLOS JULIO AROSEMENA TOLA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.016.001.000', '593.016.000.000', 'PUYO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.016.002.000', '593.016.000.000', 'MERA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.016.003.000', '593.016.000.000', 'SANTA CLARA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.016.004.000', '593.016.000.000', 'ARAJUNO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.017.001.000', '593.017.000.000', 'QUITO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.017.002.000', '593.017.000.000', 'CAYAMBE', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.017.003.000', '593.017.000.000', 'MEJIA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.017.004.000', '593.017.000.000', 'PEDRO MONCAYO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.017.005.000', '593.017.000.000', 'RUMIÑAHUI', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.017.006.000', '593.017.000.000', 'SAN MIGUEL DE LOS BANCOS', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.017.007.000', '593.017.000.000', 'PEDRO VICENTE MALDONADO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.017.008.000', '593.017.000.000', 'PUERTO QUITO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.018.001.000', '593.018.000.000', 'AMBATO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.018.002.000', '593.018.000.000', 'BAÑOS DE AGUA SANTA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.018.003.000', '593.018.000.000', 'CEVALLOS', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.018.004.000', '593.018.000.000', 'MOCHA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.018.005.000', '593.018.000.000', 'PATATE', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.018.006.000', '593.018.000.000', 'QUERO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.018.007.000', '593.018.000.000', 'SAN PEDRO DE PELILEO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.018.008.000', '593.018.000.000', 'SANTIAGO DE PILLARO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.018.009.000', '593.018.000.000', 'TISALEO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.019.001.000', '593.019.000.000', 'ZAMORA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.019.002.000', '593.019.000.000', 'CHINCHIPE', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.019.003.000', '593.019.000.000', 'NANGARITZA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.019.004.000', '593.019.000.000', 'YACUAMBI', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.019.005.000', '593.019.000.000', 'YANZATZA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.019.006.000', '593.019.000.000', 'EL PANGUI', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.019.007.000', '593.019.000.000', 'CENTINELA DE CONDOR', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.019.008.000', '593.019.000.000', 'PALANDA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.020.001.000', '593.020.000.000', 'SAN CRISTOBAL (GALÁPAGOS)', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.020.002.000', '593.020.000.000', 'ISABELA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.020.003.000', '593.020.000.000', 'SANTA CRUZ', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.021.001.000', '593.021.000.000', 'LAGO AGRIO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.021.002.000', '593.021.000.000', 'GONZALO PIZARRO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.021.003.000', '593.021.000.000', 'PUTUMAYO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.021.004.000', '593.021.000.000', 'SHUSHUFINDI', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.021.005.000', '593.021.000.000', 'SUCUMBIOS', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.021.006.000', '593.021.000.000', 'CASCALES', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.021.007.000', '593.021.000.000', 'CUYABENO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.022.001.000', '593.022.000.000', 'ORELLANA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.022.002.000', '593.022.000.000', 'AGUARICO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.022.003.000', '593.022.000.000', 'LA JOYA DE LOS SACHAS', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.022.004.000', '593.022.000.000', 'LORETO', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.023.001.000', '593.023.000.000', 'SANTO DOMINGO DE LOS TSÁCHILAS', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.024.001.000', '593.024.000.000', 'SALINAS', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.024.002.000', '593.024.000.000', 'SANTA ELENA', 3 );
-- INSERT INTO `saac`.`ubicacion`(`UBI_CODIGO`, `UBI_CODIGO_PADRE`, `UBI_DESCRIPCION`, `UBI_NIVEL`)
-- VALUES('593.024.003.000', '593.024.000.000', 'LA LIBERTAD', 3 );


