-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 29-Out-2019 às 00:40
-- Versão do servidor: 10.1.37-MariaDB
-- versão do PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sgmc`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--

CREATE TABLE `admin` (
  `idAdmin` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `admin`
--

INSERT INTO `admin` (`idAdmin`, `idUsuario`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `idCategoria` int(11) NOT NULL,
  `descricao` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`idCategoria`, `descricao`) VALUES
(1, 'Hidraulico'),
(2, 'Ferramentaria'),
(3, 'Elétrico'),
(4, 'Construção');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL,
  `cnpj` varchar(45) DEFAULT NULL,
  `razaoSocial` varchar(45) DEFAULT NULL,
  `inscricaoEstadual` varchar(45) DEFAULT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `cpf` varchar(45) DEFAULT NULL,
  `rg` varchar(45) DEFAULT NULL,
  `telefone` varchar(45) DEFAULT NULL,
  `celular` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `dataNascimento` varchar(45) DEFAULT NULL,
  `estadoCivil` varchar(45) DEFAULT NULL,
  `sexo` varchar(30) DEFAULT NULL,
  `idEndereco` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`idCliente`, `cnpj`, `razaoSocial`, `inscricaoEstadual`, `nome`, `cpf`, `rg`, `telefone`, `celular`, `email`, `dataNascimento`, `estadoCivil`, `sexo`, `idEndereco`) VALUES
(1, NULL, NULL, NULL, 'Leonardo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `colaborador`
--

CREATE TABLE `colaborador` (
  `idColaborador` int(11) NOT NULL,
  `cpf` varchar(45) DEFAULT NULL,
  `rg` varchar(45) DEFAULT NULL,
  `dataNascimento` varchar(45) DEFAULT NULL,
  `telefone` varchar(45) DEFAULT NULL,
  `celular` varchar(45) DEFAULT NULL,
  `estadoCivil` varchar(45) DEFAULT NULL,
  `sexo` varchar(30) DEFAULT NULL,
  `idEndereco` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `colaborador`
--

INSERT INTO `colaborador` (`idColaborador`, `cpf`, `rg`, `dataNascimento`, `telefone`, `celular`, `estadoCivil`, `sexo`, `idEndereco`, `idUsuario`) VALUES
(1, '11100555504', '2270560434', '1988-01-18', '32226655405', '32999755114', 'Casado', 'Masculino', 2, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `idEndereco` int(11) NOT NULL,
  `logradouro` varchar(45) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `complemento` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `uf` varchar(45) DEFAULT NULL,
  `cep` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `endereco`
--

INSERT INTO `endereco` (`idEndereco`, `logradouro`, `numero`, `complemento`, `cidade`, `bairro`, `uf`, `cep`) VALUES
(1, 'Rua A', 103, 'Ao lado da padaria B', 'Juiz de Fora', 'Santa Terezinha', 'MG', '3659900'),
(2, 'Rua B', 104, 'Proximo ao Colegio C', 'Juiz de Fora', 'Bairu', 'MG', '3650000');

-- --------------------------------------------------------

--
-- Estrutura da tabela `formaPagamento`
--

CREATE TABLE `formaPagamento` (
  `idFormaPgto` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `conta` varchar(45) DEFAULT NULL,
  `agencia` varchar(11) DEFAULT NULL,
  `nomeBanco` varchar(40) DEFAULT NULL,
  `tipoConta` varchar(40) DEFAULT NULL,
  `numMaxParcelas` int(11) DEFAULT NULL,
  `intervaloParcelas` int(11) DEFAULT NULL,
  `taxaBanco` double DEFAULT NULL,
  `taxaOperadora` double DEFAULT NULL,
  `multaAtraso` double DEFAULT NULL,
  `situacaoConfirmacao` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `formaPagamento`
--

INSERT INTO `formaPagamento` (`idFormaPgto`, `nome`, `conta`, `agencia`, `nomeBanco`, `tipoConta`, `numMaxParcelas`, `intervaloParcelas`, `taxaBanco`, `taxaOperadora`, `multaAtraso`, `situacaoConfirmacao`) VALUES
(1, 'Crédito', '15842', '444', 'Caixa Economica', 'Conta Corrente', 10, 30, 5.8, 6, 4.5, 'Automatico');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedor`
--

CREATE TABLE `fornecedor` (
  `idFornecedor` int(11) NOT NULL,
  `nomeFantasia` varchar(45) DEFAULT NULL,
  `cnpj` varchar(45) DEFAULT NULL,
  `nomeRepresentante` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `telefone` varchar(45) DEFAULT NULL,
  `idEndereco` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `fornecedor`
--

INSERT INTO `fornecedor` (`idFornecedor`, `nomeFantasia`, `cnpj`, `nomeRepresentante`, `email`, `telefone`, `idEndereco`) VALUES
(1, 'Marangon', '42.688.646/0001-53', 'Julio B.', 'julio@marangon.com', '32415699', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `itensOrdem`
--

CREATE TABLE `itensOrdem` (
  `idItensOrdem` int(11) NOT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `idProduto` int(11) NOT NULL,
  `idOrdemSrv` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `itensOrdem`
--

INSERT INTO `itensOrdem` (`idItensOrdem`, `quantidade`, `idProduto`, `idOrdemSrv`) VALUES
(1, 5, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `itensVenda`
--

CREATE TABLE `itensVenda` (
  `idItensVenda` int(11) NOT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `precoUnitario` float DEFAULT NULL,
  `idVenda` int(11) NOT NULL,
  `idProduto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `itensVenda`
--

INSERT INTO `itensVenda` (`idItensVenda`, `quantidade`, `precoUnitario`, `idVenda`, `idProduto`) VALUES
(1, 2, 30, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ordemServico`
--

CREATE TABLE `ordemServico` (
  `idOrdemSrv` int(11) NOT NULL,
  `numOS` int(11) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `dataPedido` varchar(45) DEFAULT NULL,
  `situacao` varchar(45) DEFAULT NULL,
  `idFornecedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `ordemServico`
--

INSERT INTO `ordemServico` (`idOrdemSrv`, `numOS`, `descricao`, `dataPedido`, `situacao`, `idFornecedor`) VALUES
(1, 1, 'Reposicao em estoque', '2019-09-25', 'Em aberto', 1),
(2, 2, NULL, '2018-02-13', 'aberta', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `perdaDevolucao`
--

CREATE TABLE `perdaDevolucao` (
  `idPerdaDevolucao` int(11) NOT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `idVenda` int(11) NOT NULL,
  `idProduto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `perdaDevolucao`
--

INSERT INTO `perdaDevolucao` (`idPerdaDevolucao`, `tipo`, `idVenda`, `idProduto`) VALUES
(1, 'perda', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `idProduto` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `codInterno` int(11) DEFAULT NULL,
  `codBarra` int(45) DEFAULT NULL,
  `unidadeMedida` varchar(45) DEFAULT NULL,
  `precoCompra` float DEFAULT NULL,
  `peso` float DEFAULT NULL,
  `altura` float DEFAULT NULL,
  `comprimento` float DEFAULT NULL,
  `validade` varchar(45) DEFAULT NULL,
  `qtdMinima` int(11) DEFAULT NULL,
  `qtdAtual` int(11) DEFAULT NULL,
  `qtdMaxima` int(11) DEFAULT NULL,
  `largura` float DEFAULT NULL,
  `idFornecedor` int(11) NOT NULL,
  `idCategoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`idProduto`, `nome`, `codInterno`, `codBarra`, `unidadeMedida`, `precoCompra`, `peso`, `altura`, `comprimento`, `validade`, `qtdMinima`, `qtdAtual`, `qtdMaxima`, `largura`, `idFornecedor`, `idCategoria`) VALUES
(1, 'Cimento Holcim', 1555, 2147483647, 'Kg', 30, 50, NULL, NULL, '2019-12-25', 10, 15, 20, NULL, 1, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `senha` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `nome`, `email`, `senha`) VALUES
(1, 'Silvio Romero', 'silvioromero.sr@gmail.com', '12345'),
(2, 'Luiz Gama', 'luiz.gama@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Estrutura da tabela `venda`
--

CREATE TABLE `venda` (
  `idVenda` int(11) NOT NULL,
  `dataVenda` varchar(45) DEFAULT NULL,
  `subtotal` float DEFAULT NULL,
  `codBarra` int(45) DEFAULT NULL,
  `valorDesconto` float DEFAULT NULL,
  `situacao` varchar(45) DEFAULT NULL,
  `idCliente` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `idFormaPgto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `venda`
--

INSERT INTO `venda` (`idVenda`, `dataVenda`, `subtotal`, `codBarra`, `valorDesconto`, `situacao`, `idCliente`, `idUsuario`, `idFormaPgto`) VALUES
(1, '2019-09-26', 60, 154477, 10, 'Efetuada', 1, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idAdmin`),
  ADD KEY `fk_admin_usuario1_idx` (`idUsuario`);

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idCategoria`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`),
  ADD KEY `fk_cliente_enderecos1_idx` (`idEndereco`);

--
-- Indexes for table `colaborador`
--
ALTER TABLE `colaborador`
  ADD PRIMARY KEY (`idColaborador`),
  ADD KEY `fk_colaborador_endereco1_idx` (`idEndereco`),
  ADD KEY `usuario_idUsuario` (`idUsuario`);

--
-- Indexes for table `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`idEndereco`);

--
-- Indexes for table `formaPagamento`
--
ALTER TABLE `formaPagamento`
  ADD PRIMARY KEY (`idFormaPgto`);

--
-- Indexes for table `fornecedor`
--
ALTER TABLE `fornecedor`
  ADD PRIMARY KEY (`idFornecedor`),
  ADD KEY `fk_fornecedor_enderecos1_idx` (`idEndereco`);

--
-- Indexes for table `itensOrdem`
--
ALTER TABLE `itensOrdem`
  ADD PRIMARY KEY (`idItensOrdem`),
  ADD KEY `fk_itensOrdem_produto1_idx` (`idProduto`),
  ADD KEY `fk_itensOrdem_ordemServico1_idx` (`idOrdemSrv`);

--
-- Indexes for table `itensVenda`
--
ALTER TABLE `itensVenda`
  ADD PRIMARY KEY (`idItensVenda`),
  ADD KEY `fk_itensVenda_venda1_idx` (`idVenda`),
  ADD KEY `fk_itensVenda_produto1_idx` (`idProduto`);

--
-- Indexes for table `ordemServico`
--
ALTER TABLE `ordemServico`
  ADD PRIMARY KEY (`idOrdemSrv`),
  ADD KEY `fk_ordemServico_fornecedor1_idx` (`idFornecedor`);

--
-- Indexes for table `perdaDevolucao`
--
ALTER TABLE `perdaDevolucao`
  ADD PRIMARY KEY (`idPerdaDevolucao`),
  ADD KEY `fk_perdaDevolucao_venda1_idx` (`idVenda`),
  ADD KEY `fk_perdaDevolucao_produto1_idx` (`idProduto`);

--
-- Indexes for table `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`idProduto`),
  ADD KEY `fk_produto_categoria1_idx` (`idCategoria`),
  ADD KEY `fk_produto_fornecedor1_idx` (`idFornecedor`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`);

--
-- Indexes for table `venda`
--
ALTER TABLE `venda`
  ADD PRIMARY KEY (`idVenda`),
  ADD KEY `fk_venda_cliente1_idx` (`idCliente`),
  ADD KEY `fk_venda_usuario1_idx` (`idUsuario`),
  ADD KEY `fk_venda_formaPagamento1_idx` (`idFormaPgto`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `idAdmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `colaborador`
--
ALTER TABLE `colaborador`
  MODIFY `idColaborador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `endereco`
--
ALTER TABLE `endereco`
  MODIFY `idEndereco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `formaPagamento`
--
ALTER TABLE `formaPagamento`
  MODIFY `idFormaPgto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fornecedor`
--
ALTER TABLE `fornecedor`
  MODIFY `idFornecedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `itensOrdem`
--
ALTER TABLE `itensOrdem`
  MODIFY `idItensOrdem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `itensVenda`
--
ALTER TABLE `itensVenda`
  MODIFY `idItensVenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ordemServico`
--
ALTER TABLE `ordemServico`
  MODIFY `idOrdemSrv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `perdaDevolucao`
--
ALTER TABLE `perdaDevolucao`
  MODIFY `idPerdaDevolucao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `produto`
--
ALTER TABLE `produto`
  MODIFY `idProduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `venda`
--
ALTER TABLE `venda`
  MODIFY `idVenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `fk_admin_usuario1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `fk_cliente_enderecos1` FOREIGN KEY (`idEndereco`) REFERENCES `endereco` (`idEndereco`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `colaborador`
--
ALTER TABLE `colaborador`
  ADD CONSTRAINT `fk_colaborador_endereco1` FOREIGN KEY (`idEndereco`) REFERENCES `endereco` (`idEndereco`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `usuario_idUsuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  ADD CONSTRAINT `fk_fornecedor_enderecos1` FOREIGN KEY (`idEndereco`) REFERENCES `endereco` (`idEndereco`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `itensOrdem`
--
ALTER TABLE `itensOrdem`
  ADD CONSTRAINT `fk_itensOrdem_ordemServico1` FOREIGN KEY (`idOrdemSrv`) REFERENCES `ordemServico` (`idOrdemSrv`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_itensOrdem_produto1` FOREIGN KEY (`idProduto`) REFERENCES `produto` (`idProduto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `itensVenda`
--
ALTER TABLE `itensVenda`
  ADD CONSTRAINT `fk_itensVenda_produto1` FOREIGN KEY (`idProduto`) REFERENCES `produto` (`idProduto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_itensVenda_venda1` FOREIGN KEY (`idVenda`) REFERENCES `venda` (`idVenda`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `ordemServico`
--
ALTER TABLE `ordemServico`
  ADD CONSTRAINT `fk_ordemServico_fornecedor1` FOREIGN KEY (`idFornecedor`) REFERENCES `fornecedor` (`idFornecedor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `perdaDevolucao`
--
ALTER TABLE `perdaDevolucao`
  ADD CONSTRAINT `fk_perdaDevolucao_produto1` FOREIGN KEY (`idProduto`) REFERENCES `produto` (`idProduto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_perdaDevolucao_venda1` FOREIGN KEY (`idVenda`) REFERENCES `venda` (`idVenda`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `produto`
--
ALTER TABLE `produto`
  ADD CONSTRAINT `fk_produto_categoria1` FOREIGN KEY (`idCategoria`) REFERENCES `categoria` (`idCategoria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_produto_fornecedor1` FOREIGN KEY (`idFornecedor`) REFERENCES `fornecedor` (`idFornecedor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `venda`
--
ALTER TABLE `venda`
  ADD CONSTRAINT `fk_venda_cliente1` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_venda_formaPagamento1` FOREIGN KEY (`idFormaPgto`) REFERENCES `formaPagamento` (`idFormaPgto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_venda_usuario1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
