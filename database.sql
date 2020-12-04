--
-- Database: `kabum`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `menu_control`
--

CREATE TABLE `menu_control` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `parent` smallint(5) UNSIGNED DEFAULT NULL,
  `descrp` varchar(100) NOT NULL,
  `goto` varchar(200) DEFAULT NULL,
  `seq` smallint(6) NOT NULL DEFAULT '99',
  `css` varchar(50) DEFAULT NULL,
  `icon` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `menu_control`
--

INSERT INTO `menu_control` (`id`, `parent`, `descrp`, `goto`, `seq`, `css`, `icon`) VALUES
(1, NULL, 'Início', 'home', 1, 'fa-home', NULL),
(2, NULL, 'Manutenção', NULL, 5, 'fa-wrench', NULL),
(3, 2, 'Tipo de usuário', 'groups', 51, 'fa-users', NULL),
(4, 2, 'Cadastro de Usuários', 'users', 52, 'fa-user', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL,
  `name` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `email` varchar(500) NOT NULL,
  `blocked` timestamp NULL DEFAULT NULL,
  `dt_ins` timestamp NULL DEFAULT NULL,
  `dt_upd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `password`, `email`, `blocked`, `dt_ins`, `dt_upd`) VALUES
(1, 'admin', 'Administrador', '*4ACFE3202A5FF5CF467898FC58AAB1D615029441', 'lgbassani@gmail.com', NULL, '2020-12-03 15:10:29', '2020-12-03 15:10:29');

--
-- Estrutura da tabela `groups`
--

CREATE TABLE `groups` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `descrp` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `groups`
--

INSERT INTO `groups` (`id`, `descrp`) VALUES
(1, 'administrador'),
(2, 'colaborador'),
(3, 'fornecedor'),
(4, 'cliente');

--
-- Estrutura da tabela `users_groups`
--

CREATE TABLE users_groups (
    `id` smallint(5) UNSIGNED NOT NULL,
    `user` int(10) UNSIGNED NOT NULL,
    `group` int(10) UNSIGNED NOT NULL,
    `dt_ins` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `users_groups`
--

INSERT INTO `users_groups` (`id`, `user`, `group`, `dt_ins`) VALUES (1, 1, 1, '2020-12-03 15:10:29');

--
-- Estrutura da tabela `groups_menu`
--

CREATE TABLE groups_menu (
    `id` smallint(5) UNSIGNED NOT NULL,
    `menu` smallint(5) UNSIGNED NOT NULL,
    `group` smallint(5) UNSIGNED NOT NULL,
    `dt_ins` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `groups_menu`
--

INSERT INTO `groups_menu` (`id`, `menu`, `group`, `dt_ins`) VALUES
(1, 1, 1, '2020-12-03 15:10:30'),
(2, 2, 1, '2020-12-03 15:10:30'),
(3, 3, 1, '2020-12-03 15:10:30'),
(4, 4, 1, '2020-12-03 15:10:30'),
(5, 5, 1, '2020-12-03 15:10:30');

--
-- Estrutura da tabela `groups_tables`
--

CREATE TABLE groups_tables (
    `id` smallint(5) UNSIGNED NOT NULL,
    `table` varchar(50) NOT NULL,
    `group` smallint(5) UNSIGNED NOT NULL,
    `level` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
    `dt_ins` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `groups_tables`
--

INSERT INTO `groups_tables` (`id`, `menu`, `group`, `dt_ins`) VALUES
(1, 'users', 1, 9, '2020-12-03 15:10:30')

--
-- Estrutura da tabela `users_signin`
--

CREATE TABLE `users_signin` (
    `id` bigint UNSIGNED NOT NULL,
    `sid` varchar(200),
    `user` smallint NOT NULL,
    `ip` varchar(50) NOT NULL,
    `start` timestamp NOT NULL,
    `end` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `req` varchar(100) NOT NULL
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8;



--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu_control`
--
ALTER TABLE `menu_control`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_groups`
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups_menu`
ALTER TABLE `groups_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signin_users`
ALTER TABLE `users_signin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu_control`
--
ALTER TABLE `menu_control`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `groups_menu`
--
ALTER TABLE `groups_menu`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `users_signin`
ALTER TABLE `users_signin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;

