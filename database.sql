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
(4, 2, 'Cadastro de Usuários', 'users', 52, 'fa_user', NULL);

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
);



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
-- AUTO_INCREMENT for table `users_signin`
ALTER TABLE `users_signin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;

