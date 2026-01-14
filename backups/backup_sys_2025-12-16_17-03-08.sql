-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: 192.168.0.76    Database: sys
-- ------------------------------------------------------
-- Server version	8.0.42

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `automacao_excecoes`
--

DROP TABLE IF EXISTS `automacao_excecoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `automacao_excecoes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `entity_id` int NOT NULL,
  `entity_type` varchar(20) NOT NULL,
  `dias_key` int NOT NULL,
  `data_cancelamento` date NOT NULL,
  `motivo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_excecao` (`entity_id`,`entity_type`,`dias_key`,`data_cancelamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `automacao_excecoes`
--

LOCK TABLES `automacao_excecoes` WRITE;
/*!40000 ALTER TABLE `automacao_excecoes` DISABLE KEYS */;
/*!40000 ALTER TABLE `automacao_excecoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `automacao_exclusoes`
--

DROP TABLE IF EXISTS `automacao_exclusoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `automacao_exclusoes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `entity_id` int NOT NULL,
  `entity_type` varchar(20) NOT NULL,
  `data_exclusao` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_exclusion` (`entity_id`,`entity_type`,`data_exclusao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `automacao_exclusoes`
--

LOCK TABLES `automacao_exclusoes` WRITE;
/*!40000 ALTER TABLE `automacao_exclusoes` DISABLE KEYS */;
/*!40000 ALTER TABLE `automacao_exclusoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `automacao_mensagens`
--

DROP TABLE IF EXISTS `automacao_mensagens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `automacao_mensagens` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo_entidade` varchar(20) NOT NULL,
  `grupo` varchar(50) NOT NULL,
  `dias_apos` int NOT NULL,
  `texto_mensagem` text NOT NULL,
  `caminho_imagem` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_unique_message_rule` (`tipo_entidade`,`grupo`,`dias_apos`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `automacao_mensagens`
--

LOCK TABLES `automacao_mensagens` WRITE;
/*!40000 ALTER TABLE `automacao_mensagens` DISABLE KEYS */;
INSERT INTO `automacao_mensagens` VALUES (1,'LEAD','AQUECEDORES',0,'Olá  Senhor(a), tudo bem?\nNós da Confortec vimos que você andou procurando por aquecedores a gás.\n\nTrouxe pra você uma *baita promoção para você se garantir nesse inverno com mais economia!*\n\nVocê pode ganhar até *R$100,00 de desconto* na compra À Vista do Seu *Aquecedor a Gás* conosco, válido para todos os modelos disponíveis em nosso site.\n\nBasta nos responder rapidamente!\n*Não perca tempo, essa promoção é especial para você e enquanto durarem os estoques!*\n\nAtenciosamente\nEquipe Confortec\n📲 @confortec_solucoes | 🌐 confortec.com.br','d:/Users/Usuario/Desktop/CONFORTEC/Imagens App/Leads/1.png'),(2,'CLIENTE','AQUECEDORES',0,'*Olá!*\n\nA *Confortec* agradece a sua confiança na nossa linha de aquecedores a gás e por isso queremos garantir que você tenha a melhor experiência possível com seu novo equipamento.\n\nCaso tenha alguma dúvida, estamos à disposição. Além disso, aproveitamos para compartilhar nossas diretrizes de pós-venda para que você esteja sempre bem assistido.\n\n*Se precisar de algo, pode entrar em contato conosco*, por aqui ou pelo *WhatsApp (54) 9670-0606* ou enviar um E-mail em *tecnico@confortec.com.br*\n!\nAbaixo segue um Link do Nosso Formulário: \nhttps://docs.google.com/forms/d/e/1FAIpQLSf_mGvyiAPxPw6uUxPdI98cyrjosMLjA3T4HEfvrDU0_88AXg/viewform\n\n*Seu Feedback é Muito importante para nós!*\nhttps://g.page/r/CV4NFuBHVxrnEBM/review\n\nAtenciosamente,\nEquipe Confortec\n\n📲 @confortec_solucoes | 🌐 confortec.com.br','d:/Users/Usuario/Desktop/CONFORTEC/Imagens App/Cliente-Aquec-compra.png'),(3,'CLIENTE','AQUECEDORES',30,'*Olá!*\n\nEsperamos que você esteja aproveitando seu aquecedor a gás ao máximo! Agora que *já se passou 30 dias* desde a compra, gostaria de saber como tem sido sua experiência. Seu feedback é muito importante para nós! Caso queira compartilhar um comentário ou tenha alguma dúvida, ficaremos felizes em ajudar. \n\nVocê pode entrar em contato conosco, por aqui ou pelo *WhatsApp (54) 9670-0606* ou enviar um E-mail em *tecnico@confortec.com.br!*\n\nAguardamos seu retorno!\n\n*Abaixo segue um Link do Nosso Formulário:* \nhttps://docs.google.com/forms/d/e/1FAIpQLSf_mGvyiAPxPw6uUxPdI98cyrjosMLjA3T4HEfvrDU0_88AXg/viewform\n\n*Seu Feedback é Muito importante para nós!* \nhttps://g.page/r/CV4NFuBHVxrnEBM/review\n\nAtenciosamente,\nEquipe Confortec\n\n📲 @confortec_solucoes | 🌐 confortec.com.br','d:/Users/Usuario/Desktop/CONFORTEC/Imagens App/Cliente-Aquec-30d.png'),(4,'CLIENTE','AQUECEDORES',340,'*Olá!*\n\nEntramos em contato para lembrá-lo(a) de que sua *garantia de fábrica pode ser renovada*. Esse é um ótimo momento para garantir o suporte necessário para o seu equipamento! Além disso, caso seja preciso assistência técnica, *podemos fornecer o contato de um profissional* para facilitar qualquer necessidade futura. \n\nVocê pode entrar em contato conosco, por aqui ou pelo *WhatsApp (54) 9670-0606* ou enviar um E-mail em *tecnico@confortec.com.br!*\n\n*Abaixo segue um Link do Nosso Formulário:*\nhttps://docs.google.com/forms/d/e/1FAIpQLSdzCaxmMwEnH1xbGhhYluIQ0cts99DiK4yqnTQRDn6Vt_5t4Q/viewform\n\n*Seu Feedback é Muito importante para nós!*\n https://g.page/r/CV4NFuBHVxrnEBM/review\n\nAtenciosamente,\nEquipe Confortec\n\n📲 @confortec_solucoes | 🌐 confortec.com.br','d:/Users/Usuario/Desktop/CONFORTEC/Imagens App/Cliente-Aquec-340d.png'),(5,'CLIENTE','AQUEC SOLAR',0,'*Olá!*\n\n Somos da *Confortec Tecnologia e Soluções*, agradecemos por nos escolher para sua solução de *aquecimento solar de água*! Queremos garantir que você tenha a melhor experiência com seu novo sistema.\n\nSe precisar de suporte ou tiver dúvidas sobre, estamos à disposição para ajudar. Você pode entrar em contato conosco, por aqui ou pelo *WhatsApp (54) 9670-0606* ou enviando um E-mail para *tecnico@confortec.com.br*! \n\n*Abaixo segue um Link do Nosso Formulário:*\nhttps://docs.google.com/forms/d/e/1FAIpQLSf_mGvyiAPxPw6uUxPdI98cyrjosMLjA3T4HEfvrDU0_88AXg/viewform\n\n*Seu Feedback é Muito importante para nós!*\nhttps://g.page/r/CV4NFuBHVxrnEBM/review\n\nAtenciosamente,\nEquipe Confortec\n\n📲 @confortec_solucoes | 🌐 confortec.com.br','d:/Users/Usuario/Desktop/CONFORTEC/Imagens App/Cliente-Aquec-solar-compra.png'),(6,'CLIENTE','AQUEC SOLAR',30,'*Olá!*\n\nEsperamos que seu sistema de aquecimento solar esteja funcionando perfeitamente e trazendo mais conforto para o seu dia a dia! Queremos saber sua opinião sobre o equipamento e se há algo que podemos fazer para melhorar sua experiência. Fique à vontade para compartilhar seu feedback conosco!\n\nSe precisar de algo, pode entrar em contato conosco, por aqui ou pelo *WhatsApp 54 9670-0606* ou enviar um E-mail em *tecnico@confortec.com.br!*\n\n*Abaixo segue um Link do Nosso Formulário:*\nhttps://docs.google.com/forms/d/e/1FAIpQLSf_mGvyiAPxPw6uUxPdI98cyrjosMLjA3T4HEfvrDU0_88AXg/viewform\n\n*Seu Feedback é Muito importante para nós!*\n https://g.page/r/CV4NFuBHVxrnEBM/review\n\nAtenciosamente,\nEquipe Confortec\n\n📲 @confortec_solucoes | 🌐 confortec.com.br','d:/Users/Usuario/Desktop/CONFORTEC/Imagens App/Cliente-Aquec-solar-30d.png'),(7,'CLIENTE','AQUEC SOLAR',340,'*Olá!*\n\nSua *garantia de fábrica está chegando ao fim*, mas não se preocupe! Além disso, caso seja necessário assistência técnica, *podemos fornecer o contato de um profissional* para cuidar do seu sistema. Se precisar de algo, pode entrar em contato conosco, por aqui ou pelo *WhatsApp 54 9670-0606* ou enviar um E-mail em *tecnico@confortec.com.br!*\n\nEstamos à disposição para qualquer suporte!\n\n*Abaixo segue um Link do Nosso Formulário:*\nhttps://docs.google.com/forms/d/e/1FAIpQLSdzCaxmMwEnH1xbGhhYluIQ0cts99DiK4yqnTQRDn6Vt_5t4Q/viewform\n\n*Seu feedback é importante para nós*:\nhttps://g.page/r/CV4NFuBHVxrnEBM/review\n\nAtenciosamente,\nEquipe Confortec\n\n📲 @confortec_solucoes | 🌐 confortec.com.br','d:/Users/Usuario/Desktop/CONFORTEC/Imagens App/Cliente-Aquec-solar-340d.png'),(8,'CLIENTE','ENERGIA SOLAR',0,'*Olá!*\n\nSomos da *Confortec Tecnologia e Soluções*, agradecemos por escolher nossa solução de energia solar! Nosso compromisso é garantir que seu sistema funcione com máxima eficiência e confiabilidade.\n\nCaso tenha alguma dúvida nossa equipe está à disposição. Se precisar de algo, pode entrar em contato conosco, por aqui ou pelo *WhatsApp (54) 9670-0606* ou enviar um E-mail em *tecnico@confortec.com.br! *Estamos felizes por fazer parte da sua jornada rumo à sustentabilidade!\n\n*Abaixo segue um Link do Nosso Formulário:*\nhttps://docs.google.com/forms/d/e/1FAIpQLSf_mGvyiAPxPw6uUxPdI98cyrjosMLjA3T4HEfvrDU0_88AXg/viewform\n\n*Seu Feedback é Muito importante para nós!*\nhttps://g.page/r/CV4NFuBHVxrnEBM/review\n\nAtenciosamente,\nEquipe Confortec\n\n📲 @confortec_solucoes | 🌐 confortec.com.br','d:/Users/Usuario/Desktop/CONFORTEC/Imagens App/Cliente-energia-compra.png'),(9,'CLIENTE','ENERGIA SOLAR',30,'*Olá!*\n\nJá faz um mês desde a instalação do seu sistema de energia solar! Queremos saber como tem sido sua experiência com seu novo aparelho. Se precisar de suporte ou tiver dúvidas sobre, estamos aqui para ajudá-lo. Sua opinião é muito importante para nós!\n\nEstamos no aguardo do seu feedback, entre em contato conosco, por aqui ou pelo *WhatsApp (54) 9670-0606* ou enviar um E-mail em *tecnico@confortec.com.br!*\n\n*Abaixo segue um Link do Nosso Formulário:*\nhttps://docs.google.com/forms/d/e/1FAIpQLSf_mGvyiAPxPw6uUxPdI98cyrjosMLjA3T4HEfvrDU0_88AXg/viewform\n\n*Seu Feedback é Muito importante para nós!*\nhttps://g.page/r/CV4NFuBHVxrnEBM/review\n\nAtenciosamente,\nEquipe Confortec\n\n📲 @confortec_solucoes | 🌐 confortec.com.br','d:/Users/Usuario/Desktop/CONFORTEC/Imagens App/Cliente-energia-30d.png'),(10,'CLIENTE','OUTROS',0,'*Olá!*\n\nA *Confortec agradece a sua confiançana empresa!* Queremos garantir que você tenha a melhor experiência possível com seu novo equipamento.\n\nCaso tenha alguma dúvida estamos à disposição. Além disso, aproveitamos para compartilhar nossas diretrizes de pós-venda para que você esteja sempre bem assistido.\n\nSe precisar de algo, pode entrar em contato conosco, por aqui ou pelo *WhatsApp (54) 9670-0606* ou enviar um E-mail em *tecnico@confortec.com.br!*\n\n*Abaixo segue um Link do Nosso Formulário:* \nhttps://docs.google.com/forms/d/e/1FAIpQLSf_mGvyiAPxPw6uUxPdI98cyrjosMLjA3T4HEfvrDU0_88AXg/viewform\n\n*Seu Feedback é Muito importante para nós! *\nhttps://g.page/r/CV4NFuBHVxrnEBM/review\n\nAtenciosamente,\nEquipe Confortec\n\n📲 @confortec_solucoes | 🌐 confortec.com.br','d:/Users/Usuario/Desktop/CONFORTEC/Imagens App/Cliente-outros-compras.png'),(11,'CLIENTE','OUTROS',30,'*Olá!*\n\nEsperamos que você esteja aproveitando equipamento ao máximo! Agora que já passou 30 dias desde a compra, gostaria de saber como tem sido sua experiência.\n*Seu feedback é muito importante para nós*! Caso queira compartilhar um comentário ou tenha alguma dúvida, ficaremos felizes em ajudar. \n\nVocê pode entrar em contato conosco, por aqui ou pelo *WhatsApp (54) 9670-0606* ou enviar um E-mail em *tecnico@confortec.com.br!*\n\nAguardamos seu retorno!\n\n*Abaixo segue um Link do Nosso Formulário:*\nhttps://docs.google.com/forms/d/e/1FAIpQLSf_mGvyiAPxPw6uUxPdI98cyrjosMLjA3T4HEfvrDU0_88AXg/viewform\n\n*Seu Feedback é Muito importante para nós!* \nhttps://g.page/r/CV4NFuBHVxrnEBM/review\n\nAtenciosamente,\nEquipe Confortec\n\n📲 @confortec_solucoes | 🌐 confortec.com.br','d:/Users/Usuario/Desktop/CONFORTEC/Imagens App/Cliente-outros-30d.png'),(12,'CLIENTE','CURSOS',0,'*Olá!* \n\nSeja muito bem-vindo(a) ao curso da Confortec! Agradecemos sua confiança. Seu acesso inicial já está liberado e o conteúdo completo estará disponível em 15 dias.\n\n\n*Bons estudos!*\n\nSe precisar de suporte, pode entrar em contato conosco por aqui, pelo *WhatsApp (54) 9670-0606* ou no e-mail *tecnico@confortec.com.br.*\n\nAtenciosamente,\nEquipe Confortec\n\n📲 @confortec_solucoes | 🌐 confortec.com.br','d:/Users/Usuario/Desktop/CONFORTEC/Imagens App/Cliente-Cursos-compra.png'),(16,'CLIENTE','ENERGIA SOLAR',330,'*Olá!*\n\nMantenha seu sistema de energia solar em perfeitas condições garantindo máxima eficiência e economia. Por isso, queremos lembrá-lo(a) sobre a importância da *manutenção preventiva*.\n\nCom a manutenção correta, *você pode evitar problemas* futuros e *prolongar a vida útil do equipamento*. Caso queira mais informações, ficamos à disposição para entrar em contato conosco, por aqui ou pelo *WhatsApp (54) 9670-0606 *ou até mesmo, nos enviar um E-mail em *tecnico@confortec.com.br!*\n\n*Abaixo segue um Link do Nosso Formulário:*\nhttps://docs.google.com/forms/d/e/1FAIpQLSdzCaxmMwEnH1xbGhhYluIQ0cts99DiK4yqnTQRDn6Vt_5t4Q/viewform\n\n*Seu Feedback é Muito importante para nós!*\nhttps://g.page/r/CV4NFuBHVxrnEBM/review\n\nAtenciosamente,\nEquipe Confortec\n\n📲 @confortec_solucoes | 🌐 confortec.com.br','d:/Users/Usuario/Desktop/CONFORTEC/Imagens App/Cliente-energia-330-1405d.png'),(17,'CLIENTE','ENERGIA SOLAR',335,'*Olá!*\n\nSabemos o quanto seu sistema de energia solar *é um investimento valioso!* Por isso, queremos apresentar uma solução para observar ainda mais: o seguro para equipamentos solares.\n\nCom a manutenção preventiva, você tem mais *tranquilidade* em caso de imprevistos. Se quiser saber mais, estamos aqui para ajudá-lo(a)!\n\n*Abaixo segue um Link do Nosso Formulário:*\nhttps://docs.google.com/forms/d/e/1FAIpQLSdzCaxmMwEnH1xbGhhYluIQ0cts99DiK4yqnTQRDn6Vt_5t4Q/viewform\n\n*Seu Feedback é Muito importante para nós!*\nhttps://g.page/r/CV4NFuBHVxrnEBM/review\n\nAtenciosamente,\nEquipe Confortec\n\n📲 @confortec_solucoes | 🌐 confortec.com.br','d:/Users/Usuario/Desktop/CONFORTEC/Imagens App/Cliente-energia-330-1405d.png'),(18,'CLIENTE','ENERGIA SOLAR',630,'*Olá!*\n\nLembramos que a *manutenção preventiva* do seu sistema de energia solar *é essencial para garantir seu melhor desempenho*.\n\nSe precisar de mais informações ou quiser agendar uma inspeção, estamos à disposição!\n\n*Abaixo segue um Link do Nosso Formulário:*\nhttps://docs.google.com/forms/d/e/1FAIpQLSdzCaxmMwEnH1xbGhhYluIQ0cts99DiK4yqnTQRDn6Vt_5t4Q/viewform\n\n*Seu Feedback é Muito importante para nós!*\nhttps://g.page/r/CV4NFuBHVxrnEBM/review\n\nAtenciosamente,\nEquipe Confortec\n\n📲 @confortec_solucoes | 🌐 confortec.com.br','d:/Users/Usuario/Desktop/CONFORTEC/Imagens App/Cliente-energia-330-1405d.png'),(19,'CLIENTE','ENERGIA SOLAR',635,'*Olá!*\n\nSabemos que seu equipamento *é muito importante para você* por isso gostaríamos de te lembrar que a *manutenção preventiva* do seu sistema de energia solar *é essencial* para garantir seu *melhor desempenho*.\n\nSe precisar de mais informações ou quiser agendar uma inspeção, estamos à disposição!\n\n*Abaixo segue um Link do Nosso Formulário:*\nhttps://docs.google.com/forms/d/e/1FAIpQLSdzCaxmMwEnH1xbGhhYluIQ0cts99DiK4yqnTQRDn6Vt_5t4Q/viewform\n\n*Seu Feedback é Muito importante para nós!*\nhttps://g.page/r/CV4NFuBHVxrnEBM/review\n\nAtenciosamente,\nEquipe Confortec\n\n📲 @confortec_solucoes | 🌐 confortec.com.br','d:/Users/Usuario/Desktop/CONFORTEC/Imagens App/Cliente-energia-330-1405d.png'),(20,'CLIENTE','ENERGIA SOLAR',680,'*Olá!*\n\nSeu sistema de energia solar está quase completando 2 anos de uso! Esse é um ótimo momento para pensar em uma *manutenção preventiva* ou possíveis melhorias.\n\nSe quiser agendar uma visita técnica ou receber sugestões de otimização, entre em contato conosco!\n\n*Abaixo segue um Link do Nosso Formulário:*\nhttps://docs.google.com/forms/d/e/1FAIpQLSdzCaxmMwEnH1xbGhhYluIQ0cts99DiK4yqnTQRDn6Vt_5t4Q/viewform\n\n*Seu Feedback é Muito importante para nós!*\nhttps://g.page/r/CV4NFuBHVxrnEBM/review\n\nAtenciosamente,\nEquipe Confortec\n\n📲 @confortec_solucoes | 🌐 confortec.com.br','d:/Users/Usuario/Desktop/CONFORTEC/Imagens App/Cliente-energia-330-1405d.png'),(21,'CLIENTE','ENERGIA SOLAR',1000,'*Olá!*\n\nJá se passaram *1000 dias* desde a instalação do seu sistema de energia solar e *é importante lembrarmos que a manutenção preventiva* do seu sistema de energia solar é essencial para garantir seu melhor *desempenho e longevidade* do equipamento.\n\n*Abaixo segue um Link do Nosso Formulário:*\nhttps://docs.google.com/forms/d/e/1FAIpQLSdzCaxmMwEnH1xbGhhYluIQ0cts99DiK4yqnTQRDn6Vt_5t4Q/viewform\n\n*Seu Feedback é Muito importante para nós!*\nhttps://g.page/r/CV4NFuBHVxrnEBM/review\n\nAtenciosamente,\nEquipe Confortec\n\n📲 @confortec_solucoes | 🌐 confortec.com.br','d:/Users/Usuario/Desktop/CONFORTEC/Imagens App/Cliente-energia-330-1405d.png'),(23,'CLIENTE','ENERGIA SOLAR',1005,'*Olá!*\n\nJá se passaram mais de 1005 dias desde a compra do seu sistema de energia solar e é importante lembrarmos novamente sobre a *manutenção preventiva* do seu sistema de energia solar. Ela é essencial para garantir seu melhor desempenho e longevidade do equipamento.\n\n*Abaixo segue um Link do Nosso Formulário:*\nhttps://docs.google.com/forms/d/e/1FAIpQLSdzCaxmMwEnH1xbGhhYluIQ0cts99DiK4yqnTQRDn6Vt_5t4Q/viewform\n\n*Seu Feedback é Muito importante para nós!*\nhttps://g.page/r/CV4NFuBHVxrnEBM/review\n\nAtenciosamente,\nEquipe Confortec\n\n📲 @confortec_solucoes | 🌐 confortec.com.br','d:/Users/Usuario/Desktop/CONFORTEC/Imagens App/Cliente-energia-330-1405d.png'),(24,'CLIENTE','ENERGIA SOLAR',1400,'*Olá!*\n\nJá se passaram *1400* dias desde a compra do seu sistema de energia solar e é importante lembrarmos sobre a *manutenção preventiva* do seu sistema de energia solar para garantir seu melhor desempenho e longevidade do equipamento.\n\n*Abaixo segue um Link do Nosso Formulário:*\nhttps://docs.google.com/forms/d/e/1FAIpQLSdzCaxmMwEnH1xbGhhYluIQ0cts99DiK4yqnTQRDn6Vt_5t4Q/viewform\n\n*Seu Feedback é Muito importante para nós!*\nhttps://g.page/r/CV4NFuBHVxrnEBM/review\n\nAtenciosamente,\nEquipe Confortec\n\n📲 @confortec_solucoes | 🌐 confortec.com.br','d:/Users/Usuario/Desktop/CONFORTEC/Imagens App/Cliente-energia-330-1405d.png'),(26,'LEAD','AQUEC SOLAR',0,'Olá  Senhor(a), tudo bem?\nNós da Confortec vimos que você buscou informações sobre aquecimento solar.\n\nQue tal economizar na conta de luz com uma solução sustentável? Tenho uma *promoção especial para você: até R$200,00 de desconto* na compra do seu aquecimento solar!\nPara garantir seu desconto, basta nos responder para saber mais.\n*Aproveite essa condição exclusiva por tempo limitado!*\n \nSe precisar de suporte, pode entrar em contato conosco por aqui, pelo WhatsApp (54) 9670-0606 ou no e-mail tecnico@confortec.com.br.\n\nAtenciosamente,\nEquipe Confortec\n📲 @confortec_solucoes | 🌐 confortec.com.br','d:/Users/Usuario/Desktop/CONFORTEC/Imagens App/Leads/2.png'),(28,'LEAD','AQUEC SOLAR',10,'Olá  Senhor(a), tudo bem?\nAqui é a Confortec passando para avisar que esta é a sua última oportunidade de comprar seu aquecimento solar com nosso desconto especial.\n\nA promoção de *até R$200,00 OFF* está chegando ao fim. Responda agora e aproveite para valorizar seu imóvel e economizar na conta de luz!\n*É sua chance final, não deixe passar!*\n \nSe precisar de suporte, pode entrar em contato conosco por aqui, pelo WhatsApp (54) 9670-0606 ou no e-mail tecnico@confortec.com.br.\n\nAtenciosamente,\nEquipe Confortec\n📲 @confortec_solucoes | 🌐 confortec.com.br','d:/Users/Usuario/Desktop/CONFORTEC/Imagens App/Leads/2.png'),(29,'LEAD','AQUEC SOLAR',15,'Olá  Senhor(a), tudo bem?\nA Confortec acredita que a correria está grande, e que não conseguimos nos falar sobre o aquecimento solar. A promoção especial encerrou.\n\nContudo, nosso compromisso com a melhor solução para você continua. Se o projeto de economia e sustentabilidade ainda estiver nos seus planos, me dê um alô!\n \nSe precisar de suporte, pode entrar em contato conosco por aqui, pelo WhatsApp (54) 9670-0606 ou no e-mail tecnico@confortec.com.br.\n\nAtenciosamente,\nEquipe Confortec\n📲 @confortec_solucoes | 🌐 confortec.com.br','d:/Users/Usuario/Desktop/CONFORTEC/Imagens App/Leads/9.png'),(30,'LEAD','ENERGIA SOLAR',0,'Olá  Senhor(a), tudo bem?\nNós da Confortec vimos seu interesse em energia solar e em como zerar sua conta de luz.\n\nTenho uma proposta única para você: consegui uma condição exclusiva para negociar um *desconto especial diretamente com nosso diretor, Ademar Angst*.\nÉ uma chance única de ter o melhor projeto com uma condição que mais ninguém tem. Responda aqui para agendarmos.\n*Essa é uma oportunidade exclusiva para você!*\n \nSe precisar de suporte, pode entrar em contato conosco por aqui, pelo WhatsApp (54) 9670-0606 ou no e-mail tecnico@confortec.com.br.\n\nAtenciosamente,\nEquipe Confortec\n📲 @confortec_solucoes | 🌐 confortec.com.br','d:/Users/Usuario/Desktop/CONFORTEC/Imagens App/Leads/3.png'),(32,'LEAD','ENERGIA SOLAR',10,'Olá  Senhor(a), tudo bem?\nAqui é a Confortec passando para avisa que esta é a sua última chance.\nA janela de oportunidade para a negociação especial do seu projeto de energia solar está se fechando.\n\nO Ademar Angst reservou um tempo para atender você pessoalmente e garantir um *desconto imbatível*. Não perca essa chance de ouro. Responda agora!\n*É a sua cartada final para o melhor negócio!*\n \nSe precisar de suporte, pode entrar em contato conosco por aqui, pelo WhatsApp (54) 9670-0606 ou no e-mail tecnico@confortec.com.br.\n\nAtenciosamente,\nEquipe Confortec\n📲 @confortec_solucoes | 🌐 confortec.com.br','d:/Users/Usuario/Desktop/CONFORTEC/Imagens App/Leads/3.png'),(33,'LEAD','ENERGIA SOLAR',15,'Olá  Senhor(a), tudo bem?\nA Confortec imagina que a sua rotina tenha sido intensa. A condição especial de negociação direta com o Ademar para projetos de energia solar se encerrou.\n\nDe toda forma, as portas continuam abertas. Se quiser retomar o plano de gerar sua própria energia, me chame e encontraremos a melhor alternativa para você.\n \nSe precisar de suporte, pode entrar em contato conosco por aqui, pelo WhatsApp (54) 9670-0606 ou no e-mail tecnico@confortec.com.br.\n\nAtenciosamente,\nEquipe Confortec\n📲 @confortec_solucoes | 🌐 confortec.com.br','d:/Users/Usuario/Desktop/CONFORTEC/Imagens App/Leads/3.png'),(34,'LEAD','CURSOS',0,'Olá  Senhor(a), tudo bem?\nNós da Confortec vimos que você está buscando se qualificar com nossos cursos.\n\nInvestir em conhecimento é sempre o melhor caminho! Para te dar um empurrão, estamos com *R$50,00 de desconto* em qualquer um dos nossos cursos.\nBasta responder essa mensagem para garantir sua vaga com esse valor especial.\n*As vagas são limitadas, não perca tempo!*\n \nSe precisar de suporte, pode entrar em contato conosco por aqui, pelo WhatsApp (54) 9670-0606 ou no e-mail tecnico@confortec.com.br.\n\nAtenciosamente,\nEquipe Confortec\n📲 @confortec_solucoes | 🌐 confortec.com.br','d:/Users/Usuario/Desktop/CONFORTEC/Imagens App/Leads/4.png'),(35,'LEAD','CURSOS',5,'Olá  Senhor(a), tudo bem?\nAqui é da Confortec passando com uma novidade ainda melhor para sua qualificação profissional.\n\nPensando em turbinar seu currículo, liberamos uma oferta incrível: na compra de 2 cursos, você ganha *R$300,00 de desconto total*! É a sua chance de se especializar em dobro, pagando muito menos.\nCurtiu? Me chame aqui pra saber mais!\n \nSe precisar de suporte, pode entrar em contato conosco por aqui, pelo WhatsApp (54) 9670-0606 ou no e-mail tecnico@confortec.com.br.\n\nAtenciosamente,\nEquipe Confortec\n📲 @confortec_solucoes | 🌐 confortec.com.br','d:/Users/Usuario/Desktop/CONFORTEC/Imagens App/Leads/13.png'),(36,'LEAD','CURSOS',10,'Olá  Senhor(a), tudo bem?\nAqui é a Confortec passando para avisa que esta é a sua última chance para investir na sua carreira com condições especiais.\n\nTanto o desconto individual de *R$50,00* quanto a super oferta de *R$300,00 OFF na compra de 2 cursos* estão acabando.\n*Não adie seu futuro!* Responda agora e garanta sua matrícula.\n \nSe precisar de suporte, pode entrar em contato conosco por aqui, pelo WhatsApp (54) 9670-0606 ou no e-mail tecnico@confortec.com.br.\n\nAtenciosamente,\nEquipe Confortec\n📲 @confortec_solucoes | 🌐 confortec.com.br','d:/Users/Usuario/Desktop/CONFORTEC/Imagens App/Leads/13.png'),(37,'LEAD','CURSOS',15,'Olá  Senhor(a)\nNós da Confortec viemos informar que, nossas promoções especiais para os cursos se encerraram. Espero que não tenha perdido a oportunidade.\n\nMesmo assim, lembre-se que o conhecimento é um investimento que se paga sempre. Quando quiser dar o próximo passo na sua carreira, estarei por aqui para ajudar.\n \nSe precisar de suporte, pode entrar em contato conosco por aqui, pelo WhatsApp (54) 9670-0606 ou no e-mail tecnico@confortec.com.br.\n\nAtenciosamente,\nEquipe Confortec\n📲 @confortec_solucoes | 🌐 confortec.com.br','d:/Users/Usuario/Desktop/CONFORTEC/Imagens App/Leads/12.png'),(38,'LEAD','OUTROS',0,'Olá  Senhor(a), tudo bem?\nNós da Confortec vimos que você demonstrou interesse em nossas soluções.\n\nPara te ajudar a tirar seu projeto do papel, temos uma *condição especial* esperando por você. Queremos entender sua necessidade e oferecer o melhor negócio.\nVamos conversar? É só responder essa mensagem.\n*Estamos aguardando seu contato para apresentar uma proposta irrecusável!*\n \nSe precisar de suporte, pode entrar em contato conosco por aqui, pelo WhatsApp (54) 9670-0606 ou no e-mail tecnico@confortec.com.br.\n\nAtenciosamente,\nEquipe Confortec\n📲 @confortec_solucoes | 🌐 confortec.com.br','d:/Users/Usuario/Desktop/CONFORTEC/Imagens App/Leads/5.png'),(40,'LEAD','OUTROS',10,'Olá  Senhor(a), tudo bem?\nAqui é da Confortec passando para avisa que não gostariamos que você perdesse a oportunidade que separamos para você.\n\nNossa *condição especial* está prestes a expirar. Esta é uma das últimas chances de aproveitar. Responda agora e vamos fechar um ótimo negócio!\n*Não deixe para depois!*\n \nSe precisar de suporte, pode entrar em contato conosco por aqui, pelo WhatsApp (54) 9670-0606 ou no e-mail tecnico@confortec.com.br.\n\nAtenciosamente,\nEquipe Confortec\n📲 @confortec_solucoes | 🌐 confortec.com.br','d:/Users/Usuario/Desktop/CONFORTEC/Imagens App/Leads/5.png'),(41,'LEAD','OUTROS',15,'Olá  Senhor(a), tudo bem?.\nA Confortec informa que condição especial que havíamos reservado para você chegou ao fim.\n\nDe qualquer maneira, nosso interesse em ajudar a realizar seu projeto continua. Se precisar de algo ou quiser discutir novas possibilidades, saiba que pode contar conosco.\n \nSe precisar de suporte, pode entrar em contato conosco por aqui, pelo WhatsApp (54) 9670-0606 ou no e-mail tecnico@confortec.com.br.\n\nAtenciosamente,\nEquipe Confortec\n📲 @confortec_solucoes | 🌐 confortec.com.br','d:/Users/Usuario/Desktop/CONFORTEC/Imagens App/Leads/11.png'),(42,'LEAD','AQUECEDORES',10,'Olá  Senhor(a) tudo bem? Última chamada para garantir seu aquecedor a gás com um super desconto.\n\nEssa é sua chance final de economizar *até R$100,00* e ter um inverno muito mais confortável.\n*A promoção está acabando!* Responda agora e não fique de fora.\n \nSe precisar de suporte, pode entrar em contato conosco por aqui, pelo WhatsApp (54) 9670-0606 ou no e-mail tecnico@confortec.com.br.\n\nAtenciosamente,\nEquipe Confortec\n📲 @confortec_solucoes | 🌐 confortec.com.br','d:/Users/Usuario/Desktop/CONFORTEC/Imagens App/Leads/1.png'),(43,'LEAD','AQUECEDORES',15,'Olá  Senhor(a). Acredito que a correria está grande, mas não podia deixar de te avisar que nossa promoção especial para aquecedores a gás encerrou.\n\nDe qualquer forma, se ainda tiver interesse, me chame aqui. Sempre podemos encontrar uma boa condição para você!\n \nSe precisar de suporte, pode entrar em contato conosco por aqui, pelo WhatsApp (54) 9670-0606 ou no e-mail tecnico@confortec.com.br.\n\nAtenciosamente,\nEquipe Confortec\n📲 @confortec_solucoes | 🌐 confortec.com.br','d:/Users/Usuario/Desktop/CONFORTEC/Imagens App/Leads/8.png'),(44,'CLIENTE','ENERGIA SOLAR',1405,'*Olá!*\n\nJá se passaram mais de *1405* dias desde a compra do seu sistema de energia solar e é importante relembrar você sobre a importância da *manutenção preventiva* do seu sistema de energia solar para garantir seu melhor desempenho e longevidade do equipamento.\n\n*Abaixo segue um Link do Nosso Formulário:*\nhttps://docs.google.com/forms/d/e/1FAIpQLSdzCaxmMwEnH1xbGhhYluIQ0cts99DiK4yqnTQRDn6Vt_5t4Q/viewform\n\n*Seu Feedback é Muito importante para nós!*\nhttps://g.page/r/CV4NFuBHVxrnEBM/review\n\nAtenciosamente,\nEquipe Confortec\n\n📲 @confortec_solucoes | 🌐 confortec.com.br','d:/Users/Usuario/Desktop/CONFORTEC/Imagens App/Cliente-energia-330-1405d.png'),(48,'ANIVERSARIO','CLIENTES',0,'*Olá, Boa tarde*!\n\nA família Confortec gostaria de celebrar você hoje! *Desejamos um Feliz Aniversário repleto de alegria, paz e, claro, muito conforto.*\n\nÉ um prazer tê-lo(a) como parte da nossa jornada. Agradecemos sua confiança em nossos produtos e esperamos que continue desfrutando do conforto que a Confortec proporciona em seu dia a dia.\n\nSe precisar de algo, pode entrar em contato conosco, por aqui ou pelo *WhatsApp 54 9670-0606* ou enviar um E-mail em *tecnico@confortec.com.br!*\n\n*Seu Feedback é Muito importante para nós!*\n https://g.page/r/CV4NFuBHVxrnEBM/review\n\nAtenciosamente,\nEquipe Confortec\n\n@confortec_solucoes |  confortec.com.br','d:/Users/Usuario/Desktop/CONFORTEC/Imagens App/Aniversário.png');
/*!40000 ALTER TABLE `automacao_mensagens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `telefone` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'Ativo',
  `data_criacao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `cpf` varchar(20) DEFAULT NULL,
  `whatsapp` varchar(20) DEFAULT NULL,
  `nfes_vinculadas` text,
  `data_cadastro` date DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `grupo` varchar(50) DEFAULT 'CLIENTES',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (2,'Adrian de Lima (testes Automaçao)',NULL,'adriandelima00@gmail.com','Ativo','2025-11-25 18:49:01','04064451090','5554997062651','-','2025-11-25','2006-11-16','CLIENTES'),(3,'Suenir Tuani Olcieski',NULL,'-','Ativo','2025-11-25 19:51:45','020.544.790-20','5554996812067','1738','2025-11-25','1991-04-01','CLIENTES'),(5,'Silvana Palaora',NULL,'-','Ativo','2025-11-25 19:55:08','048.560.780-89','5554999316686','1737','2025-11-25','2002-07-26','CLIENTES'),(6,'Fabio Machado Dos Santos',NULL,'-','Ativo','2025-11-25 19:56:11','671.257.510-91','5554999272632','1735','2025-11-25','1975-06-29','CLIENTES'),(7,'Renam Francisco Panassol',NULL,'-','Ativo','2025-11-25 19:57:05','000.190.410-80','555499487473','1734','2025-11-25','1981-03-18','CLIENTES'),(8,'Loureco Chieli',NULL,'-','Ativo','2025-11-25 19:58:20','596.868.390-20','5554981490362','1730','2025-11-25','1967-07-06','CLIENTES'),(9,'Edson Cardoso dos Santos',NULL,'edsoncardo.santos@gmail.com','Ativo','2025-11-25 19:59:51','621.402.130-68','5554996702444','1726','2025-11-25','1974-11-09','CLIENTES'),(10,'Rafael Censi',NULL,'-','Ativo','2025-11-27 16:49:27','036.083.910-02','5554999655805','-','2025-11-27','2002-10-07','CLIENTES'),(11,'Silvana Palaoro',NULL,'-','Ativo','2025-11-27 16:50:36','048.560.780-89','5554999316686','-','2025-11-27','2025-11-25','CLIENTES'),(12,'Giovanna Cassiolla de Vitto',NULL,'-','Ativo','2025-11-27 16:51:21','073.404.451-88','5565999722468','-','2025-11-27','2001-02-15','CLIENTES'),(13,'Lucas Mansur Sempate Silva',NULL,'-','Ativo','2025-11-27 16:56:29','060.310.459-23','5554992996658','-','2025-11-27','2000-10-09','CLIENTES'),(14,'Tamiris Helena Boschetti',NULL,'-','Ativo','2025-11-27 16:57:26','011.395.960-55','555491324869','-','2025-11-27','1999-05-27','CLIENTES'),(15,'Evandro Reis de Oliveira',NULL,'-','Ativo','2025-11-27 16:58:07','804.472.600-49','555481270850','-','2025-11-27','1998-03-12','CLIENTES'),(16,'Bruna Eduarda HollWeg',NULL,'-','Ativo','2025-11-27 17:00:55','040.289.240-22','5554984049036','-','2025-11-27','1997-03-27','CLIENTES'),(17,'Wagner Viera Tassotti',NULL,'','Ativo','2025-11-27 17:01:32','','5554991882039','','2025-11-27','1987-03-04','CLIENTES'),(18,'Geovane Jaco Herpich',NULL,'-','Ativo','2025-11-27 17:13:35','-','5551996003206','-','2025-11-27','1996-08-12','CLIENTES'),(19,'Jonathan Spinelli',NULL,'-','Ativo','2025-11-27 17:14:21','-','5554984373831','','2025-11-27','1996-05-30','CLIENTES'),(20,'Anielle Tais Schossler',NULL,'-','Ativo','2025-11-27 17:15:12','-','5554996025371','-','2025-11-27','1996-01-17','CLIENTES'),(21,'Jaqueline Andrea Vidor',NULL,'-','Ativo','2025-11-27 17:15:46','-','5554999041028','-','2025-11-27','1996-01-08','CLIENTES'),(22,'Filipe Mari',NULL,'-','Ativo','2025-11-27 17:16:16','-','5554991736997','','2025-11-27','1995-08-06','CLIENTES'),(23,'Vinicius Monteiro',NULL,'-','Ativo','2025-11-27 17:17:27','-','5553991526556','','2025-11-27','1995-08-04','CLIENTES'),(24,'Caroline Silvestrin',NULL,'-','Ativo','2025-11-27 17:18:11','-','5549999700104','','2025-11-27','1995-05-09','CLIENTES'),(25,'Greici Galiotto',NULL,'-','Ativo','2025-11-27 17:19:00','-','5554999974796','','2025-11-27','1994-11-14','CLIENTES'),(26,'Amanda Giacomelli Motter',NULL,'-','Ativo','2025-11-27 17:21:09','-','5554996566167','','2025-11-27','1994-10-03','CLIENTES'),(27,'Sheila Vassoler',NULL,'-','Ativo','2025-11-27 17:21:42','-','5554999742089','','2025-11-27','1994-07-04','CLIENTES'),(28,'Ariel Rugieri Dotto',NULL,'-','Ativo','2025-11-27 17:24:43','-','55999593980','','2025-11-27','1994-05-04','CLIENTES'),(29,'Thales Esymael',NULL,'-','Ativo','2025-11-27 17:25:26','-','5551996831955','','2025-11-27','1994-04-15','CLIENTES'),(30,'Eduardo Krindges',NULL,'-','Ativo','2025-11-27 17:28:18','-','5554996669152','','2025-11-27','1993-07-18','CLIENTES'),(31,'Gabriela Crocoli',NULL,'-','Ativo','2025-11-27 18:00:32','-','5554996729770','-','2025-11-27','1993-06-23','CLIENTES'),(32,'Bruno Bueno de Abreu',NULL,'-','Ativo','2025-11-27 18:01:11','-','5554999224904','-','2025-11-27','1993-03-03','CLIENTES'),(33,'Paola Pozzer Werner',NULL,'-','Ativo','2025-11-27 18:01:46','-','5554999430735','-','2025-11-27','1992-12-17','CLIENTES'),(34,'Denise Neumann',NULL,'-','Ativo','2025-11-27 18:02:15','-','5554999717362','-','2025-11-27','1992-10-06','CLIENTES'),(35,'Metheus Modesti Lunardi',NULL,'-','Ativo','2025-11-27 18:02:54','-','5554999799059','-','2025-11-27','1992-02-24','CLIENTES'),(36,'Rafaela Roth',NULL,'-','Ativo','2025-11-27 18:03:24','-','5554996091552','-','2025-11-27','1992-02-06','CLIENTES'),(37,'Alexandre Matos Guimaraes',NULL,'-','Ativo','2025-11-27 18:03:50','-','5551992261943','-','2025-11-27','1992-02-05','CLIENTES'),(38,'Frederico Mazzotti',NULL,'-','Ativo','2025-11-27 18:04:35','-','5554999993358','-','2025-11-27','1991-11-08','CLIENTES'),(39,'Helen Paula de Morais Hoffman',NULL,'-','Ativo','2025-11-27 18:05:13','-','5554991198693','-','2025-11-27','1991-09-20','CLIENTES'),(40,'Hamilton Pereira da Silva',NULL,'-','Ativo','2025-11-27 20:45:44','-','5551995731891','-','2025-11-27','1991-07-28','CLIENTES'),(41,'Suenir Tuani Olcieski',NULL,'-','Ativo','2025-11-27 20:46:31','-','5554996812067','-','2025-11-27','1991-04-01','CLIENTES'),(42,'Bruna Gaviraghi',NULL,'-','Ativo','2025-11-27 20:47:08','-','5554991474713','','2025-11-27','1991-03-28','CLIENTES'),(43,'Denise Gaio',NULL,'-','Ativo','2025-11-27 20:48:07','-','5554984094510','','2025-11-27','1991-01-24','CLIENTES'),(44,'Leonel Braz Junior',NULL,'-','Ativo','2025-11-27 20:48:50','-','5554992119704','','2025-11-27','1991-01-17','CLIENTES'),(45,'Samuel Andrighetti',NULL,'-','Ativo','2025-11-27 20:49:19','-','5554981391169','','2025-11-27','1990-10-05','CLIENTES'),(46,'Natieli Melo Rodrigues',NULL,'-','Ativo','2025-12-01 20:14:20','-','555491697377','-','2025-12-01','1990-06-28','CLIENTES'),(47,'Gustavo Luis Tonietto',NULL,'-','Ativo','2025-12-01 20:14:58','-','5554996542331','-','2025-12-01','1990-06-26','CLIENTES'),(48,'Lauren Gomes Pires',NULL,'-','Ativo','2025-12-01 20:15:34','-','5554997043377','-','2025-12-01','1990-05-23','CLIENTES'),(49,'Fabio dos Santos Ruwer',NULL,'-','Ativo','2025-12-01 20:16:04','-','5554996879522','-','2025-12-01','1990-05-04','CLIENTES'),(50,'Vinicius Timm Bonow',NULL,'-','Ativo','2025-12-01 20:16:33','-','5553981132336','-','2025-12-01','1990-03-28','CLIENTES'),(51,'Melinda da Silva Dalasgasperina',NULL,'-','Ativo','2025-12-01 20:17:30','-','5554981709308','-','2025-12-01','1989-11-13','CLIENTES'),(52,'Guilherme Zatti Fredizzi',NULL,'-','Ativo','2025-12-01 20:18:05','-','5554991311396','-','2025-12-01','1989-11-13','CLIENTES'),(53,'Daniel Flores Smaniotto',NULL,'-','Ativo','2025-12-01 20:18:50','-','5554999457173','-','2025-12-01','1989-10-13','CLIENTES'),(54,'Mauro Flavio da Silva Esquivel',NULL,'-','Ativo','2025-12-01 20:19:24','-','5511948084675','-','2025-12-01','1989-08-23','CLIENTES'),(55,'Fabio Longo Vicenzi',NULL,'-','Ativo','2025-12-01 20:20:01','-','5554999776417','-','2025-12-01','1985-03-11','CLIENTES'),(56,'Daniela Ferrara',NULL,'-','Ativo','2025-12-01 20:20:27','-','5554991813626','-','2025-12-01','1985-03-23','CLIENTES'),(57,'Gulherme Zanotti',NULL,'-','Ativo','2025-12-01 20:21:36','-','5554981398451','-','2025-12-01','1985-07-21','CLIENTES'),(58,'Lindomar Ferreira Filho',NULL,'-','Ativo','2025-12-01 20:22:10','-','555491123818','-','2025-12-01','1985-08-27','CLIENTES'),(59,'Eduardo Zotti',NULL,'-','Ativo','2025-12-01 20:22:35','-','5554981194574','-','2025-12-01','1985-09-28','CLIENTES'),(60,'Dhiones Marca',NULL,'-','Ativo','2025-12-01 20:23:28','-','555491524116','-','2025-12-01','1985-12-12','CLIENTES'),(61,'Marizete Marcia Villani',NULL,'-','Ativo','2025-12-01 20:23:58','-','555499779076','-','2025-12-01','1986-01-07','CLIENTES'),(62,'Rodrigo Lazzari',NULL,'-','Ativo','2025-12-01 20:24:27','-','555499622555','-','2025-12-01','1986-03-27','CLIENTES'),(63,'Maicon Djoni Silvestre',NULL,'','Ativo','2025-12-01 20:28:20','-','5554999586426','-','2025-12-01','1986-03-28','CLIENTES'),(64,'Leo Graff',NULL,'-','Ativo','2025-12-01 20:29:23','-','5554999750775','-','2025-12-01','1986-04-09','CLIENTES'),(65,'Bruno Girelli',NULL,'-','Ativo','2025-12-01 20:29:50','-','5554991000638','-','2025-12-01','1986-04-15','CLIENTES'),(66,'Cristofer Armeliato',NULL,'-','Ativo','2025-12-01 20:30:26','-','5554984351207','-','2025-12-01','1986-09-24','CLIENTES'),(67,'Junior Pereira Machado',NULL,'','Ativo','2025-12-01 20:31:15','-','5554996235707','-','2025-12-01','1986-09-26','CLIENTES'),(68,'Lucas Bin',NULL,'','Ativo','2025-12-01 20:31:48','','555432686814','','2025-12-01','1986-11-09','CLIENTES'),(69,'Priscila Cecato',NULL,'','Ativo','2025-12-01 20:32:50','','555499472689','','2025-12-01','1986-11-24','CLIENTES'),(70,'Jonathan Orsi Chiu',NULL,'','Ativo','2025-12-01 20:35:37','','5554981151499','','2025-12-01','1986-12-02','CLIENTES'),(71,'Angela Medeiros dos Santos',NULL,'','Ativo','2025-12-01 20:37:07','','5554996924859','','2025-12-01','1987-05-24','CLIENTES'),(72,'Thomaz Argenta',NULL,'','Ativo','2025-12-01 20:37:45','','5554999922192','','2025-12-01','1987-06-19','CLIENTES'),(73,'Estevao Silvestrin',NULL,'','Ativo','2025-12-01 20:38:14','','5554991495353','','2025-12-01','1987-07-01','CLIENTES'),(74,'Eloi Peltz',NULL,'','Ativo','2025-12-01 20:38:43','','5554996964454','','2025-12-01','1987-08-14','CLIENTES'),(75,'Daniela Kaneko',NULL,'','Ativo','2025-12-01 20:39:15','','555481488645','','2025-12-01','1987-09-05','CLIENTES'),(76,'Eliton Luis Cantele',NULL,'','Ativo','2025-12-01 20:39:59','','5554991601304','','2025-12-01','1987-09-08','CLIENTES'),(77,'Vinicius Cardoso Boff',NULL,'','Ativo','2025-12-01 20:40:32','','5554999677743','','2025-12-01','1987-09-13','CLIENTES'),(78,'Fabiano Lain',NULL,'','Ativo','2025-12-01 20:40:58','','5554996275205','','2025-12-01','1987-09-20','CLIENTES'),(79,'Alan Barbosa de Lima',NULL,'','Ativo','2025-12-01 20:41:43','','5521964361884','','2025-12-01','1987-10-02','CLIENTES'),(80,'Lucas Ferreira Luchi',NULL,'','Ativo','2025-12-01 20:42:12','','555499435516','','2025-12-01','1987-11-07','CLIENTES'),(81,'Jeferson Breda',NULL,'','Ativo','2025-12-01 20:42:35','','555497090053','','2025-12-01','1987-11-11','CLIENTES'),(82,'William Lopes Silva',NULL,'','Ativo','2025-12-01 20:43:23','','5553991013882','','2025-12-01','1987-12-23','CLIENTES'),(83,'Luciane Barea',NULL,'','Ativo','2025-12-01 20:43:50','','5554984447362','','2025-12-01','1988-01-20','CLIENTES'),(84,'Deisi Cassia Bernadi',NULL,'','Ativo','2025-12-01 20:46:17','','5554996353928','','2025-12-01','1988-02-09','CLIENTES'),(85,'Tales Foss Frata',NULL,'','Ativo','2025-12-01 20:46:42','','555499386698','','2025-12-01','1988-02-12','CLIENTES'),(86,'Michael Boijink Machado',NULL,'','Ativo','2025-12-01 20:47:16','','5554991708601','','2025-12-01','1988-04-02','CLIENTES'),(87,'Mauricio Piccoli',NULL,'','Ativo','2025-12-01 20:47:45','','555496486551','','2025-12-01','1988-04-04','CLIENTES'),(88,'Andrigo Casiraghi',NULL,'','Ativo','2025-12-01 20:48:10','','555499707178','','2025-12-01','1988-04-23','CLIENTES'),(89,'Renata Sartori',NULL,'','Ativo','2025-12-01 20:48:52','','5554999328006','','2025-12-01','1988-07-15','CLIENTES'),(90,'Daniele Girelli',NULL,'','Ativo','2025-12-01 20:49:23','','555432115594','','2025-12-01','1988-08-27','CLIENTES'),(91,'Anna Beatriz da Silva Lima',NULL,'','Ativo','2025-12-01 20:50:00','','5551981848179','','2025-12-01','1988-11-15','CLIENTES'),(92,'Juliano Antonio dos Santos',NULL,'','Ativo','2025-12-01 20:50:28','','5554991731159','','2025-12-01','1988-11-22','CLIENTES'),(93,'Anderson Leonir Wahlbrinck',NULL,'','Ativo','2025-12-01 20:52:30','','5554991850212','','2025-12-01','1988-12-20','CLIENTES'),(94,'Vinicius Paim da Silva',NULL,'','Ativo','2025-12-01 20:53:00','','555491438066','','2025-12-01','1989-03-15','CLIENTES'),(95,'Andre Paulo Slodkowski',NULL,'','Ativo','2025-12-01 20:53:29','','5554999183862','','2025-12-01','1989-06-29','CLIENTES'),(96,'Paulo Ricardo Ferreira',NULL,'','Ativo','2025-12-01 20:53:54','','5554992453698','','2025-12-01','1989-07-29','CLIENTES'),(97,'Felipe Dal Vesco',NULL,'','Ativo','2025-12-01 20:54:19','','555499786512','','2025-12-01','1989-08-20','CLIENTES'),(98,'Tiago Ilha',NULL,'-','Ativo','2025-12-09 17:02:50','-','5554996292125','','2025-12-09','1984-12-13','CLIENTES'),(99,'Ronaldo Serpa da Rosa',NULL,'-','Ativo','2025-12-09 17:03:23','-','5554999769006','','2025-12-09','1984-11-24','CLIENTES'),(100,'Faber Taciano Sippel',NULL,'-','Ativo','2025-12-09 17:05:27','-','555491430196','','2025-12-09','1984-10-22','CLIENTES'),(101,'Alcemar Jorge Waskiewicz',NULL,'-','Ativo','2025-12-09 17:06:05','-','5554999824048','','2025-12-09','1984-10-04','CLIENTES'),(102,'Fernando Rodrigo Muraro',NULL,'-','Ativo','2025-12-09 17:07:44','-','5554991800850','','2025-12-09','1984-08-08','CLIENTES'),(103,'Silvana Casagranda',NULL,'-','Ativo','2025-12-09 17:08:42','-','5554984084916','','2025-12-09','1984-07-10','CLIENTES'),(104,'Sedinei Brum Faccioli',NULL,'-','Ativo','2025-12-09 17:09:46','-','5554999531678','','2025-12-09','1984-07-10','CLIENTES'),(105,'Ricardo Flores',NULL,'-','Ativo','2025-12-09 17:21:20','-','5554981355243','','2025-12-09','1984-06-03','CLIENTES');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compras_detalhadas`
--

DROP TABLE IF EXISTS `compras_detalhadas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compras_detalhadas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `cpfcnpj` varchar(25) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `bairro` varchar(255) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `grupo` varchar(255) DEFAULT NULL,
  `nfe` varchar(20) DEFAULT NULL,
  `id_produtos` text,
  `data_compra` date DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL,
  `forma_pagamento` varchar(50) DEFAULT NULL,
  `pendente` tinyint(1) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `data_aniversario` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=610 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compras_detalhadas`
--

LOCK TABLES `compras_detalhadas` WRITE;
/*!40000 ALTER TABLE `compras_detalhadas` DISABLE KEYS */;
INSERT INTO `compras_detalhadas` VALUES (52,'TIAGO CARDOSO MARTINI','906.755.680-72','RUA GANA, 1120 APTO 501','91380-120','VILA IPIRANGA','555199191511','OUTROS','1550','1245','2025-03-26',266.00,'À Vista',0,'ENVIADO',NULL),(53,'JOÃO CARLOS SOMACAL','504.399.100-30','NOVA MILANO - S/N, 900','95182-000','NOVA MILANO','5554999570463','OUTROS','1549','1246','2025-03-24',739.50,'À Vista',0,'ENVIADO',NULL),(54,'EVANDRO DOS SANTOS','323.923.718-60','RUA DOUTOR JOSE COSTA E SILVA SOBRINHO, 325','11260-066','-','555199191511','OUTROS','1548','1247','2025-03-20',444.00,'Parcelado',0,'ENVIADO',NULL),(55,'IBRAHIM DA SILVEIRA','013.609.740-59','RUA GENERAL GOES MONTEIRO, 178 APTO 902','95703-80','-','5554999143042','AQUECEDORES','1547','1248','2025-03-19',4243.00,'Parcelado',0,'ENVIADO',NULL),(56,'ADRIANA BRUGALLI DE FREITAS','727.557.250-87','RUA MARCELINO CHAMPAGNAT, 849 CENTRO','95720-000','CENTRO','5554999739907','OUTROS','1546','1249','2025-03-18',2200.00,'À Vista',0,'ENVIADO',NULL),(57,'DIEGO FERRAZ MONTEIRO','963.525.580-20','RUA HUMBERTO ACCORSI, 73 AURORA','95185-000','AURORA','5555996684339','AQUECEDORES','1545','1250','2025-03-14',713.00,'À Vista',0,'ENVIADO',NULL),(58,'ROSANA MESSAGI','50.525.767/0001-02','RUA MARECHAL DEODORO, 1260 GLORIA','95520-000','GLORIA','5551996540663','OUTROS','1544','1251','2025-03-12',326.90,'À Vista',0,'ENVIADO',NULL),(59,'AUGUSTO GRAVE','012.196.410-81','AVENIDA 15 DE NOVEMBRO, 1512 CENTRO','99490-000','CENTRO','5551981329081','OUTROS','1543','1252','2025-03-11',470.00,'À Vista',0,'ENVIADO',NULL),(60,'TIAGO CARDOSO MARTINI','906.755.680-72','RUA GANA, 1120 APTO 501 VILA IPIRANGA','91380-120','VILA IPIRANGA','555199191511','OUTROS','1541','1253','2025-03-05',266.00,'À Vista',0,'ENVIADO',NULL),(61,'ELAINE GABIATTI','019.648.860-58','RUA JACOMINA VERONESE, 125 PRIMEIRO DE MAIO','95181-174','PRIMEIRO DE MAIO','5554999669821','AQUECEDORES','1540','1254','2025-03-06',3354.00,'Parcelado',0,'ENVIADO',NULL),(62,'ESTELA MARIA SCHARDONG KERSTING','055.196.240-20','RUA DAS LARANJEIRAS, 200 JARDIM VALE','95765-000','JARDIM VALE','5551981527463','OUTROS','1551','1255','2025-03-28',1180.00,'À Vista',0,'ENVIADO',NULL),(63,'MAYARA PERON ELIAS RAMOS','059.587.549-12','RUA LAURO MULLER, 880 CENTRO','88501-131','CENTRO','5554999297973','AQUEC SOLAR','1552','1256','2025-03-31',533.50,'À Vista',0,'ENVIADO',NULL),(64,'AUGUSTO GRAVE','012.196.410-81','AVENIDA 15 DE NOVEMBRO, 1512 CENTRO','99490-000','CENTRO','5551981329081','OUTROS','1532','1257','2025-02-13',470.00,'À Vista',0,'ENVIADO',NULL),(65,'JOÃO CARLOS SOMACAL','504.399.100-30','NOVA MILANO - S/N, 900','95182-000','NOVA MILANO','5554999570463','AQUEC SOLAR','1531','1258','2025-02-11',8198.00,'À Vista',0,'ENVIADO',NULL),(66,'AUGUSTO GRAVE','012.196.410-81','AVENIDA 15 DE NOVEMBRO, 1512 CENTRO','99490-000','CENTRO','5551981329081','AQUEC SOLAR','1529','1259','2025-02-07',5200.00,'À Vista',0,'ENVIADO',NULL),(67,'FELIPE DALLO ROSSI','033.167.200-65','RUA JULIO DE CASTILHOS, 500 CENTRO','95260-000','CENTRO','5554996739985','OUTROS','1528','1260','2025-02-04',440.00,'À Vista',0,'ENVIADO',NULL),(68,'JF COMERCIO DE PARAFUSOS E MAQUINAS LTDA','42.215.694/0001-24','AVENIDA SONNEMBERG, 581 CONJUNTO ROMILDO FERREIRA','74413-360','CONJUNTO ROMILDO FERREIRA','55562999269547','OUTROS','1527','1261','2025-02-03',1457.00,'À Vista',0,'ENVIADO',NULL),(69,'INSTALSYSTEM ENGENHARIA DE INSTALAÇÕES LTDA','03.548.913/0001-35','RUA SÃO JOAQUIM, 175 ESTANCIA VELHA','92030-650','ESTANCIA VELHA','5555197070862','OUTROS','1524','1262','2025-01-30',1050.00,'À Vista',0,'ENVIADO',NULL),(70,'ANTONIO ROSINA','397.340.720-72','RUA SERAFINA CORREA, 15 IMIGRANTE','95180-286','IMIGRANTE','55554991189478','AQUECEDORES','1523','1263','2025-01-30',2430.00,'À Vista',0,'ENVIADO',NULL),(71,'MAGDALENA DAL PONTE CERATTI','781.038.430-91','RUA QUATORZE DE JULHO, 819 CENTRO','95170-416','CENTRO','555199191511','AQUECEDORES','1553','1264','2025-03-31',2300.00,'À Vista',0,'ENVIADO',NULL),(72,'METALTECNICA METALURGICA LTDA','02.984.383/0001-05','AVENIDA FREDERICO AUGUSTO RITTER, 2500 DISTRITO INDUSTRIAL','94930-650','DISTRITO INDUSTRIAL','5555137781410','OUTROS','1554','1265','2025-04-01',132.80,'À Vista',0,'',NULL),(73,'NADIA FIORIO','994.366.800-82','RUA TREZE DE MAIO, 766 APTO 403','95170-428','CENTRO','5554981267616','AQUECEDORES','1581','1471,1402,1290','2025-05-09',2650.00,'À Vista',0,NULL,NULL),(74,'EWERTON DE OLIVEIRA','136.335.438-80','RUA RODOLFO LUPORINI, 637','13564-520','PARQUE INDUSTRIAL','5516997529151','OUTROS','1580','57','2025-05-09',386.39,'À Vista',0,NULL,NULL),(75,'MARCELO FELIPE DOS SANTOS','258.170.468-30','RUA DOUTOR OSWALDO ADIB ABIB, 473 BLZ 1 AP 303','13044-491','PARQUE DAS CACHOEIRAS','-','OUTROS','1579','57','2025-05-07',386.39,'À Vista',0,NULL,NULL),(76,'ATOS GAS VITORIA E INPECÇÃO DE GÁS LTDA','45.113.423/0001-56','RUA HONÓRIO, 18 SALA 205','20771-420','TODOS OS SANTOS','5521992343233','OUTROS','1578','57','2025-05-06',400.56,'Parcelado',0,NULL,NULL),(77,'JOAO PAULO','088.603.087-04','ESTRADA OSWALDO DA COSTA FRIAS, 16 CASA 16','25770-370','POSSE','5524992724898','ENERGIA SOLAR','1577','57','2025-05-06',370.37,'À Vista',0,NULL,NULL),(78,'GREICI GALIOTTO','030.263.460-63','RUA SEVERO RAVIZZONI, 2955 AP 203','95270-000','UNIÃO','5554999974796','AQUECEDORES','1575','1471,1290,1402,1531','2025-05-05',2848.00,'À Vista',0,NULL,NULL),(79,'VANDER GERALDO SILVERIO PEREIRA','050.324.676-00','RUA DOUTOR GASTAO FESTUGATTO, 50 APTO. 205','95041-620','MADUREIRA','5554981499899','AQUECEDORES','1574','1471','2025-05-02',2070.00,'Parcelado',0,NULL,NULL),(80,'IVANOR KLOSS','17.464.648/0001-11','R JULIO DE CASTILHOS, 270','95260-000','CENTRO','5554999336121','OUTROS','1572','1013','2025-04-30',318.00,'À Vista',0,NULL,NULL),(81,'ÁLVARO FROSI','039.926.260-16','RUA MARIA HIGINA GARDINI, 448','95181-152','PRIMEIRO DE MAIO','5554996228520','AQUECEDORES','1571','38','2025-04-30',2216.00,'À Vista',0,NULL,NULL),(82,'MARCELO JOSUE MOSQUER','12.323.022/0001-71','RUA AGNALDO LUIS BOEIRA, 1393','95059-207','JARDIM IRACEMA','55549811173068','AQUECEDORES','1570','1470','2025-04-30',1509.00,'À Vista',0,NULL,NULL),(83,'JOÃO ANTONIO LANGASSNER','173.339.700-00','RUA GENERAL SALUSTIANO, 180 APTO 180','90010-290','CENTRO HISTÓRICO','5551999829777','AQUEC SOLAR','1569','16','2025-04-28',2360.00,'À Vista',0,NULL,NULL),(84,'CRISTIANO MARIN','37.976.026/0001-80','RUA GONCALVES DIAS, 155','95180-244','IMIGRANTE','5554997105934','AQUECEDORES','1568','1471','2025-04-28',1900.00,'À Vista',0,NULL,NULL),(85,'MARIJANE GERVASONI','450.964.570-87','RUA DOUTOR JAIME ROSSLER, 89 APTO 603','95170-356','PLANALTO','5554999748312','AQUECEDORES','1567','1422,1402,1290','2025-04-28',2600.00,'À Vista',0,NULL,NULL),(86,'LUIS CARLOS GARDINI','004.424.980-20','RUA ANGELO GARDINI, 228','95181-014','SANTO ANTONIO','5554999187656','OUTROS','1565','804','2025-04-25',300.00,'À Vista',0,NULL,NULL),(87,'LARA LAZARI','006.369.410-78','RUA DA REPUBLICA, 120 APTO 401','95170-476','CENTRO','5554999182523','AQUECEDORES','1564','1471,1290,1384','2025-04-25',2669.80,'À Vista',0,NULL,NULL),(88,'MARCUS VINICIUS TABELEÃO PILOTTO','017.647.100-61','RUA ANGELO GARDINI, 51 APTO 701 A','95180-020','VOLTA GRANDE','5554981055052','OUTROS','1563','77,1342,728,1013','2025-04-23',5628.96,'À Vista',0,NULL,NULL),(89,'IACC PRÉ MOLDADOS LTDA','95180-020','RUA TANCREDO DE ALMEIDA NEVES, 5192','89711-650','SÃO CRISTOVÃO','554934413600','OUTROS','1562','57','2025-04-17',280.00,'À Vista',0,NULL,NULL),(90,'JOÃO SERGIO MATTE','506.440.170-15','RUA PRINCIPAL, 990','95124-000','SÃO PEDRO DA TERCEIRA LÉGUA','555430268392','AQUEC SOLAR','1561','1425','2025-04-17',3700.00,'À Vista',0,NULL,NULL),(91,'LUCIANO FEDATTO','599.118.160-87','TRAVESSA MINAS GERAIS, 174 APTO 202','95705-004','HUMAITÁ','5554981399794','AQUECEDORES','1560','47,1401,1290,64','2025-04-15',3500.00,'À Vista',0,NULL,NULL),(92,'IVONEI DE CARVALHO','727.403.370-00','RUA JOSEPHINA SUSIN PERONDI, 874','95060-561','ANA RECH','5554981191516','AQUEC SOLAR','1559','1426','2025-04-15',3998.59,'À Vista',0,NULL,NULL),(93,'ADAIR JOÃO BOURSCHEIDT','019.877.269-60','ESTRADA SAO JORGE, 199 INTERIOR','95720-000','SÃO LUIZ DO ARARIPE','5554991073163','AQUECEDORES','1558','46','2025-04-12',2500.00,'À Vista',0,NULL,NULL),(94,'GABRIELA LOPES TRICHES','660.579.060-04','RUA PROFESSORA VIERO, 1511 APTO 901','95040-520','MADUREIRA','5499675599','AQUECEDORES','1557','1515,1401,1290','2025-04-09',4230.00,'À Vista',0,NULL,NULL),(95,'MARCIO ANDREOLA','586.216.600-91','SÃO ROQUE FIGUEIRA DE MELO, 480','95720-000','INTERIOR','5554999098001','AQUEC SOLAR','1556','1427,1013,77','2025-04-09',5678.44,'À Vista',0,NULL,NULL),(96,'DAIANE FURLANETTO','004.306.700-01','RUA FELIX DA CUNHA, 144 APTO 1004','95700-116','CENTRO','5554991362139','AQUECEDORES','1555','1526,1401,1290','2025-04-08',3521.50,'À Vista',0,NULL,NULL),(97,'PAULO RICARDO CASA','018.602.220-48','CAPELA SÃO TIAGO, S/N','95274-000','MATO PERSO','-','OUTROS','1521','77','2025-01-28',1400.00,'À Vista',0,NULL,NULL),(98,'RENATO GARBIN DE OLIVEIRA','504.378.870-49','RUA JOSE SACHET, 1027','95170-722','SÃO LUIZ','5554991764246','AQUEC SOLAR','1520','1424,1','2025-01-25',6295.64,'À Vista',0,NULL,NULL),(99,'JOSENILDO DA SILVA CALHEIROS','030.039.024-66','RUA MARQUES DE OLIVEIRA, 150','21031-710','RAMOS','5521980276475','OUTROS','1519','57','2025-01-22',867.00,'À Vista',0,NULL,NULL),(100,'FABIANA FIORIO','955.306.490-68','RUA TREZE DE MAIO, 766 APTO 1004','95170-428','CENTRO','-','AQUECEDORES','1518','1422,1422,1290','2025-01-20',2613.00,'Parcelado',0,NULL,NULL),(101,'NADIR DAL PIZZOL','328.501.310-91','RUA SANTA CATARINA,33','95173-032','BELA VISTA','5554996085998','AQUECEDORES','1517','1471','2025-01-20',1900.00,'À Vista',0,NULL,NULL),(102,'CELIA OSTERKAMP','428.519.980-72','RUA MAJOR BANDEIRA, 667 APTO 403','95890-000','LANGUIRU','5551980414795','AQUECEDORES','1516','1471','2025-01-29',1930.00,'À Vista',0,NULL,NULL),(103,'GIOVANE BLEIL','022.408.560-33','RUA JOSE MAIOLI, 58','95178-340','MONTE PASQUAL','-','OUTROS','1515','1013 e 81','2025-01-16',625.00,'À Vista',0,NULL,NULL),(104,'PATRICIA DE FATIMA DA SILVA ATHAYDE','833.115.480-00','RUA RADIALISTA JOSE PAIM, 67','95043-285','NOSSA SENHORA DE FATIMA','5554991478254','AQUECEDORES','1514','1471,1402 e 1290','2025-01-16',2447.30,'À Vista',0,NULL,NULL),(105,'VALDIR CONZEMSKI','334.915.850-15','RUA REMI, 313 COMERCIAL','955540-000','PRAIA DO PEIXE','5551999604981','ENERGIA SOLAR','1513','1504','2025-01-15',14000.00,'À Vista',0,NULL,NULL),(106,'JURA BAR LTDA','10.833.775/0001-00','AV. SALDANHA MARINHO, 453 JURA BAR','95720-000','SÃO FRANCISCO','5554991158702','AQUECEDORES','1511','46','2025-01-10',2300.00,'À Vista',0,NULL,NULL),(107,'MITRA DIOCESANA DE CAXIAS DO SUL','88.667.217/0029-00','RUA BORGES DE MEDEIROS, 287','95170-113','PIO X','5554991317851','AQUECEDORES','1510','1470','2025-01-10',1500.00,'À Vista',0,NULL,NULL),(108,'VALMOR SANTAROSA','587.160.840-04','RUA 20 DE SETEMBRO, 839','95720-000','CHACARA','5554999902409','OUTROS','1509','1336,1013','2025-01-09',1217.00,'À Vista',0,NULL,NULL),(109,'IDESOL SISTEMAS DE AQUEC. DE AGUA','23.775.214/001-35','RUA PRAÇA NAVEGANTES, 41','90240-160','NAVEGANTES','5551999607378','AQUEC SOLAR','1507','8','2025-01-17',3000.00,'À Vista',0,NULL,NULL),(110,'EL VIAJERO HAMBURGUERIA E PUB LTDA','28.988.730/001-36','RUA ARCANGELO CHIELE, 23','95170-460','CENTRO','5554991515281','AQUECEDORES','1506','1471','2025-01-08',1950.00,'À Vista',0,NULL,NULL),(111,'ALEXANDRE ORTIGARA','020.315.210-71','RUA TORRES, 45','93180-000','PARQUE NETO','5551998031514','AQUEC SOLAR','1505','1343,1','2024-12-30',3358.00,'À Vista',0,NULL,NULL),(112,'MARIA DE LURDES ROCHEMBACH CARDOSO','621.935.200-97','RUA PEDRO OSORIO, 318','95180-000','SANTO ANTONIO','555496016803','OUTROS','1504','77','2024-12-27',863.72,'À Vista',0,NULL,NULL),(113,'AIRTON NUNES DA SILVA','012.256.430-82','RUA ERNESTO ALEXANDRE SCHENATTO, 269','95703-364','VILA NOVA 2','-','AQUEC SOLAR','1503','1503','2024-12-24',2500.00,'À Vista',0,NULL,NULL),(114,'CLARICE NICOLETTO','808.619.625-91','RUA ANGELO PEZZI, 23 APTO 301','95179-148','AMERICA','5554981070044','AQUECEDORES','1502','1499,1290','2024-12-21',2698.00,'À Vista',0,NULL,NULL),(115,'SQUADRO ARQUITETURA E ENGENHARIA LTDA','11.709.116/0001-10','AVENIDA PERIMETRAL BRUNO SEGALLA, 10868','95098-752','KAYSER','5554996208292','OUTROS','1501','1013','2024-12-20',318.00,'À Vista',0,NULL,NULL),(116,'AUGUSTO GRAVE','012.196.410-81','AVENIDA 15 DE NOVEMBRO, 1512','99490-000','CENTRO','5551981329081','AQUEC SOLAR','1500','22','2024-12-12',990.00,'À Vista',0,NULL,NULL),(117,'FABIANA ROVARIS NOVAKOSKI','033.473.799-00','RUA OSCAR FERREIRA BUENO, 645 CASA','89990-000','SÃO FRANCISCO','-','AQUEC SOLAR','1499','16,1465','2024-12-09',1460.00,'À Vista',0,NULL,NULL),(118,'JOSÉ ALBERTO GERHARDT','114.692.930-72','RUA PROFESSOR ALVARO BARCELLOS FERREIRA, 20','91180-760','PARQUE SANTA FÉ','5551999510278','AQUEC SOLAR','1498','12','2024-12-06',3450.00,'À Vista',0,NULL,NULL),(119,'OTAVIO FAGUNDE NUNES','23.902.599/001-54','RUA ERICO VERISSIMO, 257','96422-200','TIARAJU','-','AQUEC SOLAR','1497','1,1343,728,1274','2024-12-05',3757.00,'À Vista',0,NULL,NULL),(120,'LEONIDAS LUIS RODRIGUES','573.252.860-15','RUA TAPIR ROCHA, 8500 LOTE P36','94515-000','COCAO','5551994514577','AQUECEDORES','1496','47,1290,1401','2024-11-28',3484.30,'À Vista',0,NULL,NULL),(121,'EVERTON GIRELLI','645.388.340-68','RUA LIN 47, 1700 CAP NSD SAÚDE FARROUPILHA','95180-000','AREA RURAL','5554997043460','OUTROS','1495','76','2024-11-28',400.00,'À Vista',0,NULL,NULL),(122,'MARILDA VEIGA','382.527.590-68','RUA D, 96 CINTURÃO AZUL - SITIO SÃO JOSE','94430-180','FIUZA','5551993156463','AQUEC SOLAR','1494','5','2024-11-27',2450.00,'À Vista',0,NULL,NULL),(123,'NELSON MOLON','248.519.140-91','NOVA SARDENHA, 400','95183-000','NOVA SARDENHA','5554996280599','AQUEC SOLAR','1493','16,1','2024-11-26',4800.00,'À Vista',0,NULL,NULL),(124,'JOÃO MORAES DE ALMEIDA - OFICINA DO GÁS','16.637.970/0001-32','AVENIDA PARIGOT DE SOUZA, 908','85906-070','JARDIM PORTO ALEGRE','554532527517','OUTROS','1492','57','2024-11-26',385.87,'À Vista',0,NULL,NULL),(125,'CRISTIAN DANIEL SILVESTRIN','997.422.760-72','RUA AGOSTINHO ROSSI, 112','95176-306','CRUZEIRO','5554999029590','OUTROS','1491','728','2024-11-25',495.50,'À Vista',0,NULL,NULL),(126,'Rodrigo Agasani dos Santos','003.129.020-50','RUA AMPELIO CARLOTO, 30 APTO 206','95185-000','CENTRO','5522992555810','AQUECEDORES','1490','1471,36 ,1290','2024-11-22',1990.00,'À Vista',0,NULL,NULL),(127,'HEDER TREVISAN DE BONA','025.403.660-07','RUA VICENTINA, 345 APTO 201','95172-140','VICENTINA','-','AQUECEDORES','1489','1471,1290 ,1402','2024-11-22',2000.00,'À Vista',0,NULL,NULL),(128,'JULIANA AYRES','014.231.910-48','RUA EPITACIO PESSOA, 595','93340-120','PRIMAVEIRA','-','ENERGIA SOLAR','1488','857','2024-11-22',154.09,'À Vista',0,NULL,NULL),(129,'CRISTILENE VANESSA STEIN BIONDO','701.134.240-00','RUA INDEPENDENCIA, 165 APTO 401','95180-000','CENTRO','-','AQUECEDORES','1487','47','2024-11-22',2650.00,'À Vista',0,NULL,NULL),(130,'MAIKOL VARELA','964.654.090-20','AVENIDA SAMUEL GUAZZELLI, 689','95211-164','PETROPOLIS','5554996127548','AQUEC SOLAR','1485','7','2024-11-22',2600.00,'À Vista',0,NULL,NULL),(131,'IDESOL SISTEMAS DE AQUEC. DE AGUA','23.775.214/001-35','RUA PRAÇA NAVEGANTES, 41','90240-160','NAVEGANTES','5551999607378','AQUEC SOLAR','1484','5','2024-11-22',1900.00,'À Vista',0,NULL,NULL),(132,'METALTECNICA METALURGICA LTDA','02.984.383/0001-05','AVENIDA FREDERICO AUGUSTO RITTER, 2500','94930-650','DISTRITO INDUSTRIAL','555137781410','OUTROS','1483','57','2024-11-19',669.59,'À Vista',0,NULL,NULL),(133,'CINEX TECNOLOGIA PARA ARQUITETURA LTDA','93.993.731/0001-66','RUA CARLOS DREHER NETO, 2700','95706-440','INDUSTRIAL','555434552200','OUTROS','1482','1392','2024-11-19',525.00,'À Vista',0,NULL,NULL),(134,'OTAVIO FAGUNDE NUNES','23.902.599/001-54','RUA ERICO VERISSIMO, 257','96422-200','TIARAJU','-','AQUEC SOLAR','1481','1,1343,728,1274','2024-11-18',4000.00,'À Vista',0,NULL,NULL),(135,'DANIELA CRISTIANA DE ALMEIDA RODRIGUES','42.925.896/0001-60','RUA DA REPUBLICA, 425 SALA 701','95170-484','CENTRO','5554098157884','AQUEC SOLAR','1480','1343','2024-11-07',228.00,'À Vista',0,NULL,NULL),(136,'MARCIO SANTANA','004.831.109-06','RUA CAMPOS NOVOS, 889','88337-350','MUNICIPIOS','5547997198324','AQUEC SOLAR','1478','9','2024-11-06',3745.00,'À Vista',0,NULL,NULL),(137,'DOUGLAS ALEXANDRE MARCHI','004.831.109-06','VIA DOS PLATANOS, 298','99470-000','TRES IRMAOS','-','AQUEC SOLAR','1477','1426,728 ,912','2024-10-31',7912.00,'À Vista',0,NULL,NULL),(138,'WALQUIR CAMPOS RODRIGUES','050.329.526-48','RUA SANTOS DUMONT, 12','36140-000','VILA CRUZEIRO','5532999671559','AQUEC SOLAR','1476','642','2024-10-31',298.00,'Parcelado',0,NULL,NULL),(139,'DE ZORZI MULTIMARCAS LTDA','30.459.626/0001-21','RUA PADRE RAUL ACORSI, 38','95074-300','DE ZORZI 2','555432142454','AQUEC SOLAR','1475','1247,1246,1418,910','2024-10-30',10577.00,'À Vista',0,NULL,NULL),(140,'MAICON CESAR RECH','008.240.860-23','AREA RURAL, 94','VILA SECA','95140-000','5554996231610','AQUEC SOLAR','1474','910,14','2024-10-30',6650.00,'À Vista',0,NULL,NULL),(141,'ANSELMO DAS NEVES FERNANDES','287.736.378-31','RUA DAS PETUNIAS, 22','08582-133','JARDIM ADRIANA','-','OUTROS','1473','57','2024-10-25',366.27,'Parcelado',0,NULL,NULL),(142,'AUGUSTO GRAVE','012.196.410-81','AVENIDA 15 DE NOVEMBRO, 1512','99490-000','CENTRO','5551981329081','OUTROS','1472','22','2024-10-24',550.00,'À Vista',0,NULL,NULL),(143,'ALEXANDRE DOS SANTOS DORNELES','811.626.850-34','RUA VICENTE CASAGRANDE, 345','95677-252','VARZEA GRANDE','5554996126522','AQUEC SOLAR','1471','7,913,728','2024-10-19',6700.00,'À Vista',0,NULL,NULL),(144,'LUIS CARLOS FAGUNDES FILHO','004.728.650-48','RODOVIA BR-116, 211','95124-010','VILA CRISTINA','5554999440155','AQUEC SOLAR','1470','1363,20','2024-10-19',4200.00,'À Vista',0,NULL,NULL),(145,'METALTECNICA METALURGICA LTDA','02.984.383/0001-05','AVENIDA FREDERICO AUGUSTO RITTER, 2500','94930-650','DISTRITO INDUSTRIAL','555137781410','AQUECEDORES','1469','57','2024-10-17',323.67,'Parcelado',0,NULL,NULL),(146,'GRAZIELA PALAVRO','012.291.600-00','RUA MANOEL ZANGALLI, 224','95170-092','PIO X','-','OUTROS','1466','804','2024-10-11',290.00,'À Vista',0,NULL,NULL),(147,'JONATAS DAVI GIACOMIN','979.552.990-00','RUA CANADA, 472','95050-100','JARDIM AMERICA','5554981255522','AQUEC SOLAR','1465','1424','2024-10-09',3100.00,'À Vista',0,NULL,NULL),(148,'AGAMENON PRUX','615.455.200-97','AVENIDA ARMANDO ANTONELLO, 603','95170-810','SAO LUIZ','5554999740294','OUTROS','1464','19','2024-10-08',200.00,'À Vista',0,NULL,NULL),(149,'ARGEL FRANCESCHIINI','004.503.450-84','RUA SENHOR ALCIDES R. WRIGHT, 140','27516-422','PARQUE IPIRANGA II','5424992577699','AQUEC SOLAR','1463','1425,913','2024-10-08',7046.00,'À Vista',0,NULL,NULL),(150,'JOAO LUIS TRENTIN','012.261.170-58','RUA DOS MANACAS, 709 APTO 302','95012-370','CINQUENTENARIO','5554991771201','AQUECEDORES','1462','912','2024-10-08',3936.00,'À Vista',0,NULL,NULL),(151,'ATRIO HOTEIS S/A','80.732.928/0010-90','RUA JOÃO NICHELE, 2335 IBIS HOTEL','95012-631','SANVITO II','555432095555','OUTROS','1461','1469','2024-10-04',800.00,'Parcelado',0,NULL,NULL),(152,'ELENIR LUIZ BONETTO','409.284.540-53','RUA CARLOS MAGGIONI, 11','95170-790','SAO LUIZ','5554999091286','AQUECEDORES','1460','1471,1402,1290','2024-10-03',2050.00,'À Vista',0,NULL,NULL),(153,'OTAVIO TEIXEIRA','55.758.223/0001-04','RUA DOS VICENTINOS, 190','36405-038','QUELUZ','5531999744323','OUTROS','1459','52','2024-10-02',965.99,'À Vista',0,NULL,NULL),(154,'UILIAN MUNERETTO','004.963.990-04','RUA IVONE LUCIA TRICHES DOS REIS, 1202','95077-432','SAO VIRGILIO','5554981115406','AQUEC SOLAR','1458','1343,16,14,728 ,1274','2024-10-02',8000.00,'À Vista',0,NULL,NULL),(155,'RESIDENCIAL LE QUARTIER','37.951.994/0001-31','TRAVESSA MINAS GERAIS, 115','95705-004','HUMAITA','5554999745026','AQUEC SOLAR','1457','20,29','2024-10-01',2650.00,'À Vista',0,NULL,NULL),(156,'ATRIO HOTEIS S/A','80.732.928/0010-90','RUA JOÃO NICHELE, 2335 IBIS HOTEL','95012-631','SANVITO II','555432095555','AQUECEDORES','1456','1455','2024-10-01',7144.00,'Parcelado',0,NULL,NULL),(157,'CLAUDIA FERRONATO MANFROI','689.723.180-00','RUA FREDERICO DHANE, 637','95720-000','FERROVIARIO','5554999888964','AQUECEDORES','1455','1423','2024-09-29',2500.00,'À Vista',0,NULL,NULL),(158,'CHARLES ROESE','478.471.070-15','INTERIOR, SN','95750-000','LINHA SAO JOAO','5551998822081','AQUEC SOLAR','1454','1','2024-09-24',2970.00,'À Vista',0,NULL,NULL),(159,'MITRA DIOCESANA DE CAXIAS DO SUL','88.667.217/0029-00','RUA BORGES DE MEDEIROS, 287','95170-113','PIO X','5554991317851','AQUEC SOLAR','1453','913,1343,1365,1465','2024-09-19',10000.00,'À Vista',0,NULL,NULL),(160,'ESTER SILVESTRIN','017.970.860-06','RUA ANGELO MARIO SCHENATTO, 130 APTO. 401','95170-782','SÃO LUIZ','555496555449','AQUECEDORES','1452','48,1290,1401','2024-09-18',4300.00,'À Vista',0,NULL,NULL),(161,'SK SCHUNCK PROJETOS E EQUIPAMENTOS LTDA','91.854.430/0001-26','RUA PEDRO MEZZOMO, 345','95042-500','PIONEIRO','555432292070','AQUEC SOLAR','1451','16','2024-09-17',1300.00,'À Vista',0,NULL,NULL),(162,'PAULO CESAR TONDO GUIZZO','998.294.280-87','ESTRADA DA LINHA ANUNCIATA, 1100','95717-000','INTERIOR','5554984219042','AQUEC SOLAR','1450','18,909','2024-09-14',6586.00,'À Vista',0,NULL,NULL),(163,'RAFAEL BEZERRA','005.598.250-64','RUA DOUTOR TANCREDO NEVES, 310','92200-600','FATIMA','5551980196491','OUTROS','1449','57','2024-09-12',318.00,'À Vista',0,NULL,NULL),(164,'FUNDACAO COORDENACAO DE PROJETOS, PESQUISA E ESTUDOS TECNOLÓ','72.060.999/0001-75','RUA MONIZ ARAGAO, 360 BLOCO 1 - ILHA DO FUNDAO','21941-594','CIDADE UNIVERSITARIA','5553999001518','AQUEC SOLAR','1448','911,1462,448','2024-09-10',8785.00,'À Vista',0,NULL,NULL),(165,'CARLOS UMBERTO SCALCO','647.477.270-00','RUA OLAVO BILAC, 473','95173-048','BELA VISTA','555434010561','OUTROS','1446','728','2024-09-09',490.00,'À Vista',0,NULL,NULL),(166,'LODIR MUGNOL','489.736.450-72','AREA RURAL, 700','95181-899','AREA RURAL','555499964352','ENERGIA SOLAR','1445','1456','2024-09-06',3680.00,'À Vista',0,NULL,NULL),(167,'IRINEU TURRELLA','276.843.850-20','FAZENDA SOUZA, 1640','95125-000','FAZENDA SOUZA','5554981222158','AQUEC SOLAR','1444','6','2024-09-06',2750.00,'À Vista',0,NULL,NULL),(168,'MARCELO JOSUE MOSQUER','12.323.022/0001-71','RUA AGNALDO LUIS BOEIRA, 1393','95059-207','JARDIM IRACEMA','5554981173068','AQUECEDORES','1443','42,1401,76','2024-09-05',3800.00,'À Vista',0,NULL,NULL),(169,'RUTH LENGLER','108.185.880-04','RUA CORONEL ARMANDO ASSIS, 300','91330-010','TRES FIGUEIRAS','5551998746618','AQUEC SOLAR','1582','912','2025-05-12',1800.00,'À Vista',0,NULL,NULL),(170,'JEAN SAUL','921.304.880-72','RUA ONZE DE DEZEMBRO, 255 APTO 302','95170-524','CENTRO','-','OUTROS','1442','728','2024-09-04',490.00,'À Vista',0,NULL,NULL),(171,'METALMONTE COMERCIO E SERVIÇOS LTDA EPP','20.146.677/0001-40','AVENIDA UM - QUADRA 02, 04','65062-190','BEQUIMAO','559832393945','OUTROS','1438','57','2024-09-04',435.77,'À Vista',0,NULL,NULL),(172,'METALMONTE COMERCIO E SERVIÇOS LTDA EPP','20.146.677/0001-40','AVENIDA UM - QUADRA 02, 04','65062-190','BEQUIMAO','559832393945','OUTROS','1440','57','2024-09-04',435.77,'À Vista',0,NULL,NULL),(173,'GUILHERME PEÇANHA','029.809.640-42','RUA BORTOLO GRENDENE, 784 APTO 1402','95180-180','IMIGRANTE','5554999881889','AQUECEDORES','1439','39','2024-09-04',1890.00,'À Vista',0,NULL,NULL),(174,'METALMONTE COMERCIO E SERVIÇOS LTDA EPP','20.146.677/0001-40','AVENIDA UM - QUADRA 02, 04','65062-190','BEQUIMAO','559832393945','OUTROS','1438','57','2024-09-04',435.77,'À Vista',0,NULL,NULL),(175,'JUCELI FRANCISCO JUNIOR','999.115.079-04','ESTRADA GERAL RIO CACIMBO, SN','88650-000','SANTA TEREZA','5548984036225','AQUECEDORES','1437','51,37,1290,6,16','2024-09-06',6812.00,'À Vista',0,NULL,NULL),(176,'ATRIO HOTEIS S/A','80.732.928/0010-90','RUA JOÃO NICHELE, 2335 IBIS HOTEL','95012-631','SANVITO II','555432095555','AQUECEDORES','1436','1455','2024-09-02',4750.00,'Parcelado',0,NULL,NULL),(177,'FRANCIS ROMIO','021.682.170-33','RUA ABRAMO FELTRIN, 493','95173-292','BELVEDERE','-','AQUEC SOLAR','1435','1426','2024-08-30',3700.00,'À Vista',0,NULL,NULL),(178,'RENATO BRITO DO NASCIMENTO','722.975.906-44','RUA ACCACIO PINTO DA LUZ, 447','88115-390','SERRARIA','5531999651781','AQUEC SOLAR','1434','16','2024-08-29',4200.00,'À Vista',0,NULL,NULL),(179,'ALMIR JOSE BLANGER','426.244.769-49','RUA LUIZ RUFATO, 08','95176-108','SANTA CATARINA','-','ENERGIA SOLAR','1434','1447','2024-08-28',2001.00,'À Vista',0,NULL,NULL),(180,'SOCIEDADE ESPORTIVA GRAN SAO JOAO','51.486.678/0001-67','RUA DOUTOR ANTONIO FREDERICO OZANAN, 111','13480-688','PARQUE REAL','551937021293','AQUEC SOLAR','1432','909','2024-08-28',4300.00,'Parcelado',0,NULL,NULL),(181,'ADRIANO JOSE PERTILE','015.268.210-44','RUA JOAO PESSOA, 471 1005','95700-672','SANTA RITA','5554999708530','AQUEC SOLAR','1431','1343','2024-08-28',220.00,'À Vista',0,NULL,NULL),(182,'VILSON OLIVEIRA NUNES MEQUE','070.028.328-59','AVENIDA CLARA GIANOTTI DE SOUZA, 2618','11900-000','CONDOMINIO BLUE CLUBE','5513997632809','AQUEC SOLAR','1430','9,1,1343','2024-08-27',12403.00,'À Vista',0,NULL,NULL),(183,'ROSANE ZULIAN GUZZON','712.639.180-34','RUA MARIANA MELOTO, 366','95190-000','POLO','-','AQUEC SOLAR','1429','913','2024-08-23',2980.00,'À Vista',0,NULL,NULL),(184,'ADRIANO JAEL SCHWANCK ENDLER','641.261.290-49','AVENIDA ASSIS BRASIL, 1261','95585-000','CENTRO','555182274147','AQUECEDORES','1428','51,1401,1290','2024-08-23',2497.00,'Parcelado',0,NULL,NULL),(185,'MAURO KENJI MORI','989.359.768-49','AVENIDA PINHEIRO MACHADO, 2179','96040-500','FRAGATA','5553981351577','AQUEC SOLAR','1427','1,1424','2024-08-23',6450.00,'Parcelado',0,NULL,NULL),(186,'RESIDENCIAL LE QUARTIER','37.951.994/0001-31','TRAVESSA MINAS GERAIS, 115','95705-004','HUMAITA','5554999745026','AQUEC SOLAR','1426','1,77,1351,1343','2024-08-20',23677.00,'À Vista',0,NULL,NULL),(187,'HELENA MESQUITA DE OLIVEIRA','551.429.070-00','RUA VIRGILIO CURTULO, 79 APTO 201B','95012-600','SANVITTO','-','AQUECEDORES','1425','45,1290,1401','2024-08-13',1500.00,'À Vista',0,NULL,NULL),(188,'FLAVIO OSCAR SANDI','200.864.580-00','RUA CARLOS GOMES, 85','95190-000','CENTRO','5554981511297','AQUEC SOLAR','1423','913','2024-08-12',2900.00,'À Vista',0,NULL,NULL),(189,'PAULO RICARDO CASA','018.602.220-48','CAPELA SÃO TIAGO, S/N','95274-000','MATO PERSO','-','AQUEC SOLAR','1422','8,912','2024-08-13',4850.00,'À Vista',0,NULL,NULL),(190,'LEONARDO MICHELON','000.284.530-00','RUA OSVALDO ARANHA, 99 A','95190-000','CENTRO','-','AQUEC SOLAR','1421','912','2024-08-12',3800.00,'À Vista',0,NULL,NULL),(191,'LUIZ ALBERTO SILVERIO','375.976989-68','AVENIDA MARECHAL DEODORO, 1209','88702-000','OFICINAS','5548388420895','AQUEC SOLAR','1420','20','2024-08-12',160.00,'À Vista',0,NULL,NULL),(192,'WALQUIR CAMPOS RODRIGUES','050.329.526-48','RUA SANTOS DUMONT, 12','36140-000','VILA CRUZEIRO','5532999671559','AQUEC SOLAR','1419','642','2024-08-12',339.79,'Parcelado',0,NULL,NULL),(193,'LUIZ ALBERTO SILVERIO','375.976989-68','AVENIDA MARECHAL DEODORO, 1209','88702-000','OFICINAS','5548388420895','AQUEC SOLAR','1418','911,20','2024-08-08',2550.00,'À Vista',0,NULL,NULL),(194,'LEOMAR DE BORBA CHAGAS','014.732.650-88','RUA DONA ALZIRA, 626 MOTEL MEDIEVAL','91111-010','SARANDI','5555991584821','OUTROS','1416','57','2024-08-06',320.80,'À Vista',0,NULL,NULL),(195,'AIR PAULO LUZ','220.735.900-04','AVENIDA JULIO DE CASTILHOS, 1453 APTO 61','95020-425','CENTRO','555498183777','AQUEC SOLAR','1415','8','2024-08-02',3300.00,'À Vista',0,NULL,NULL),(196,'FERNANDO BUSS','417.649.279-15','RUA NOSSA SENHA DA PIEDADE, 75','88701-200','CENTRO','-','AQUEC SOLAR','1414','10,1343,728,1','2024-08-05',6200.00,'À Vista',0,NULL,NULL),(197,'PEDRO PICCOLO','361.082.940-00','RUA AUGUSTO CRIPPA, 794','95181-204','1° DE MAIO','5554996666123','AQUEC SOLAR','1413','1366','2024-07-31',600.00,'À Vista',0,NULL,NULL),(198,'VANDERLEI DEL LAGO','472.644.200-78','LINHA HUMAIATA, 557','95190-000','INTERIOR','-','AQUEC SOLAR','1412','1','2024-07-30',2700.00,'À Vista',0,NULL,NULL),(199,'TIAGO CARDOSO MARTINI','906.755.680-72','RUA GANA, 1120 APTO 501 VILA IPIRANGA','91380-120','VILA IPIRANGA','555199191511','AQUEC SOLAR','1411','1433','2024-08-01',4992.00,'À Vista',0,NULL,NULL),(200,'GILMAR CECATTO','566.230.700-87','AREA RURAL,9','95181-899','MONTE BERICO','5554991070788','ENERGIA SOLAR','1410','1428,1429,1431,1430','2024-07-30',10000.00,'À Vista',0,NULL,NULL),(201,'PAULA SALA','040.153.350-66','RUA ANGELO LOURENCO TESSER, 1300','95055-100','DE LAZER','555496093248','AQUECEDORES','1409','46,1402,1290','2024-07-30',2100.00,'À Vista',0,NULL,NULL),(202,'NERI DA SILVA','020.326.1989-60','RUA BOLZANO, 366','95270-000','SAO GOTARDO','5554996359106','AQUEC SOLAR','1408','20,1366','2024-07-24',1040.00,'À Vista',0,NULL,NULL),(203,'NELCI MAIOLI GODINHO','518.288.470-20','RUA RAINERI PETRINI, 1246','95181-060','SANTO ANTONIO','5554999162284','AQUECEDORES','1407','38','2024-07-26',1605.30,'À Vista',0,NULL,NULL),(204,'JULIO CESAR SODA','628.756.470-91','AVENIDA ALEXANDRE RIZZO, 1097 901','95110-000','DESVIO RIZZO','5554996101962','AQUEC SOLAR','1406','1343','2024-07-26',218.00,'À Vista',0,NULL,NULL),(205,'TIAGO CARDOSO MARTINI','906.755.680-72','RUA GANA, 1120 APTO 501','91380-120','VILA IPIRANGA','555199191511','AQUEC SOLAR','1405','1364,1396,1247,1343,77','2024-07-25',10111.50,'Parcelado',0,NULL,NULL),(206,'IVETE SENTER','689.707.900-63','SAO ROQUE FIGUEIRA DE MELLO, S/N','95720-000','INTERIOR','5554999660419','AQUECEDORES','1404','39','2024-07-24',1850.00,'À Vista',0,NULL,NULL),(207,'RODRIGO MACCALI','011.892.360-95','RUA LINHA DAVID CANABARRO, S/N','95727-000','INTERIOR','-','AQUEC SOLAR','1403','13','2024-07-24',2800.00,'À Vista',0,NULL,NULL),(208,'RONALDO SUBTIL GODINHO','629.394.910-20','RUA JOSE BERTELLI, 397 APTO 14','95098-655','SALGADO FILHO','5554996325064','AQUECEDORES','1402','1290,1402','2024-07-23',343.00,'Parcelado',0,NULL,NULL),(209,'ROSELI MOREIRA DO ESPIRITO SANTO','009.730.640-13','RUA ERNESTA COLEONE, 29','95110-240','DESVIO RIZZO','-','AQUECEDORES','1401','46,1290','2024-07-23',2098.00,'À Vista',0,NULL,NULL),(210,'PEDRO GUILHERME BOLFONI','231.050.200-63','RUA MANOEL PETERLONGO FILHO, 377 APTO 501','95720-000','CENTRO','5554999423224','AQUECEDORES','1400','51','2024-07-22',2400.00,'Parcelado',0,NULL,NULL),(211,'CRISTIAN MICHEL PETENON','026.024.650-62','RUA TRIUNFO, 782','98920-000','COLATO','55549936824','AQUEC SOLAR','1399','20','2024-07-22',290.00,'À Vista',0,NULL,NULL),(212,'JULIO CESAR SODA','628.756.470-91','AVENIDA ALEXANDRE RIZZO, 1097 901','95110-000','DESVIO RIZZO','5554996101962','AQUEC SOLAR','1398','20','2024-07-19',300.00,'À Vista',0,NULL,NULL),(213,'AIRTON MARCHESE','649.086.230-15','RUA VICENTE FARAON, 318 APTO 201','95720-000','CHAMPANHE','5554999254638','AQUECEDORES','1397','51','2024-07-18',2250.00,'À Vista',0,NULL,NULL),(214,'ODAIR KUYAVA','508.149.660-04','RUA ERNESTO BERNARDI, 1264','95110-095','DESVIO RIZZO','5554991514490','OUTROS','1396','1401','2024-07-17',165.00,'À Vista',0,NULL,NULL),(215,'SUSANA MARIA MANICA','478.005.500-87','RUA BUARQUE DE MACEDO, 3733 APTO 502','95720-000','CENTRO','5554996848902','AQUECEDORES','1395','51','2024-07-17',2200.00,'À Vista',0,NULL,NULL),(216,'RONALDO SUBTIL GODINHO','629.394.910-20','RUA JOSE BERTELLI, 397 APTO 14','95098-655','SALGADO FILHO','5554996325064','AQUECEDORES','1394','41','2024-07-17',1838.00,'Parcelado',0,NULL,NULL),(217,'VOLNEI ROBERTO BORTOLUZZI','413.951.070-68','RUA, 1190','97200-000','CENTRO','555999964477','AQUEC SOLAR','1393','16,1418','2024-07-16',8832.00,'À Vista',0,NULL,NULL),(218,'LEONARDO CORADO BARBOSA','033.056.410-29','RUA MARIA IEDA BARBOSA PIRES, 200','95112-640','CIDADE NOVA','5554991081981','AQUECEDORES','1391','41,1290','2024-07-15',1767.00,'À Vista',0,NULL,NULL),(219,'AMILCAR DUTRA','450.454.530-68','RUA MARECHAL DUTRA, 613','95720-000','SAO FRANCISCO','5554991550272','AQUECEDORES','1390','45','2024-07-12',1350.00,'À Vista',0,NULL,NULL),(220,'VINICIO BRUM','032.461.370-99','LINHA BRASIL, S/N','95717-000','INTERIOR','5554984330611','OUTROS','1389','77,1013','2024-07-12',1000.00,'À Vista',0,NULL,NULL),(221,'JEFERSON BREDA','008.940.190-58','RUA CEZAR JOSE FRANCISCHINI, 485','95176-232','SANTA CATARINA','555497090053','OUTROS','1388','728','2024-07-11',545.00,'Parcelado',0,NULL,NULL),(222,'VINICIO BRUM','032.461.370-99','LINHA BRASIL, S/N','95717-000','INTERIOR','5554984330611','AQUECEDORES','1387','46,1290,1402','2024-07-11',2243.00,'À Vista',0,NULL,NULL),(223,'JOAO CARLOS REOLON','371.659.920-49','RUA MONSENHOR THIAGO BOMBARDELLI, 401','95172-081','VICENTINA','5554999238645','AQUEC SOLAR','1386','1128','2024-07-10',4600.00,'À Vista',0,NULL,NULL),(224,'ALINE BORGES SILVEIRA','005.987.100-86','RODOVIA ERS 122, 3000 APTO 265','95177-150','CENTENARIO','5554991844171','AQUECEDORES','1385','39,1402,1290','2024-07-10',2136.00,'Parcelado',0,NULL,NULL),(225,'BERENICE ALFAMA','696.387.560-04','AVENIDA BAGE, 1199 APTO 901','90460-080','PETROPOLIS','5551997075221','AQUECEDORES','1384','41','2024-07-10',1686.00,'À Vista',0,NULL,NULL),(226,'ELIAS FRANCISCO SERPA','000.274.900-92','RUA WASHINGTON LUIZ, 190','89803-250','SAO CRISTOVAO','554988005361','AQUECEDORES','1382','41','2024-07-09',1671.00,'À Vista',0,NULL,NULL),(227,'ANDRE PAULO SLODKOWSKI','019.514.000-11','MONTE BERICO, 31 AREA RURAL','95181-899','2° DISTRITO','5554999183862','AQUEC SOLAR','1378','1','2024-07-08',2600.00,'À Vista',0,NULL,NULL),(228,'ELI FRANCSICO MOTA','722.933.656-20','RUA BEJAMIN CONSTAT, 394 APTO 32','CENTRO','88501-110','5549991057591','AQUEC SOLAR','1379','912','2024-07-08',1300.00,'À Vista',0,NULL,NULL),(229,'MARCO ANTONIO DORS','495.660.670-20','RUA ANGELO GARDINI, 907 TORRE A','95180-020','VOLTA GRANDE','555499077579','AQUECEDORES','1381','18,1290,1402','2024-07-08',2000.00,'Parcelado',0,NULL,NULL),(231,'MAURO FLÁVIO DA SILVA ESQUIVEL','391.610.368-70','RUA ANDREA PONTIN, 160 AP 45','95185-000','CENTRO','5511948084675','AQUECEDORES','1583','1470,1531','2025-05-13',1970.65,'Parcelado',0,NULL,NULL),(232,'MIRIAN GIL','929.472.470-00','RUA ERNESTO GRAZZIOTIN, 195 AP 202','95012-329','VILLAGIO IGUATEMI','5554984122210','AQUECEDORES','1584','64,1526,1531,1401,1290,1541','2025-05-15',5838.20,'À Vista',0,NULL,NULL),(233,'VALDEMAR BILHAR DA SILVA','287.683.530-49','RUA BOM JESUS, 68','99040-430','VERA CRUZ','5554991101325','AQUECEDORES','1585','46,728','2025-05-15',2724.00,'À Vista',0,NULL,NULL),(234,'ADELAR BET','-','-','-','-','5554999518445','ENERGIA SOLAR','-','-1','2021-01-20',0.00,'À Vista',0,NULL,NULL),(235,'JOSELAINE TRUBIAN','-','-','-','-','5554999469377','ENERGIA SOLAR','-','-1','2022-11-29',0.00,'À Vista',0,NULL,NULL),(236,'EDUARDO PIERIN PERES','929.849.599-49','RUA AQUEDUTO, 325 CASA 27C - CONDIMINIO VILA RICA','88339-090','ESTADOS','5547996057312','AQUEC SOLAR','1586','1433','2025-05-20',6230.00,'Parcelado',0,NULL,NULL),(237,'LARI KRINGHES','-','-','-','-','5554996022430','ENERGIA SOLAR','-','-1','2022-10-18',0.00,'À Vista',0,NULL,NULL),(238,'LUDOVICO  TOSO JULHO','-','-','-','-','5554996885597','ENERGIA SOLAR','-','-1','2023-05-10',0.00,'À Vista',0,NULL,NULL),(239,'NEUSA TEREZINHA MUGNOL','-','-','-','-','5554991672131','ENERGIA SOLAR','-','-1','2023-04-11',0.00,'À Vista',0,NULL,NULL),(240,'WILLIAM NIQUETTI','-','-','-','-','5554981047732','ENERGIA SOLAR','-','-1','2022-12-28',0.00,'À Vista',0,NULL,NULL),(241,'GABRIEL PIRES','-','-','-','-','5554999853944','ENERGIA SOLAR','-','-1','2022-12-19',0.00,'À Vista',0,NULL,NULL),(242,'NERI CARLOS ANGST','-','-','-','-','5551997619494','ENERGIA SOLAR','-','-1','2022-12-17',0.00,'À Vista',0,NULL,NULL),(243,'ANTONIO MARCOS BETIM','-','-','-','-','5554996448613','ENERGIA SOLAR','-','-1','2022-12-17',0.00,'À Vista',0,NULL,NULL),(244,'RAFAELA GILBERTO TREZ','-','-','-','-','5554999714197','ENERGIA SOLAR','-','-1','2022-12-14',0.00,'À Vista',0,NULL,NULL),(245,'SERGIO LACIR DA SILVA','-','-','-','-','5554999137743','ENERGIA SOLAR','-','-1','2022-12-13',0.00,'À Vista',0,NULL,NULL),(246,'VINICIUS BOEIRA','-','-','-','-','5554996105153','ENERGIA SOLAR','-','-1','2022-12-12',0.00,'À Vista',0,NULL,NULL),(247,'DANIELA GIRELLI','-','-','-','-','5554999711828','ENERGIA SOLAR','-','-1','2022-12-10',0.00,'À Vista',0,NULL,NULL),(248,'GUSTAVO DE BONA','-','-','-','-','5554996151605','ENERGIA SOLAR','-','-1','2022-12-01',0.00,'À Vista',0,NULL,NULL),(249,'JOSELAINE TRUBIAN','-','-','-','-','5554999469377','ENERGIA SOLAR','-','-1','2022-11-29',0.00,'À Vista',0,NULL,NULL),(250,'SILVANA HART SCHNEIDER','-','-','-','-','5554999744890','ENERGIA SOLAR','-','-1','2022-11-25',0.00,'À Vista',0,NULL,NULL),(251,'VOLMAR RIVA','-','-','-','-','5554999811896','ENERGIA SOLAR','-','-1','2022-11-24',0.00,'À Vista',0,NULL,NULL),(252,'VALDECIR ANTONIO POSSA','-','-','-','-','5554999115764','ENERGIA SOLAR','-','-1','2022-11-23',0.00,'À Vista',0,NULL,NULL),(253,'IDA PALAVRO','-','-','-','-','5551996244715','ENERGIA SOLAR','-','-1','2022-11-19',0.00,'À Vista',0,NULL,NULL),(254,'JANETE ROMAGNA','-','-','-','-','5554999929612','ENERGIA SOLAR','-','-1','2022-11-19',0.00,'À Vista',0,NULL,NULL),(255,'ANDRÉ LUIZ BELLAVER','-','-','-','-','5554999133306','ENERGIA SOLAR','-','-1','2022-11-11',0.00,'À Vista',0,NULL,NULL),(256,'ODIR LUIZ BARRO','-','-','-','-','5554991195951','ENERGIA SOLAR','-','-1','2022-11-08',0.00,'À Vista',0,NULL,NULL),(257,'GELSON BASSO','-','-','-','-','5554999773693','ENERGIA SOLAR','-','-1','2022-11-07',0.00,'À Vista',0,NULL,NULL),(258,'ANA PAULA ADILIO CAXIAS','-','-','-','-','5554999291276','ENERGIA SOLAR','-','-1','2022-11-05',0.00,'À Vista',0,NULL,NULL),(259,'LEONARDO PEROTTONI','-','-','-','-','5554991489075','ENERGIA SOLAR','-','-1','2022-11-02',0.00,'À Vista',0,NULL,NULL),(260,'MARCIANO DOS SANTOS','-','-','-','-','5554999984388','ENERGIA SOLAR','-','-1','2022-11-01',0.00,'À Vista',0,NULL,NULL),(261,'VITOR DOM MADALOSSO','-','-','-','-','5554999891879','ENERGIA SOLAR','-','-1','2022-10-26',0.00,'À Vista',0,NULL,NULL),(262,'MARCELO JUCELENE ISOPPO','-','-','-','-','5554991663310','ENERGIA SOLAR','-','-1','2022-10-21',0.00,'À Vista',0,NULL,NULL),(263,'ELISETE BURLANI','-','-','-','-','5554999605378','ENERGIA SOLAR','-','-1','2022-10-21',0.00,'À Vista',0,NULL,NULL),(264,'AMARO BRUNETTA','-','-','-','-','5554996579122','ENERGIA SOLAR','-','-1','2022-10-21',0.00,'À Vista',0,NULL,NULL),(265,'RODRIGO FAB MONTEMEZZO','-','-','-','-','5554999783229','ENERGIA SOLAR','-','-1','2022-10-20',0.00,'À Vista',0,NULL,NULL),(266,'CELSO DE BONA','-','-','-','-','5554981522180','ENERGIA SOLAR','-','-1','2022-10-18',0.00,'À Vista',0,NULL,NULL),(267,'EDER CASA','-','-','-','-','5554996986578','ENERGIA SOLAR','-','-1','2022-10-15',0.00,'À Vista',0,NULL,NULL),(268,'ADELINO CECATTO','-','-','-','-','5554999472689','ENERGIA SOLAR','-','-1','2022-10-12',0.00,'À Vista',0,NULL,NULL),(269,'NILVO ANTONIO PIRES','-','-','-','-','5554996583040','ENERGIA SOLAR','-','-1','2022-10-11',0.00,'À Vista',0,NULL,NULL),(270,'ALDINO IVANIA  MARTINS','-','-','-','-','5554996936647','ENERGIA SOLAR','-','-1','2022-10-10',0.00,'À Vista',0,NULL,NULL),(271,'HELENO LUCAS BITTENCOURT','-','-','-','-','5554997066198','ENERGIA SOLAR','-','-1','2022-10-02',0.00,'À Vista',0,NULL,NULL),(272,'JÉSSICA STRADA','-','-','-','-','5554999579830','ENERGIA SOLAR','-','-1','2022-09-28',0.00,'À Vista',0,NULL,NULL),(273,'GILMEI J HEINECK','-','-','-','-','5554999779087','ENERGIA SOLAR','-','-1','2022-09-27',0.00,'À Vista',0,NULL,NULL),(274,'CONDOMIN RES FARROUPILHA','-','-','-','-','5554999397733','ENERGIA SOLAR','-','-1','2022-09-26',0.00,'À Vista',0,NULL,NULL),(275,'VALDECIR ZAMBONI','-','-','-','-','5554996197988','ENERGIA SOLAR','-','-1','2022-09-20',0.00,'À Vista',0,NULL,NULL),(276,'ENIO MORONI - CHANDY','-','-','-','-','5554991572347','ENERGIA SOLAR','-','-1','2022-09-20',0.00,'À Vista',0,NULL,NULL),(277,'JAIR DANUZO','-','-','-','-','5554997036259','ENERGIA SOLAR','-','-1','2022-09-18',0.00,'À Vista',0,NULL,NULL),(278,'ENEU DA SILVA BORGES','-','-','-','-','5551996712488','ENERGIA SOLAR','-','-1','2022-09-17',0.00,'À Vista',0,NULL,NULL),(279,'MARIA PERGHER','-','-','-','-','5554999845824','ENERGIA SOLAR','-','-1','2022-09-12',0.00,'À Vista',0,NULL,NULL),(280,'FELIPE MENTE','-','-','-','-','5554981331595','ENERGIA SOLAR','-','-1','2022-09-10',0.00,'À Vista',0,NULL,NULL),(281,'RENI CENSI','-','-','-','-','5554999655805','ENERGIA SOLAR','-','-1','2022-09-05',0.00,'À Vista',0,NULL,NULL),(282,'GIOVANI ZILLI','-','-','-','-','5554997002138','ENERGIA SOLAR','-','-1','2022-09-05',0.00,'À Vista',0,NULL,NULL),(283,'ANTONINHO DE MOMI','-','-','-','-','5554999371444','ENERGIA SOLAR','-','-1','2022-09-01',0.00,'À Vista',0,NULL,NULL),(284,'JOAREZ SPINELLI','-','-','-','-','5554999719835','ENERGIA SOLAR','-','-1','2022-08-31',0.00,'À Vista',0,NULL,NULL),(285,'FERNANDO SILVESTRIN','-','-','-','-','5554999212304','ENERGIA SOLAR','-','-1','2022-08-27',0.00,'À Vista',0,NULL,NULL),(286,'MILTHON RIGATTI','-','-','-','-','5554999760080','ENERGIA SOLAR','-','-1','2022-08-17',0.00,'À Vista',0,NULL,NULL),(287,'JUNIOR LISIANE MOHR','-','-','-','-','5554984338664','ENERGIA SOLAR','-','-1','2022-08-16',0.00,'À Vista',0,NULL,NULL),(288,'FERNANDO CLAUDIA MASSETO','-','-','-','-','5554999230500','ENERGIA SOLAR','-','-1','2022-08-16',0.00,'À Vista',0,NULL,NULL),(289,'MAURO LUIS SLOMP','-','-','-','-','5554999826026','ENERGIA SOLAR','-','-1','2022-08-10',0.00,'À Vista',0,NULL,NULL),(290,'OSMAR MULLER CANELA','-','-','-','-','5554997030221','ENERGIA SOLAR','-','-1','2022-08-09',0.00,'À Vista',0,NULL,NULL),(291,'SONIA MACIEL','-','-','-','-','5554996474043','ENERGIA SOLAR','-','-1','2022-08-08',0.00,'À Vista',0,NULL,NULL),(292,'CLEBER  / SONIA VIZINHA','-','-','-','-','5554996474043','ENERGIA SOLAR','-','-1','2022-08-08',0.00,'À Vista',0,NULL,NULL),(293,'SANDRA PAULO SCHIOCHET','-','-','-','-','5554999763557','ENERGIA SOLAR','-','-1','2022-08-01',0.00,'À Vista',0,NULL,NULL),(294,'LAERCIO BRESSAN','-','-','-','-','5554991835636','ENERGIA SOLAR','-','-1','2022-07-30',0.00,'À Vista',0,NULL,NULL),(295,'SANTO PICCININ','-','-','-','-','5554991269867','ENERGIA SOLAR','-','-1','2022-07-29',0.00,'À Vista',0,NULL,NULL),(296,'CLAUDINEI BERTOLINNI','-','-','-','-','5554996428926','ENERGIA SOLAR','-','-1','2022-07-28',0.00,'À Vista',0,NULL,NULL),(297,'TEDINARA WALTER','-','-','-','-','5554999714230','ENERGIA SOLAR','-','-1','2022-07-27',0.00,'À Vista',0,NULL,NULL),(298,'CLADIMIR LUIZ DAL PIZZOL','-','-','-','-','5554996552821','ENERGIA SOLAR','-','-1','2022-07-25',0.00,'À Vista',0,NULL,NULL),(299,'ARLETE LORENSET LAZZARI','-','-','-','-','5554981220788','ENERGIA SOLAR','-','-1','2022-07-25',0.00,'À Vista',0,NULL,NULL),(300,'JUNIOR TONIETTO','-','-','-','-','5554999857729','ENERGIA SOLAR','-','-1','2022-07-21',0.00,'À Vista',0,NULL,NULL),(301,'JOSE CARLOS DE OLIVEIRA','-','-','-','-','5554996368136','ENERGIA SOLAR','-','-1','2022-07-19',0.00,'À Vista',0,NULL,NULL),(302,'FELIPE PECCIN','-','-','-','-','5554999441060','ENERGIA SOLAR','-','-1','2022-07-19',0.00,'À Vista',0,NULL,NULL),(303,'VILSON DA SILVA','-','-','-','-','5554999661780','ENERGIA SOLAR','-','-1','2022-07-12',0.00,'À Vista',0,NULL,NULL),(304,'MARCELO OLIVEIRA CAETANO SL','-','-','-','-','5551981689766','ENERGIA SOLAR','-','-1','2022-07-05',0.00,'À Vista',0,NULL,NULL),(305,'IRACI DALZÓCHIO','-','-','-','-','5554992021226','ENERGIA SOLAR','-','-1','2022-07-04',0.00,'À Vista',0,NULL,NULL),(306,'ADEMAR JOÃO WERBERICH','-','-','-','-','5554999994205','ENERGIA SOLAR','-','-1','2022-06-30',0.00,'À Vista',0,NULL,NULL),(307,'MARCOS FRIZZO','-','-','-','-','5554999864450','ENERGIA SOLAR','-','-1','2022-06-21',0.00,'À Vista',0,NULL,NULL),(308,'RODRIGO BUENO','-','-','-','-','5554999731377','ENERGIA SOLAR','-','-1','2022-06-15',0.00,'À Vista',0,NULL,NULL),(309,'FELIPE DE BONA','-','-','-','-','555499413443','ENERGIA SOLAR','-','-1','2022-06-15',0.00,'À Vista',0,NULL,NULL),(310,'CARLOS ESMERIS','-','-','-','-','5554984388344','ENERGIA SOLAR','-','-1','2022-06-15',0.00,'À Vista',0,NULL,NULL),(311,'EUGENIO COLUSSI','-','-','-','-','5554997084583','ENERGIA SOLAR','-','-1','2022-06-14',0.00,'À Vista',0,NULL,NULL),(312,'RENATO BENVENUTTI','-','-','-','-','5554999170250','ENERGIA SOLAR','-','-1','2022-06-08',0.00,'À Vista',0,NULL,NULL),(313,'ALBERTO RIVA','-','-','-','-','5554996772137','ENERGIA SOLAR','-','-1','2022-06-03',0.00,'À Vista',0,NULL,NULL),(314,'LEONARDO BASSO','-','-','-','-','5554999762784','ENERGIA SOLAR','-','-1','2022-05-27',0.00,'À Vista',0,NULL,NULL),(315,'CLEBER BRUSTOLIN','-','-','-','-','5554999462306','ENERGIA SOLAR','-','-1','2022-05-27',0.00,'À Vista',0,NULL,NULL),(316,'ELEANDRO MAGNANI','-','-','-','-','5554999913633','ENERGIA SOLAR','-','-1','2022-05-26',0.00,'À Vista',0,NULL,NULL),(317,'WILIAM ALVES MENDES','-','-','-','-','5554996076564','ENERGIA SOLAR','-','-1','2022-05-25',0.00,'À Vista',0,NULL,NULL),(318,'GUSTAVO BORTOLANZA','-','-','-','-','5554996430560','ENERGIA SOLAR','-','-1','2022-05-24',0.00,'À Vista',0,NULL,NULL),(319,'FABIO NEIS','-','-','-','-','5554991427659','ENERGIA SOLAR','-','-1','2022-05-17',0.00,'À Vista',0,NULL,NULL),(320,'PATRICIA CHIES','-','-','-','-','5554999829228','ENERGIA SOLAR','-','-1','2022-05-12',0.00,'À Vista',0,NULL,NULL),(321,'JAIR PICOLOTTO','-','-','-','-','5554996126496','ENERGIA SOLAR','-','-1','2022-05-11',0.00,'À Vista',0,NULL,NULL),(322,'MAURICIO PEROTTO','-','-','-','-','5554991660677','ENERGIA SOLAR','-','-1','2022-05-10',0.00,'À Vista',0,NULL,NULL),(323,'VALDIR MORETTI','-','-','-','-','5554999004464','ENERGIA SOLAR','-','-1','2022-05-04',0.00,'À Vista',0,NULL,NULL),(324,'PAULO FLACH','-','-','-','-','5554991994052','ENERGIA SOLAR','-','-1','2022-05-04',0.00,'À Vista',0,NULL,NULL),(325,'ELIANDRO ARSEGO','-','-','-','-','5554999786771','ENERGIA SOLAR','-','-1','2022-05-04',0.00,'À Vista',0,NULL,NULL),(326,'GILBERTO HEINECK','-','-','-','-','5554999126508','ENERGIA SOLAR','-','-1','2022-04-24',0.00,'À Vista',0,NULL,NULL),(327,'EDUARDO PERSCH','-','-','-','-','5554999630983','ENERGIA SOLAR','-','-1','2022-04-24',0.00,'À Vista',0,NULL,NULL),(328,'LOJA ARTUS BOM PRINCIPIO','-','-','-','-','5551999621726','ENERGIA SOLAR','-','-1','2022-03-31',0.00,'À Vista',0,NULL,NULL),(329,'CELSO ABRAMO MASCHIO','255.055.990-87','RUA HERMES JOAO WEBBER, 161','95012-350','VILLAGIO IGUATEMI','5554991845021','AQUECEDORES','1587','1542','2025-05-22',1935.00,'À Vista',0,NULL,NULL),(330,'JONATHAN SPINELLI','005.424.250-92','RUA SETE DE SETEMBRO, 855','95180-312','IMIGRANTE','5554984373831','AQUECEDORES','1588','1531,1470,1290,1402','2025-05-23',2813.10,'Parcelado',0,NULL,NULL),(331,'ADRIANA VETTORAZZI','524.368.960-20','RUA SERAFIN CORREA, 15 APTO 103','95180-286','IMIGRANTE','5554991037026','OUTROS','1589','1290,1402','2025-05-23',725.00,'À Vista',0,NULL,NULL),(333,'NELCI DAL PAI','226.665.400-49','RUA SANTA ROSA, 50','98770-000','CENTRO','5555996133171','AQUEC SOLAR','1590','20','2025-05-27',424.00,'À Vista',0,NULL,NULL),(334,'CLAYTON PASTORIO FERRI','825.549.430-87','RUA MARIA MOCELINI, 506','95172-045','VICENTINA','5554991048598','AQUEC SOLAR','1591','910','2025-05-27',5300.00,'À Vista',0,NULL,NULL),(335,'GRAZIELA MAIOLI GALAFASSI','008.829.990-28','RUA HUMBERTO JACONI, 1181 APTO 602','95174-040','NOVA VICENZA','5554981021479','AQUECEDORES','1592','1499','2025-05-28',2900.00,'À Vista',0,NULL,NULL),(336,'LUCIANO FEDATTO','599.118.160-87','TRAVESSA MINAS GERAIS, 174 APTO 202','95705-004','HUMAITÁ','5554981399794','OUTROS','1593','64','2025-05-28',340.00,'À Vista',0,NULL,NULL),(337,'ENERGY TECH SOLUÇÕES ELETRICAS LTDA','24.099.815/0001-38','RUA ALMELO, 09','04727-140','VILA CRUZEIRO','551137439773','OUTROS','1594','57','2025-05-29',366.39,'À Vista',0,NULL,NULL),(338,'VENTO SUL ENGENHARIA LTDA','03.509.843/0001-06','PRAIA DO JEQUIA, 78','21930-010','RIBEIRA','5521998884393','AQUEC SOLAR','1595','18,1,1342,728,1543','2025-05-29',10932.00,'À Vista',0,NULL,NULL),(339,'LUCIANO MOLINARI','433.060.390-04','25 DE JULHO, 186 APTO 202','95720-000','CENTRO','5554991186201','AQUECEDORES','1596','1423','2025-05-30',2700.00,'À Vista',0,NULL,NULL),(340,'MIRELLA MARQUES ANGST','038.228.610-30','RUA MARANHAO, 453 APTO 308','99709-260','FATIMA','5554996902006','AQUECEDORES','1597','1541','2025-05-31',411.00,'À Vista',0,NULL,NULL),(341,'JONATHAN ANTÔNIO BUCHEBUAM','027.495.900-35','RUA GIACOMO GASPARIN, 320','95032-195','VINHEDOS','5554992128086','AQUEC SOLAR','1599','14','2025-06-01',3530.00,'À Vista',0,NULL,NULL),(342,'JULIANO GUIDO BALLARDIN','473.520.430-04','RUA RODOLFO POLIDORO, 255','95190-000','CENTRO','5554991189498','AQUEC SOLAR','1600','1','2025-06-01',3130.00,'À Vista',0,NULL,NULL),(343,'RICARDO BORDIN','208.050.630-72','RODOVIA BR-116 - KM 148, 16999','95054-780','SAGRADA FAMILIA','5554999744060','OUTROS','1601','1541','2025-06-02',650.00,'À Vista',0,NULL,NULL),(344,'JOELMIR TOFFOLO','39.602.761/0001-59','RUA LINO ZANONATTO, 125','95181-164','PRIMEIRO DE MAIO','5554999743153','OUTROS','1602','19','2025-06-02',217.62,'À Vista',0,NULL,NULL),(345,'VELCI ELÓI LOTTI','573.807.839-04','NOVA SARDENHA, SN','95183-000','3O DISTRITO','5554981249236','OUTROS','1603','77,1013','2025-06-02',2250.00,'À Vista',0,NULL,NULL),(347,'DANIEL VEIGA','-','-','-','-','5551998732229','ENERGIA SOLAR','-','-1','2019-01-01',0.00,'À Vista',0,NULL,NULL),(348,'SIDNEI ANTONIO HEINECK','-','-','-','-','5554984113502','ENERGIA SOLAR','-','-1','2022-09-11',0.00,'À Vista',0,NULL,NULL),(349,'LARI KRINGHES','-','-','-','-','5554996022430','ENERGIA SOLAR','-','-1','2022-10-18',0.00,'À Vista',0,NULL,NULL),(350,'DIOZANA DALSÓCHIO','-','-','-','-','5554992021226','ENERGIA SOLAR','-','-1','2016-01-26',0.00,'À Vista',0,NULL,NULL),(351,'GRAZIELA DALZÓCHIO','-','-','-','-','5554999766980','ENERGIA SOLAR','-','-1','2016-02-12',0.00,'À Vista',0,NULL,NULL),(352,'LAUDIR GULDEN','-','-','-','-','5554996991150','ENERGIA SOLAR','-','-1','2017-01-23',0.00,'À Vista',0,NULL,NULL),(353,'LÉO GRAFF','-','-','-','-','5554999750775','ENERGIA SOLAR','-','-1','2017-06-13',0.00,'À Vista',0,NULL,NULL),(354,'JOÃO HERPICH','-','-','-','-','5554991121545','ENERGIA SOLAR','-','-1','2017-12-27',0.00,'À Vista',0,NULL,NULL),(355,'EVERTON GIRELLI','-','-','-','-','5554997043460','ENERGIA SOLAR','-','-1','2018-07-11',0.00,'À Vista',0,NULL,NULL),(356,'JENUINO KEMPER','-','-','-','-','5554992456457','ENERGIA SOLAR','-','-1','2022-04-07',0.00,'À Vista',0,NULL,NULL),(358,'INES PADILHA NICOLLETI','-','-','-','-','5554999079701','ENERGIA SOLAR','-','-1','2022-03-29',0.00,'À Vista',0,NULL,NULL),(359,'RUI BASSO','-','-','-','-','5554999762784','ENERGIA SOLAR','-','-1','2022-03-25',0.00,'À Vista',0,NULL,NULL),(360,'RODRIGO TRES SILVESTRI','-','-','-','-','5554991011515','ENERGIA SOLAR','-','-1','2022-03-22',0.00,'À Vista',0,NULL,NULL),(361,'RONEI KOZAK','-','-','-','-','5554999042486','ENERGIA SOLAR','-','-1','2022-03-20',0.00,'À Vista',0,NULL,NULL),(362,'FELIPE CALABRIA','-','-','-','-','5554999074253','ENERGIA SOLAR','-','-1','2022-03-20',0.00,'À Vista',0,NULL,NULL),(363,'ALMIR BLANGER','-','-','-','-','5554991173507','ENERGIA SOLAR','-','-1','2022-03-18',0.00,'À Vista',0,NULL,NULL),(364,'CARLOS HUMBERTO SCALCO','-','-','-','-','5554991564399','ENERGIA SOLAR','-','-1','2022-03-16',0.00,'À Vista',0,NULL,NULL),(365,'GILMAR CECATTO','-','-','-','-','5554991070788','ENERGIA SOLAR','-','-1','2022-03-15',0.00,'À Vista',0,NULL,NULL),(366,'DHIONES MARCA','-','-','-','-','5554991524116','ENERGIA SOLAR','-','-1','2022-03-12',0.00,'À Vista',0,NULL,NULL),(367,'VOLNEI TREZ','-','-','-','-','5554999711824','ENERGIA SOLAR','-','-1','2022-03-11',0.00,'À Vista',0,NULL,NULL),(368,'EVERTON GIRELLI  AMPLIAÇÃO','-','-','-','-','5554997043460','ENERGIA SOLAR','-','-1','2022-03-03',0.00,'À Vista',0,NULL,NULL),(369,'ANDRÉ ONILDES DA ROSA GUAIBA','-','-','-','-','5551996263637','ENERGIA SOLAR','-','-1','2022-03-03',0.00,'À Vista',0,NULL,NULL),(370,'GUSTAVO GIACOMIN','-','-','-','-','5554991569187','ENERGIA SOLAR','-','-1','2022-02-21',0.00,'À Vista',0,NULL,NULL),(371,'LUIZ TEIXEIRA DA ROSA','-','-','-','-','5554999968006','ENERGIA SOLAR','-','-1','2022-02-20',0.00,'À Vista',0,NULL,NULL),(372,'SIDNEI LAZERI','-','-','-','-','5554996060964','ENERGIA SOLAR','-','-1','2022-02-04',0.00,'À Vista',0,NULL,NULL),(373,'NEURI DALAPICULA','-','-','-','-','5554999911667','ENERGIA SOLAR','-','-1','2022-02-04',0.00,'À Vista',0,NULL,NULL),(374,'MAIKON COZER','-','-','-','-','5554999299504','ENERGIA SOLAR','-','-1','2022-02-04',0.00,'À Vista',0,NULL,NULL),(375,'CONDOMINIO FETTER SIDNEY','-','-','-','-','5554996099910','ENERGIA SOLAR','-','-1','2022-02-02',0.00,'À Vista',0,NULL,NULL),(376,'CESAR LAMM','-','-','-','-','5551981667348','ENERGIA SOLAR','-','-1','2022-02-02',0.00,'À Vista',0,NULL,NULL),(377,'JAIR ROGE CHAVES DE CAMPOS','-','-','-','-','5554999067111','ENERGIA SOLAR','-','-1','2022-02-01',0.00,'À Vista',0,NULL,NULL),(378,'ANTÔNIO GILMAR DE SOUZA','-','-','-','-','5554999361829','ENERGIA SOLAR','-','-1','2022-01-24',0.00,'À Vista',0,NULL,NULL),(379,'ALBERTO ARI KERSCHNER','-','-','-','-','5551996871618','ENERGIA SOLAR','-','-1','2022-01-21',0.00,'À Vista',0,NULL,NULL),(380,'MOACIR VERONA','-','-','-','-','5554999322065','ENERGIA SOLAR','-','-1','2022-01-19',0.00,'À Vista',0,NULL,NULL),(381,'JOSÉ RODRIGUES DOS SANTOS','-','-','-','-','5554984198121','ENERGIA SOLAR','-','-1','2021-12-27',0.00,'À Vista',0,NULL,NULL),(382,'ARI WEBWER PORTO ALEGRE','-','-','-','-','5551998474272','ENERGIA SOLAR','-','-1','2021-12-13',0.00,'À Vista',0,NULL,NULL),(383,'PAULO DIETZMANN','-','-','-','-','5554991935578','ENERGIA SOLAR','-','-1','2021-12-11',0.00,'À Vista',0,NULL,NULL),(384,'LODIR MUGNOL','-','-','-','-','5554991935578','ENERGIA SOLAR','-','-1','2021-12-01',0.00,'À Vista',0,NULL,NULL),(385,'ALDINO BATISTIN','-','-','-','-','5554999310802','ENERGIA SOLAR','-','-1','2021-12-01',0.00,'À Vista',0,NULL,NULL),(386,'GUSTAVO TONIETTO','-','-','-','-','5554996542331','ENERGIA SOLAR','-','-1','2021-11-29',0.00,'À Vista',0,NULL,NULL),(387,'JOSE CARLOS CROCCOLI','-','-','-','-','5554999404556','ENERGIA SOLAR','-','-1','2021-11-27',0.00,'À Vista',0,NULL,NULL),(389,'MILTO ANDREOLI','-','-','-','-','5554991768583','ENERGIA SOLAR','-','-1','2021-11-25',0.00,'À Vista',0,NULL,NULL),(390,'JONAS PERSCH / KEMPER','-','-','-','-','5551998059032','ENERGIA SOLAR','-','-1','2021-11-25',0.00,'À Vista',0,NULL,NULL),(391,'ROSECLER / LUIS ANT AMARAL','-','-','-','-','5554999223488','ENERGIA SOLAR','-','-1','2021-11-18',0.00,'À Vista',0,NULL,NULL),(392,'Rodrigo Hendges','013.735.860-10','RUA ESTEIO, 134','95174-224','SANTA CATARINA','5554991844203','AQUECEDORES','1604','1523,1402,1290','2025-06-10',2050.00,'À Vista',NULL,NULL,NULL),(396,'Lucas Carneiro','894.004.700-10','RUA NESTOR DOMINGOS RIZZO, 785','95110-550','DESVIO RIZZO','5554991676168','AQUECEDORES','1605','1471','2025-06-11',2300.00,'À Vista',NULL,NULL,NULL),(416,'Eduardo Machado Ebertz','020.703.280-74','Rua das Flores, 1928 B 1928 Ap 504 Bloco 13','95110-280','Desvio Rizzo','5554991454694','AQUECEDORES','1607','1470','2025-06-16',1850.00,'À Vista',NULL,NULL,NULL),(417,'Hermes Cequim Minuzzi','244.816.530-00','Rua Bento Goncalves, 2031 APTO 55','95020-412','Centro','5554999793904','AQUECEDORES','1608','1470,1402','2025-06-16',1680.00,'À Vista',NULL,NULL,NULL),(418,'Grendene S A','89.850.341/0012-12','AV. PEDRO GRENDENE, 131-A','95180-052','Volta Grande','555421099000','OUTROS','1606','1350','2025-06-12',2350.00,'À Vista',NULL,NULL,NULL),(419,'Grendene S A','89.850.341/0012-12','AV. PEDRO GRENDENE, 131-A','95180-052','Volta Grande','555421099000','OUTROS','1609','1350','2025-06-16',2350.00,'À Vista',NULL,NULL,NULL),(420,'Aline Marchuiori Sebulsqui','969.997.130-49','RUA FÁBIO GALINA, 2094','95720-000','Integração','5554991008060','AQUECEDORES','1610','1471','2025-06-17',2000.00,'À Vista',NULL,NULL,NULL),(421,'Osmar Valdir do Couto','312.745.870-34','Area Rural, 592 Linha Boemia VRS 826','95181-899','Area rural de Farroupilha','5554999834233','AQUECEDORES','1611','39,1402,781,728','2025-06-17',2750.00,'À Vista',NULL,NULL,NULL),(422,'Kleiton Soares Bitencourt','006.383.440-50','Rua Luiz Pieruccini, 758 SEXTO ANDAR','95110-540','Desvio Rizzo','5554996458007','AQUECEDORES','1612','1470,1290,1402','2025-06-17',2000.00,'À Vista',NULL,NULL,NULL),(423,'Metaltecnica Metalurgica LTDA','02.984.383/0001-05','AV FREDERICO AUGUSTO RITTER, 2500','94930-650','Distrito Industrial','555137781410','OUTROS','1613','1530','2025-06-17',235.00,'À Vista',NULL,NULL,NULL),(424,'Flávia Brugalli Secchi','354.644.700-00','Rua Jacob Ely, 258 APTO 203','95720-970','Centro','5554996814773','AQUECEDORES','1615','38','2025-06-17',1900.00,'À Vista',NULL,NULL,NULL),(426,'Kátia Regina da Silva','261.146.738-24','Rua Sinfronio Costa, 976','11900-000','Centro','5513997706027','AQUEC SOLAR','1616','7,1','2025-06-20',7823.00,'À Vista',NULL,NULL,NULL),(428,'Bruno Dias','029.074.340-04','Rua Borges de Medeiros, 129, APTO 204','95720-000','Centro','5554996290507','AQUECEDORES','1617','51','2025-06-20',2650.00,'À Vista',NULL,NULL,NULL),(429,'Marcelo de Oliveira','498.919.790-91','Rua Luiz Pizzamiglio, 91 Apto 101','95080-510','São Leopoldo','5554999736900','AQUECEDORES','1618','1499','2025-06-23',3085.00,'À Vista',NULL,NULL,NULL),(430,'Ronaldo Gonçalves','898.859.459-20','Rua Atilio Sebastião Todesco, 717 Moradia B','95177-248','Centenario','5554999450938','AQUECEDORES','1620','1470,1531','2025-06-23',1975.00,'À Vista',NULL,NULL,NULL),(431,'Juarez Zinn','417.966.670-72','Rua Getulio Vargas, 157','95180-070','Volta Grande','5554996258933','AQUECEDORES','1621','1471','2025-06-23',2250.00,'À Vista',NULL,NULL,NULL),(432,'Marlon Bleno de Oliveira','627.752.860-20','Rua Doutor Calixto Maximiliano Rasia, 615','95112-015','Cidade Nova','5554991855066','OUTROS','1622','1541','2025-06-24',500.00,'À Vista',NULL,NULL,NULL),(433,'Idesol Sistemas de Aquec. de Agua e Energias Renovaveis','23.775.214/0001-35','Rua Jose do Patrocinio, 295','92120-080','Canoas','5551999607378','AQUEC SOLAR','1623','1363','2025-06-25',4200.00,'À Vista',NULL,NULL,NULL),(434,'Vagner Luis Vergani','009.576.410-01','Rua São Valentin, 1400','95074-870','Cruzeiro','555481125344','OUTROS','1624','77,1013','2025-06-25',2000.00,'À Vista',NULL,NULL,NULL),(435,'Paulo Viviane Pedretti','-','-','-','-','5554996982593','ENERGIA SOLAR','-','-1','2024-11-01',0.00,'À Vista',NULL,NULL,NULL),(436,'Vanderlei Andreia Amerlin','-','-','-','-','5554984126747','ENERGIA SOLAR','-','-1','2024-12-06',0.00,'À Vista',NULL,NULL,NULL),(437,'Valdir Tofolo','-','-','-','-','5554999565684','ENERGIA SOLAR','-','-1','2024-05-01',0.00,'À Vista',NULL,NULL,NULL),(438,'Tamires Pegoraro','-','-','-','-','5554999319509','ENERGIA SOLAR','-','-1','2025-01-10',0.00,'À Vista',NULL,NULL,NULL),(439,'Paulo Rui Bertuol','-','-','-','-','5554999183862','ENERGIA SOLAR','-','-1','2024-11-01',0.00,'À Vista',NULL,NULL,NULL),(440,'Roni Cesar Sartor','-','-','-','-','5554996749476','ENERGIA SOLAR','-','-1','2024-06-28',0.00,'À Vista',NULL,NULL,NULL),(441,'Ricardo Marques Hochwart','-','-','-','-','5551981774403','ENERGIA SOLAR','-','-1','2025-01-31',0.00,'À Vista',NULL,NULL,NULL),(442,'Nathan Strapazzon','-','-','-','-','5554999361076','ENERGIA SOLAR','-','-1','2024-10-01',0.00,'À Vista',NULL,NULL,NULL),(443,'Rauana Giovani Varaschini','-','-','-','-','5554991301048','ENERGIA SOLAR','-','-1','2025-01-31',0.00,'À Vista',NULL,NULL,NULL),(444,'Paulo Roberto Bertocchi','-','-','-','-','5554981113535','ENERGIA SOLAR','-','-1','2024-04-12',0.00,'À Vista',NULL,NULL,NULL),(445,'Rodrigo Serafin Biasoli','-','-','-','-','5554999881194','ENERGIA SOLAR','-','-1','2024-11-01',0.00,'À Vista',NULL,NULL,NULL),(446,'Nelis Solocchi de Cesaro','-','-','-','-','5554999883078','ENERGIA SOLAR','-','-1','2024-06-28',0.00,'À Vista',NULL,NULL,NULL),(447,'Milton Ferreira Raimundi','-','-','-','-','5551984284492','ENERGIA SOLAR','-','-1','2024-06-28',0.00,'À Vista',NULL,NULL,NULL),(448,'Luiz Antonio Barbacovi','-','-','-','-','5554997059913','ENERGIA SOLAR','-','-1','2024-05-24',0.00,'À Vista',NULL,NULL,NULL),(449,'Loja Kiwito','-','-','-','-','5554999646832','ENERGIA SOLAR','-','-1','2024-08-30',0.00,'À Vista',NULL,NULL,NULL),(450,'Leo Graff','-','-','-','-','5554999750775','ENERGIA SOLAR','-','-1','2025-01-31',0.00,'À Vista',NULL,NULL,NULL),(451,'Cesar Eduardo Perottoni','-','-','-','-','5554991317851','ENERGIA SOLAR','-','-1','2024-07-12',0.00,'À Vista',NULL,NULL,NULL),(452,'Julio Cesar Giacomim','-','-','-','-','5554991317851','ENERGIA SOLAR','-','-1','2024-07-12',0.00,'À Vista',NULL,NULL,NULL),(453,'Juliano Burlani','-','-','-','-','5554999779076','ENERGIA SOLAR','-','-1','2024-11-22',0.00,'À Vista',NULL,NULL,NULL),(454,'João Zilli','-','-','-','-','5554999912554','ENERGIA SOLAR','-','-1','2024-11-22',0.00,'À Vista',NULL,NULL,NULL),(455,'Ivan Cousseau','-','-','-','-','5554999585054','ENERGIA SOLAR','-','-1','2024-07-05',0.00,'À Vista',NULL,NULL,NULL),(456,'Fabio Krewer','-','-','-','-','5551999380684','ENERGIA SOLAR','-','-1','2024-07-31',0.00,'À Vista',NULL,NULL,NULL),(457,'Betina Seidel','-','-','-','-','5554999464869','ENERGIA SOLAR','-','-1','2024-06-17',0.00,'À Vista',NULL,NULL,NULL),(458,'Ary Dalagnol','-','-','-','-','5554996156799','ENERGIA SOLAR','-','-1','2024-06-28',0.00,'À Vista',NULL,NULL,NULL),(459,'Aramis Chies','-','-','-','-','5554999771751','ENERGIA SOLAR','-','-1','2024-08-30',0.00,'À Vista',NULL,NULL,NULL),(460,'Alex Bertolini','-','-','-','-','556783259049','ENERGIA SOLAR','-','-1','2024-12-27',0.00,'À Vista',NULL,NULL,NULL),(461,'Clara Alaor Pegoraro','-','-','-','-','5554981395822','ENERGIA SOLAR','-','-1','2025-03-14',0.00,'À Vista',NULL,NULL,NULL),(462,'Adrivan Cumerlato','-','-','-','-','5554996478586','ENERGIA SOLAR','-','-1','2024-09-30',0.00,'À Vista',NULL,NULL,NULL),(463,'Ademir','-','-','-','-','5554996251694','ENERGIA SOLAR','-','-1','2024-11-15',0.00,'À Vista',NULL,NULL,NULL),(464,'Adans Bertolini','-','-','-','-','5554999441352','ENERGIA SOLAR','-','-1','2024-09-27',0.00,'À Vista',NULL,NULL,NULL),(465,'Arcelino João Peruzzo','-','-','-','-','5554999945499','ENERGIA SOLAR','-','-1','2023-05-01',0.00,'À Vista',NULL,NULL,NULL),(466,'Valmir Chiarello','-','-','-','-','5554999591780','ENERGIA SOLAR','-','-1','2023-05-01',0.00,'À Vista',NULL,NULL,NULL),(467,'Antoninho Spinelli','-','-','-','-','5554984101013','ENERGIA SOLAR','-','-1','2023-07-31',0.00,'À Vista',NULL,NULL,NULL),(468,'Nestor José Travi','-','-','-','-','5554991949991','ENERGIA SOLAR','-','-1','2023-06-16',0.00,'À Vista',NULL,NULL,NULL),(469,'Renato José Panizzi','-','-','-','-','5554981558098','ENERGIA SOLAR','-','-1','2023-10-02',0.00,'À Vista',NULL,NULL,NULL),(470,'Paulo Leandro Papke','-','-','-','-','5551998048981','ENERGIA SOLAR','-','-1','2023-08-01',0.00,'À Vista',NULL,NULL,NULL),(471,'Silvana Barth','-','-','-','-','5554999949014','ENERGIA SOLAR','-','-1','2023-05-01',0.00,'À Vista',NULL,NULL,NULL),(472,'Dilson Scariot','-','-','-','-','5554999997315','ENERGIA SOLAR','-','-1','2023-10-24',0.00,'À Vista',NULL,NULL,NULL),(473,'Dulce Teresinha Signori Verona','-','-','-','-','5554996136325','ENERGIA SOLAR','-','-1','2023-01-26',0.00,'À Vista',NULL,NULL,NULL),(474,'Benito Maldotti','-','-','-','-','5554991085950','ENERGIA SOLAR','-','-1','2023-11-30',0.00,'À Vista',NULL,NULL,NULL),(475,'Silvia Dalzóchio Karpinski','-','-','-','-','5554991174161','ENERGIA SOLAR','-','-1','2023-12-21',0.00,'À Vista',NULL,NULL,NULL),(476,'DEONIR ZANGALLI','312.737.690-15','Rua Andre Antonio Pezzi, 1232','95181620','Monte Verde','555499851659','OUTROS','1625','1541','2025-06-27',490.00,'À Vista',NULL,NULL,NULL),(477,'Cássio Fernandeo de Alburquerque Borges','835.841.100-68','Rua Irmao Angelo Argenta, 851','95060-702','Ana Rech','5554981148471','AQUECEDORES','1626','1471,1531,1290,1402,76','2025-06-30',3320.00,'À Vista',NULL,NULL,NULL),(478,'Maylelvin Comunello Bet','057.765.160-99','Rua Treviso, 17','95177-048','Medianeira','5554991331692','AQUECEDORES','1627','39,1402,1290','2025-06-30',1545.00,'À Vista',NULL,NULL,NULL),(479,'Vera Lucia Graeffe Rodrigues','146.796.710-68','Rua Dona Pacifica, 99','95180-170','Imigrante','5554991282168','AQUECEDORES','1628','1471','2025-06-30',2140.00,'À Vista',NULL,NULL,NULL),(480,'Júlia Helena Bronstrup','029.938.730-59','Rua Daltro Filho, 2540','Teutonia','95890-000','5551980414795','AQUECEDORES','1629','1471','2025-06-30',1700.00,'À Vista',NULL,NULL,NULL),(481,'Volney David Olivo','311.535.770-20','Rua Carlos Maggioni, 362 A','95170-790','São Luiz','5554999719245','AQUECEDORES','1630','1470','2025-07-01',1850.00,'À Vista',NULL,NULL,NULL),(483,'Ricardo Bordin','208.050.630-72','Rodovia BR-116 KM 148, 16999','95054-780','Sagrada Familia','5554999744060','CURSOS','1631','1541','2025-07-03',980.00,'À Vista',NULL,NULL,NULL),(486,'Alexandre Marcos Rocha','124.197.548-59','Rua Matteo Gianella, 1260 APTO 408-A','95034-240','Santa Catarina','5554981252928','AQUECEDORES','1633','1471','2025-07-03',2343.00,'Parcelado',NULL,NULL,NULL),(487,'Carina Nicolini','608.837.310-53','Rua Ernesto Alves, 371','95720-000','Centro','5554999722881','AQUEC SOLAR','1634','913','2025-07-04',6000.00,'À Vista',NULL,NULL,NULL),(488,'Transportadora Tempo LTDA','15.046.912/0001-71','RUA RAINEIRI PETRINI, 1881','95181-060','Santo Antonio','555432611404','OUTROS','1635','1266','2025-07-04',1040.00,'À Vista',NULL,NULL,NULL),(489,'Agamenon Prux','615.455.200-97','Avenida Armando Antonello, 603','95170-810','São Luiz','5554999740294','OUTROS','1636','19','2025-07-05',200.00,'À Vista',NULL,NULL,NULL),(490,'Alvaro João Piccoli','313.608.660-00','Avenida Presidente Kennedy, 533 Apto 308','95170-020','Centro','5554999927615','AQUECEDORES','1637','1531, 1402, 1290, 51','2025-07-08',2700.00,'À Vista',NULL,NULL,NULL),(491,'Nelson de Campos Hofmann','963.957.960-20','Rua Maria Gemo Lavoratti, 400','95059-378','Jardim Eldorado','5554991590028','AQUEC SOLAR','1638','14,16','2025-07-08',6764.00,'À Vista',NULL,NULL,NULL),(492,'Carlos Alberto Lazzari','006.817.070-03','Area rural de Farroupilha, S/N','95180-089','Area Rural','5554999144499','ENERGIA SOLAR','1639','1551','2025-07-10',2940.00,'À Vista',NULL,NULL,NULL),(493,'Claudia Maria Mazzotti da Cruz','921.189.760-20','Rua Pain Filho, 1936','95180-406','São José','5554991448925','AQUECEDORES','1640','1470,1402, 1290','2025-07-10',2193.00,'À Vista',NULL,NULL,NULL),(494,'Marlon Bleno de Oliveira','627.752.860-20','Rua Doutor Calixto Maximiliano Rasia, 615','95112-015','Cidade Nova','5554991855066','AQUEC SOLAR','1641','1454','2025-07-11',4050.00,'À Vista',NULL,NULL,NULL),(495,'Adair Maioli','628.756.390-72','Rua Castro Alvees, 43 Apto 801','95170-218','Parque','5554981144038','AQUECEDORES','1642','1471','2025-07-11',1957.00,'À Vista',NULL,NULL,NULL),(496,'William Marques Oliveira','59.547.978/0001-10','Rua Angelo Quaglioto, 50 Casa 01','95088-370','Planalto','5554991611288','OUTROS','1643','57','2025-07-14',360.00,'À Vista',NULL,NULL,NULL),(497,'Julio Guerino Riggon','213.084.200-30','Rua Carlos Maggioni, 182 A','95170-790','São Luiz','5554999316283','AQUECEDORES','1645','1471','2025-07-15',1800.00,'À Vista',NULL,NULL,NULL),(498,'João Alexandre Teixeira de Jesus','919.983.600-91','Avenida Santa Rita, 461','95172-000','Vicentina','5554991132797','AQUECEDORES','1646','1471','2025-07-16',2000.00,'À Vista',NULL,NULL,NULL),(499,'Fernando Konarzewski Dienstmann','023.212.100-10','Rua Ernesta Colleoni, 122 Apto 501','95110-240','Desvio Rizzo','5551998572090','AQUECEDORES','1647','1526','2025-07-17',3500.00,'À Vista',NULL,NULL,NULL),(500,'Iris Dagmar de Melo Paes','030.677.746-04','Rua Imperial, 130','11900-000','Condominio Blue','5513991441738','AQUEC SOLAR','1648','1426','2025-07-22',4358.00,'À Vista',NULL,NULL,NULL),(501,'Atos Gás Vistoria e Inspecção de Gás LTDA','45.113.423/0001-56','Rua Honório, 18 Sala 205','20771-420','Todos os Santos','5521992343233','OUTROS','1649','57','2025-07-24',1108.61,'À Vista',NULL,NULL,NULL),(502,'Amilcar Franciso Dutra','450.454.530-68','Rua Marechal Dutra, 613 Casa','95720-000','São Francisco','5554991550272','OUTROS','1650','1554','2025-07-24',578.00,'À Vista',NULL,NULL,NULL),(503,'Marlon Bleno de Oliveira','627.752.860-20','Rua Doutor Calixto Maximiliano Rasia, 615','95112-015','Cidade Nova','555499185066','AQUEC SOLAR','1651','1396, 1465, 1466','2025-07-25',526.00,'À Vista',NULL,NULL,NULL),(504,'Divo Dal Bem','396.592.080-49','Rua Carlos Maggioni, 158','95170-790','Sao Luiz','5554999987788','AQUECEDORES','1652','1471','2025-07-26',1900.00,'À Vista',NULL,NULL,NULL),(505,'Jose Augusto Aliardi','660.547.100-87','Rua Emilio Weissheimer, 121','95170-770','Sao Luiz','5554999841806','AQUECEDORES','1654','1471, 63, 1402, 1290','2025-07-29',2950.00,'À Vista',NULL,NULL,NULL),(507,'Simão Gaio','277.085.190-04','Mato Perso, SN','95270-000','Mato Perso','54999215792','OUTROS','1655','74','2025-07-29',1129.00,'À Vista',NULL,NULL,NULL),(509,'Caroline Silvestrin','022.510.870-44','Rua Coronel Pena de Moraes, 1005 Apto 302','95170-154','Parque','5549999700104','AQUECEDORES','1656','1523, 1402, 1290, 1531','2025-07-30',2630.00,'À Vista',NULL,NULL,NULL),(510,'Carlos Henrique Schneider','463.624.100-25','Avenida Beira Mar, 469 Casa 1','95588-000','Remanso','555199811709','AQUECEDORES','1657','1453,1396','2025-07-31',4900.00,'À Vista',NULL,NULL,NULL),(511,'Eliane Regina Somacal Gulden','908.059.500-44','Linha Sao Miguel 4 Distrito, S/N','95184-999','Sao Miguel','5554996313400','OUTROS','1658','76','2025-08-01',430.00,'À Vista',NULL,NULL,NULL),(513,'Jair Bogoni','420.869.060-72','Rua Carlos Barboso, 263','95178-146','Industrial','5554997066516','OUTROS','1659','1570','2025-08-05',1500.00,'À Vista',NULL,NULL,NULL),(514,'Marcio Neves da Silva','930.750.300-15','Rua Marques de Souza, 214','95703-068','Sao Francisco','5554981160364','AQUEC SOLAR','1660','1425, 1','2025-08-07',7146.00,'À Vista',NULL,NULL,NULL),(515,'Guilherme Pozzer','025.294.640-57','Avenida Rio Branco, 1670 Apto 1402','95096-000','Rio Branco','5554999008502','AQUEC SOLAR','1661','1471,1384,1290','2025-08-11',2500.00,'À Vista',NULL,NULL,NULL),(516,'Marcos Jose Fra','812.992.140-53','Rua Carlos Egger, 1356 Apto 101','95170-101','Pio X','5554999238918','AQUECEDORES','1662','1471, 1290','2025-08-13',2250.00,'À Vista',NULL,NULL,NULL),(517,'William Bayerl','920.552.739-49','Rua Frederico Maximiliano Weber, 255','89281-069','Progresso','5547991641933','AQUEC SOLAR','1663','910','2025-08-13',4550.00,'À Vista',NULL,NULL,NULL),(519,'Alexandre Mato Guimaraes','026.517.570-47','Rua Treze de Maio, 500 Apto 304','95170-428','Centro','5551992261943','AQUECEDORES','1664','1523,1290','2025-08-14',2368.00,'À Vista',NULL,NULL,NULL),(520,'Jorge de Assumpçao','192.235.520-87','Rua Raineri Petrini, 699','95180-000','Santo Antonio','5554999293737','AQUECEDORES','1665','1531,1523','2025-08-14',2050.00,'À Vista',NULL,NULL,NULL),(521,'Vinicius Melo Rocha','103.006.679-57','RUA EVELINA BLANCO GARAGORRY, 215','95074-800','SAO LUIZ','5554996375151','AQUECEDORES','1666','1422,1290,1402','2025-08-18',2500.00,'À Vista',NULL,NULL,NULL),(522,'Marta Mary Cesa Mincato','625.412.260-04','Rua Nicodemos Comerlato, 204','95090-200','Galopolis','5554999588558','AQUECEDORES','1667','1','2025-08-20',3100.00,'À Vista',NULL,NULL,NULL),(523,'Odenir Leoratto','803.548.310-20','Rua Eugenio Nicoletti, 371 Apto 802 Torre A','95095-110','Sao Caetano','5554991912129','AQUEC SOLAR','1668','1,18,77,1013,1342,728','2025-08-20',9000.00,'À Vista',NULL,NULL,NULL),(524,'Patricia Salvatori Perottoni','587.997.450-20','Rua Manoel Mendes da Fonseca, 209','95720-000','Centro','5554991425742','AQUEC SOLAR','1669','1','2025-08-25',7300.00,'À Vista',NULL,NULL,NULL),(525,'B Bosch Galvanizaçao do Brasil Ltda','03.545.040/0002-98','Rodovia VRS-864, 5040','95175-800','Linha Palmeiro','555430399500','AQUECEDORES','1670','1572','2025-08-25',2580.00,'À Vista',NULL,NULL,NULL),(526,'Atos Gás Vistoria e Inspecção de Gás LTDA','45.113.423/0001-56','Rua Honório, 18 Sala 205','20771-420','Todos os Santos','5521992343233','OUTROS','1671','57','2025-08-26',359.00,'À Vista',NULL,NULL,NULL),(527,'Vinicius Melo Rocha','103.006.679-57','RUA EVELINA BLANCO GARAGORRY, 215','95074-800','SAO LUIZ','5554996375151','OUTROS','1672','781','2025-08-29',600.00,'À Vista',NULL,NULL,NULL),(528,'Thomaz Argenta','006.620.320-12','Rua Ludovico Cavinato, 54 Casa 13 - Cond. Antolella','95032-620','Santa Catarina','5554999922192','AQUEC SOLAR','1673','12,1396,1259,1272','2025-08-29',4051.00,'À Vista',NULL,NULL,NULL),(529,'Junior Antonio Maso','536.917.920-49','Rua La Salle, 302','95020-100','Sao Pelegrino','5554999232771','AQUEC SOLAR','1674','1453,1398,1508,64','2025-08-29',6691.00,'À Vista',NULL,NULL,NULL),(530,'Paulo Jose de Souza','856.677.736-00','Rua Sete de Setembro, 43','35260-000','Centro','5533999129992','AQUEC SOLAR','1675','642','2025-09-01',299.19,'À Vista',NULL,NULL,NULL),(531,'Ronaldo Serpa da Rosa','009.729.700-37','Travessa Cuiaba, 66','95700-530','Botafogo','5554999769006','OUTROS','1676','14,16,16','2025-09-01',7500.00,'À Vista',NULL,NULL,NULL),(532,'Maria Luiza Soler','276.838.770-34','Rua Joaquim Nabuco, 104','95170-312','Planalto','5554999979141','AQUECEDORES','1678','1470','2025-09-02',2024.00,'À Vista',NULL,NULL,NULL),(533,'Diego Bonatto','608.565.210-00','Rua Rosa Bisol Bonatto, 175','95074-550','De Zorzi','5554999190181','AQUEC SOLAR','1677','16','2025-09-02',2236.00,'À Vista',NULL,NULL,NULL),(535,'Paulo Ricardo Ferreira','027.133.080-54','Rua Joaquim Prestes, 1928','95110680','Desvio Rizzo','5554992453698','AQUECEDORES','1680','1402,1290,1542','2025-09-05',2100.00,'À Vista',NULL,NULL,NULL),(536,'Bruno Bueno de Abreu','031.385.540-40','Rua Independencia -a, 872','95170-774','Sao Luiz','5554999224904','AQUECEDORES','1681','47,1290,1401','2025-09-05',3250.00,'À Vista',NULL,NULL,NULL),(537,'Roberto Antonio Corrent','368.226.800-63','BR 470 KM 152, 152','95320-000','INTERIOR','5554996998747','AQUEC SOLAR','1683','16','2025-09-10',2330.00,'À Vista',NULL,NULL,NULL),(538,'Giovanna Cassiolla de Vitto','073.404.451-88','Rua Raul Cisiloto, 68 Apto 301','95720-000','Centro','5565999722468','AQUECEDORES','1684','1499,1290,1401','2025-09-10',3463.00,'À Vista',NULL,NULL,NULL),(539,'Marcelo Josue Mosquer','12.323.022/0001-71','Rua Agnaldo Luis Boeira, 1393','95059-207','Jardim Iracema','5554981173068','AQUECEDORES','1685','1427','2025-09-10',3500.00,'À Vista',NULL,NULL,NULL),(540,'Metaltecnica Metalurgica LTDA','02.984.383/0001-05','Av Frederico Augusto Ritter, 2500','94930-650','Distrito Industrial','555137781410','OUTROS','1686','57,57','2025-09-10',700.00,'À Vista',NULL,NULL,NULL),(541,'Ivanice M Peroni','495.849.100-78','Rua Augusto Pessin, 156','95173-022','Bela Vista','5554999896363','AQUECEDORES','1687','1499,1401,1290','2025-09-11',3200.00,'À Vista',NULL,NULL,NULL),(542,'Sergio Locatelli','396.612.020-87','Rua Borges de Medeiros, 37 Apto 201','95720-000','Garibaldi','5554991550272','AQUECEDORES','1688','1470','2025-09-11',1900.00,'À Vista',NULL,NULL,NULL),(544,'Jackson Luiz Brizot','589.996.809-59','Rua Para, 683','89840-000','Centro','5549991047684','OUTROS','1690','1290,37','2025-09-12',255.00,'À Vista',NULL,NULL,NULL),(545,'Mayara Peron Elias Ramos','059.587.549-12','Rua Moises Furtado, 333','88502-080','Centro','5549999297973','AQUEC SOLAR','1691','20','2025-09-12',560.00,'À Vista',NULL,NULL,NULL),(546,'Ederson Cigolini','024.629.290-37','Rua Amelia Belluzzo Ferrari, 330','95706-188','Vila Nova II','5554996877835','OUTROS','1692','77','2025-09-11',760.00,'À Vista',NULL,NULL,NULL),(548,'Joni Marchiori','029.330.150-64','Rua Cantineiro Giacomo Giacomello, 393 Ap. 209','95700-820','Verona','5554991829151','AQUEC SOLAR','1693','16','2025-09-19',2150.00,'À Vista',NULL,NULL,NULL),(549,'William Lopes Silva','015.912.910-97','Rua Sete, 2331 CENTRAL PARK','96216-716','PRQ. RESINDENCIAL JARDIM SO SOL','5553991013882','AQUEC SOLAR','1694','1424','2025-09-25',3000.00,'À Vista',NULL,NULL,NULL),(550,'Ruth Lengler','108.185.880-04','Rua Coronel Armando Assis, 300','91330-010','Tres Figueiras','5551998476618','AQUEC SOLAR','1695','1468,1482,643','2025-09-29',3891.00,'À Vista',NULL,NULL,NULL),(551,'Luiz Carlos Terribile','235.972.080-53','Rua Sarmento Leite, 1261 Apto 301','95084-000','Exposiçao','5554991701620','OUTROS','1696','728','2025-09-29',850.00,'À Vista',NULL,NULL,NULL),(552,'Alexandre Beck','628.678.940-04','Rua Joao Nicolau Kliemann, 19 Esquina Rua Rio de Janeiro','96825-110','Higienopolis','5551999820821','AQUEC SOLAR','1697','1405','2025-09-29',2700.00,'À Vista',NULL,NULL,NULL),(553,'Vanessa Scudella','045.490.380-47','Linha São Luiz de Castro, SN','95727-000','São Luiz de Castro','55','AQUECEDORES','1698','1542','2025-09-30',2000.00,'À Vista',NULL,NULL,NULL),(554,'Djg Gan Constuçoes LTDA','06.344.668/0001-32','Rua da Paz, 917 Santo Amaro','04713-001','Chacara Santo Antonio','5511938021026','AQUECEDORES','1699','79','2025-09-30',558.50,'À Vista',NULL,NULL,NULL),(556,'Viviane Gallio Bazzi','001.541.440-02','Rua Oswaldo Aranha, 363 A','95190-000','Henrique Pante','5511981843474','OUTROS','1700','1336,1336,1336,1336,1013,1013,1013,1013,1277','2025-10-01',4800.00,'À Vista',NULL,NULL,NULL),(558,'Luciano Dal Ponte','987.868.060-68','RUA ULDERICO CESARE LODI, 214','95177-156','CENTENARIO','5554981227710','AQUEC SOLAR','1702','10','2025-10-06',3530.00,'À Vista',NULL,NULL,NULL),(559,'William Elias Galdino','028.155.176-63','RUA HUM, 488','34300-000','JATOBA','5531988138454','AQUEC SOLAR','1701','57','2025-10-03',393.39,'À Vista',NULL,NULL,NULL),(560,'Lucas Mansur Sampate da Silva','060.310.459-23','Rua Joao Alberto Tomazoni, 381 Condominio Wynn','95110-252','Sanvitto','5554992996658','AQUECEDORES','1703','1471','2025-10-06',2000.00,'À Vista',NULL,NULL,NULL),(561,'Adriano Jose Pertile','015.268.210-44','Rua Joao Pessoa, 471 1005','95700-672','Santa Rita','5554999708530','OUTROS','1704','1343','2025-10-07',244.00,'À Vista',NULL,NULL,NULL),(562,'Eurides Sutili','798.873.339-72','Rua Joao Farinon, 398','95171-004','Sao Francisco','5554992015168','AQUECEDORES','1705','1470','2025-10-07',1674.15,'À Vista',NULL,NULL,NULL),(563,'Adalberto Fagherazzi','373.623.050-87','Rodovia RSC-453, 120','95170-304','Planalto','5554999574995','AQUECEDORES','1706','1471,1402','2025-10-09',2265.00,'À Vista',NULL,NULL,NULL),(564,'Janete Regina Menegotto','575.284.380-49','Rua Giuseppe Formolo, 600','95074-100','Cruzeiro','5554999528899','AQUEC SOLAR','1708','18,1','2025-10-10',6300.00,'À Vista',NULL,NULL,NULL),(565,'Falbom Agroindustria Ltda','06.094.261/0001-02','Area Rural, Rod Pr 317, Km 391 Caixa Postal 1535, 0','85919-899','Area Rural de Toledo','5545998600532','OUTROS','1707','57','2025-10-10',407.00,'À Vista',NULL,NULL,NULL),(566,'Guilherme Zanotti','006.059.150-16','Estrada Municipal Benvenuto Toss, 878 6a Legua','95074-500','Sao Luiz','5554981398451','AQUEC SOLAR','1709','1','2025-10-13',3450.00,'À Vista',NULL,NULL,NULL),(567,'Marceli Costa dos Santos da Rosa','627.651.910-34','Rua 57 Praia Rei dos Peixes s/n, 295 Manuel da Nobrega','95540-000','Rei do Peixe - Quintao','5551991657693','ENERGIA SOLAR','1710','1481','2025-10-13',5840.00,'À Vista',NULL,NULL,NULL),(569,'Ivanor Antonio Colombo','785.243.180-15','Rua Luigi Sperafico, 154','95173-034','Bela Vista','5554981660022','OUTROS','1711','1246,1247,635,635,636,636','2025-10-17',3898.00,'À Vista',NULL,NULL,NULL),(570,'Franciny da Silva','027.471.666-60','Rua Treze de Maio, 1604 Torre Benessere - Apto 84','95084-460','Cristo Redentor','5554996196844','AQUECEDORES','1712','1526','2025-10-17',4020.00,'À Vista',NULL,NULL,NULL),(571,'Marcelo Josue Mosquer','12.323.022/0001-71','Rua Agnaldo Luis Boeira, 1393','95059-207','Jardim Iracema','5554981173068','AQUECEDORES','1713','75,1470','2025-10-17',2836.00,'À Vista',NULL,NULL,NULL),(572,'Paola Pozzer Werner','030.017.630-94','Rua Angelo Mario Schenato, 130 Apto 203','95170-782','Sao Luiz','5554999430735','AQUECEDORES','1714','46','2025-10-22',2550.00,'À Vista',NULL,NULL,NULL),(573,'Lirio Maroco','208.050.980-20','Estrada Magnabosco, SN Rio Branco','95240-000','Rio Branco','5554999984404','AQUEC SOLAR','1715','8,1336,1336,1013,1013','2025-10-25',5461.00,'À Vista',NULL,NULL,NULL),(574,'Sedenir Jose Satori','756.049.650-49','Rua dos Andradas, 327','90020-000','Centro Historico','5551994852424','AQUEC SOLAR','1716','1,18,728,1343','2025-10-31',6700.00,'À Vista',NULL,NULL,NULL),(575,'Luiz Carlos Artus','612.016.770-68','Rua Alagos, 240','95765-000','Tico Tico','5551999621726','AQUEC SOLAR','1717','1426','2025-10-31',3700.00,'À Vista',NULL,NULL,NULL),(576,'Boi Sul Carnes Ltda','93.733.293/0001-05','Area Rural, S/N Linha Ely','95181-899','Area Rural de Farroupilha','55542319919','OUTROS','1718','1013','2025-10-31',318.00,'À Vista',NULL,NULL,NULL),(577,'Francis Andre Triches Barbosa','013.663.520-25','Rua da Republica, 1010','95170-160','Parque','55','OUTROS','1719','77','2025-11-01',863.00,'À Vista',NULL,NULL,NULL),(578,'Anna Beatriz da Silva Sima','121.478.377-50','Rua 10 de Novembro, 2739','95740-000','Poço das Antas','5551981848179','AQUEC SOLAR','1720','1425,1,77,1013','2025-11-04',8750.00,'À Vista',NULL,NULL,NULL),(579,'Daniel Flores Smaniotto','016.646.850-90','Rua Padre Plinio Bartelle, 216 Apto 102','95180-330','Imigrante','5554999457173','AQUECEDORES','1723','1470','2025-11-06',1674.15,'À Vista',NULL,NULL,NULL),(580,'Juliana Geremia D Agostini','017.122.230-03','Rua Marques Parana, 349','24030-215','Centro','55549155027','AQUECEDORES','1722','46','2025-11-06',2650.00,'À Vista',NULL,NULL,NULL),(581,'Sedinei Brum Faccioli','007.216.210-40','Centro, 230','99560-000','Centro','5554999531678','AQUEC SOLAR','1724','20','2025-11-08',2550.00,'À Vista',NULL,NULL,NULL),(582,'Rodrigo Valentini','769.491.680-04','Rua Germano Osmarini, 478','95181-154','Primeiro de Maio','555498166000','AQUEC SOLAR','1725','1424','2025-11-08',2800.00,'À Vista',NULL,NULL,NULL),(583,'Edson Cardoso dos Santos','621.402.130-68','Estrada Municipal Vicente Menezes, 1449','95044-030','Linha 40','5554996702444','AQUEC SOLAR','1726','1,10,1343,1013,1013,1336,1336,728','2025-11-11',10340.00,'À Vista',NULL,NULL,NULL),(584,'DJG GAN Construçoes LTDA','06.344.668/0001-16','Rua da Paz, 917 Santo Amaro','04713-001','Chacara Sanro Antonio (Zona Sul)','5511938021026','OUTROS','1727','75','2025-11-13',771.75,'À Vista',NULL,NULL,NULL),(585,'Adriano Jose Pertile','015.268.210-44','Rua Joao Pessoa, 471 1005','95700-672','Santa Rita','5554999708530','OUTROS','1728','1343','2025-11-14',244.00,'À Vista',NULL,NULL,NULL),(586,'Marcelo Josue Mosquer','12.323.022/0001-1771','Rua Agnaldo Luis Boeira, 1393','95059-207','Jardim Iracema','5554981173068','AQUECEDORES','1729','1470','2025-11-17',1600.00,'À Vista',NULL,NULL,NULL),(587,'Loureco Chieli','596.868.390-20','Rua Pain Filho, 685','95180-240','Imigrante','5554981490362','OUTROS','1730','728','2025-11-17',480.00,'À Vista',NULL,NULL,NULL),(589,'Vinicius Eichneir','811.713.820-49','Rua Elisa Weissheimer, 415','95181-482','Monte Verde','5554996159642','ENERGIA SOLAR','1733','1616','2025-11-19',8777.18,'À Vista',NULL,NULL,NULL),(590,'Renan Francisco Panassol','000.190.410-80','Rua Jao Viel, 304','95110-574','Nossa Senhora da Conceiçao','555499487473','AQUEC SOLAR','1734','16','2025-11-20',1500.00,'À Vista',NULL,NULL,NULL),(591,'Fabio Machado dos Santos','671.257.510-91','RUA JOELLE CASSARO, 87','99701-320','Esperança','5554999272632','AQUECEDORES','1735','20,4','2025-11-24',1500.00,'Parcelado',NULL,NULL,NULL),(592,'Frigorifico Rz Prodotti La Delizia LTDA','10.502.365/0001-78','Estrada RS 359, 2900 Frigorifico RZ','95335-000','Estrada RS 359','5551993114298','OUTROS','1736','1527,1605','2025-11-24',10360.00,'Parcelado',NULL,NULL,NULL),(593,'Silvana Palaoro','048.560.780-89','Rua Treviso, 68','95177-048','Medianeira','5554999316686','AQUECEDORES','1737','1471, 1402, 1290','2025-11-25',2250.00,'À Vista',NULL,NULL,NULL),(594,'Suenir Tuani Olcieski','020.544.790-20','Rua Professor Raymundo Carvalho, 1080 Fundos','95702-430','Fatima','5554996812067','AQUEC SOLAR','1738','16','2025-11-25',4000.00,'À Vista',NULL,NULL,NULL),(595,'Nathanael Abramchuk','349.554.370-87','Rua Distrito Federal, 856','99700-280','Centro','5554991627183','AQUEC SOLAR','1739','20','2025-11-25',3600.00,'À Vista',NULL,NULL,NULL),(596,'Ledo Daruy Filho','964.573.500-97','Rua Teresa Formolo Pontalti, 560','95076-400','Bela Vista','5554981511297','AQUEC SOLAR','1740','1336,20','2025-11-27',1260.00,'À Vista',NULL,NULL,NULL),(597,'Airlindo Spinelli','466.977.640-15','Rua Sete de Setembro, 845','95180-312','Imigrante','5554999744739','AQUECEDORES','1741','1900.00','2025-11-27',1900.00,'À Vista',NULL,NULL,NULL),(598,'L V Materiais de Construçao LTDA','05.752.398/0001-36','Rua Sao Paulo, 253','95765-000','Morro do Tico tico','555135347037','ENERGIA SOLAR','1742','1617','2025-11-28',8000.00,'À Vista',NULL,NULL,NULL),(599,'Ivone Carvalho','727.403.370-00','Rua Josephina Susin Perondi 874','95060-561','Ana Rech','5554981191516','AQUEC SOLAR','1743','912,1508,1342,728','2025-12-01',8100.00,'À Vista',NULL,NULL,NULL),(600,'Marcelo Josue Mosquer','12.323.022/0001-71','Rua Agnaldo Luis Boeira,1393','95059-207','Jardim Iracema','5554981173068','AQUEC SOLAR','1744','1471,46,1290,1402,1402,1531,77,77,1013,1013,57','2025-02-01',7300.00,'À Vista',NULL,NULL,NULL),(601,'Matheus Drago de Almeida','003.691.970-54','Estrada Municipal Menezes, 2350','95044-030','Linha 40','5554999747199','AQUEC SOLAR','1745','1425,910,1508','2025-12-02',10500.00,'À Vista',NULL,NULL,NULL),(602,'Joice de Souza','006.536.510-07','Rua Marino Cliente, 182','95170-056','Pio X','5554999773703','AQUECEDORES','1747','46,1290','2025-12-03',2380.00,'À Vista',NULL,NULL,NULL),(603,'Juliano Castoldi','546.992.150-68','Rua Marechal Floriano Peixoto, 148','95170-420','Centro','55549999719210','OUTROS','1746','1263','2025-12-02',730.00,'À Vista',NULL,NULL,NULL),(604,'Sergio Augusto Soster','461.749.150-34','Area Rural, SN','95181-899','Areal Rural de Farroupilha','5554999465161','OUTROS','1748','1336','2025-12-05',900.00,'À Vista',NULL,NULL,NULL),(605,'Claudio Dicaro','015.603.596-09','Avenida Capivari, n° 387','95059-100','Serrano','5554981110184','OUTROS','1749','77,1486','2025-12-05',919.00,'À Vista',NULL,NULL,NULL),(606,'Tania Maria Zignani','515.746.240-91','Rua Vicente Faraon, 269','95720-000','Champagne','54999165944','AQUECEDORES','1750','51','2025-12-11',2580.00,'À Vista',NULL,NULL,NULL),(607,'Dogma Instalaçao de Energia Solar Ltda','32961510/0001-11','Avenida Alexandre Rizzo, 1317 Sala 901 Rizzo','95110-000','Desvio Rizzo','-','AQUEC SOLAR','1751','20','2025-12-12',500.00,'À Vista',NULL,NULL,NULL),(608,'Ivane da Rosa Sostisso','635.078.460-04','Rua Luiz Zulian Pinto, 319 Casa 3','99711-054','Espirito Santo','54999217445','AQUEC SOLAR','1752','1','2025-12-12',3220.00,'À Vista',NULL,NULL,NULL),(609,'Eduardo Francisco Chiarello','825.653.330-72','RS 122, KM 68','9511-550','FORQUETA','54996504515','AQUECEDORES','1753','38, 1402, 1290, 1618','2025-12-16',3847.00,'À Vista',NULL,NULL,NULL);
/*!40000 ALTER TABLE `compras_detalhadas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `host_summary`
--

DROP TABLE IF EXISTS `host_summary`;
/*!50001 DROP VIEW IF EXISTS `host_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `host_summary` AS SELECT 
 1 AS `host`,
 1 AS `statements`,
 1 AS `statement_latency`,
 1 AS `statement_avg_latency`,
 1 AS `table_scans`,
 1 AS `file_ios`,
 1 AS `file_io_latency`,
 1 AS `current_connections`,
 1 AS `total_connections`,
 1 AS `unique_users`,
 1 AS `current_memory`,
 1 AS `total_memory_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_file_io`
--

DROP TABLE IF EXISTS `host_summary_by_file_io`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `host_summary_by_file_io` AS SELECT 
 1 AS `host`,
 1 AS `ios`,
 1 AS `io_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `host_summary_by_file_io_type`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_file_io_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `host_summary_by_file_io_type` AS SELECT 
 1 AS `host`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_stages`
--

DROP TABLE IF EXISTS `host_summary_by_stages`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_stages`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `host_summary_by_stages` AS SELECT 
 1 AS `host`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `host_summary_by_statement_latency`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_statement_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `host_summary_by_statement_latency` AS SELECT 
 1 AS `host`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_statement_type`
--

DROP TABLE IF EXISTS `host_summary_by_statement_type`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_statement_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `host_summary_by_statement_type` AS SELECT 
 1 AS `host`,
 1 AS `statement`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `innodb_buffer_stats_by_schema`
--

DROP TABLE IF EXISTS `innodb_buffer_stats_by_schema`;
/*!50001 DROP VIEW IF EXISTS `innodb_buffer_stats_by_schema`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `innodb_buffer_stats_by_schema` AS SELECT 
 1 AS `object_schema`,
 1 AS `allocated`,
 1 AS `data`,
 1 AS `pages`,
 1 AS `pages_hashed`,
 1 AS `pages_old`,
 1 AS `rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `innodb_buffer_stats_by_table`
--

DROP TABLE IF EXISTS `innodb_buffer_stats_by_table`;
/*!50001 DROP VIEW IF EXISTS `innodb_buffer_stats_by_table`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `innodb_buffer_stats_by_table` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `allocated`,
 1 AS `data`,
 1 AS `pages`,
 1 AS `pages_hashed`,
 1 AS `pages_old`,
 1 AS `rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `innodb_lock_waits`
--

DROP TABLE IF EXISTS `innodb_lock_waits`;
/*!50001 DROP VIEW IF EXISTS `innodb_lock_waits`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `innodb_lock_waits` AS SELECT 
 1 AS `wait_started`,
 1 AS `wait_age`,
 1 AS `wait_age_secs`,
 1 AS `locked_table`,
 1 AS `locked_table_schema`,
 1 AS `locked_table_name`,
 1 AS `locked_table_partition`,
 1 AS `locked_table_subpartition`,
 1 AS `locked_index`,
 1 AS `locked_type`,
 1 AS `waiting_trx_id`,
 1 AS `waiting_trx_started`,
 1 AS `waiting_trx_age`,
 1 AS `waiting_trx_rows_locked`,
 1 AS `waiting_trx_rows_modified`,
 1 AS `waiting_pid`,
 1 AS `waiting_query`,
 1 AS `waiting_lock_id`,
 1 AS `waiting_lock_mode`,
 1 AS `blocking_trx_id`,
 1 AS `blocking_pid`,
 1 AS `blocking_query`,
 1 AS `blocking_lock_id`,
 1 AS `blocking_lock_mode`,
 1 AS `blocking_trx_started`,
 1 AS `blocking_trx_age`,
 1 AS `blocking_trx_rows_locked`,
 1 AS `blocking_trx_rows_modified`,
 1 AS `sql_kill_blocking_query`,
 1 AS `sql_kill_blocking_connection`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_by_thread_by_latency`
--

DROP TABLE IF EXISTS `io_by_thread_by_latency`;
/*!50001 DROP VIEW IF EXISTS `io_by_thread_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `io_by_thread_by_latency` AS SELECT 
 1 AS `user`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `thread_id`,
 1 AS `processlist_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_global_by_file_by_bytes`
--

DROP TABLE IF EXISTS `io_global_by_file_by_bytes`;
/*!50001 DROP VIEW IF EXISTS `io_global_by_file_by_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `io_global_by_file_by_bytes` AS SELECT 
 1 AS `file`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_write`,
 1 AS `total`,
 1 AS `write_pct`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_global_by_file_by_latency`
--

DROP TABLE IF EXISTS `io_global_by_file_by_latency`;
/*!50001 DROP VIEW IF EXISTS `io_global_by_file_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `io_global_by_file_by_latency` AS SELECT 
 1 AS `file`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `count_read`,
 1 AS `read_latency`,
 1 AS `count_write`,
 1 AS `write_latency`,
 1 AS `count_misc`,
 1 AS `misc_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_global_by_wait_by_bytes`
--

DROP TABLE IF EXISTS `io_global_by_wait_by_bytes`;
/*!50001 DROP VIEW IF EXISTS `io_global_by_wait_by_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `io_global_by_wait_by_bytes` AS SELECT 
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_written`,
 1 AS `total_requested`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_global_by_wait_by_latency`
--

DROP TABLE IF EXISTS `io_global_by_wait_by_latency`;
/*!50001 DROP VIEW IF EXISTS `io_global_by_wait_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `io_global_by_wait_by_latency` AS SELECT 
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `read_latency`,
 1 AS `write_latency`,
 1 AS `misc_latency`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_written`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `latest_file_io`
--

DROP TABLE IF EXISTS `latest_file_io`;
/*!50001 DROP VIEW IF EXISTS `latest_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `latest_file_io` AS SELECT 
 1 AS `thread`,
 1 AS `file`,
 1 AS `latency`,
 1 AS `operation`,
 1 AS `requested`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `leads`
--

DROP TABLE IF EXISTS `leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leads` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `grupo` varchar(50) NOT NULL,
  `data_cadastro` date NOT NULL,
  `data_aniversario` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=268 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads`
--

LOCK TABLES `leads` WRITE;
/*!40000 ALTER TABLE `leads` DISABLE KEYS */;
INSERT INTO `leads` VALUES (15,'Diego','554888210888','CURSOS','2025-06-13',NULL),(16,'Marcelo Purcino','5511949917315','CURSOS','2025-06-13',NULL),(17,'Fabiano Andrade','5521976136425','CURSOS','2025-06-13',NULL),(18,'Sidclayton','5521970408077','CURSOS','2025-06-13',NULL),(19,'Samuel Macedo','555491648029','CURSOS','2025-06-13',NULL),(20,'Sebastião Lead Curso','5511989919546','CURSOS','2025-06-13',NULL),(21,'Willyan','555185885974','AQUECEDORES','2025-06-13',NULL),(22,'Marcelo','555499326531','AQUEC SOLAR','2025-06-13',NULL),(23,'Admilson Correa','559182512015','CURSOS','2025-06-13',NULL),(24,'Iara','555496984345','OUTROS','2025-06-13',NULL),(25,'Sergio Soares','5511962256871','CURSOS','2025-06-13',NULL),(26,'Gabriel','555182083563','CURSOS','2025-06-13',NULL),(28,'H2o Soluções','555384567260','CURSOS','2025-06-13',NULL),(29,'Ka','555198101134','CURSOS','2025-06-13',NULL),(30,'Valdomiro','5517997187630','CURSOS','2025-06-13',NULL),(31,'Marcio Augusto','5521978785000','CURSOS','2025-06-13',NULL),(32,'Evanildo','5524999486290','CURSOS','2025-06-13',NULL),(33,'Neider Chagas','555186584887','CURSOS','2025-06-13',NULL),(34,'Herberth goldan','554796273283','CURSOS','2025-06-13',NULL),(35,'Tereza Malinowski','5599629036','CURSOS','2025-06-13',NULL),(37,'Rodrigo','554796225399','CURSOS','2025-06-13',NULL),(38,'Guilherme Panisson','555491393306','AQUEC SOLAR','2025-06-13',NULL),(39,'Luiz Rodrigues','5524992011768','CURSOS','2025-06-13',NULL),(40,'Assertiva','558893825275','AQUEC SOLAR','2025-06-13',NULL),(41,'Vilson Antoniazzi','5551920004576','OUTROS','2025-06-13',NULL),(42,'Anderson Ortiz','555381423185','CURSOS','2025-06-13',NULL),(46,'Luciana','555499852109','AQUECEDORES','2025-06-13',NULL),(47,'Rodrigo Luiz Müller','555184037841','OUTROS','2025-06-13',NULL),(48,'Diego Anastacio','554891304281','CURSOS','2025-06-13',NULL),(49,'Sandro Claiton','555199295810','CURSOS','2025-06-13',NULL),(50,'Luciano Boiler','555481227710','AQUEC SOLAR','2025-06-16',NULL),(51,'Ana Luiza','555399344403','OUTROS','2025-06-16',NULL),(52,'!','5521964296023','CURSOS','2025-06-16',NULL),(53,'Diego Boniatti','555499793639','AQUEC SOLAR','2025-06-16',NULL),(54,'Cleison','5515981474908','OUTROS','2025-06-16',NULL),(55,'Vanderson Garcia','555499775477','AQUECEDORES','2025-06-16',NULL),(56,'Guilherme Conde','5524999120035','OUTROS','2025-06-17',NULL),(57,'Luciene gonçalves dos Santos','5571991190930','CURSOS','2025-06-23',NULL),(58,'Paulo Cesar Gonçalves Pinto Junior','5521978953344','CURSOS','2025-06-23',NULL),(59,'Márcio Feijó','5512982698657','CURSOS','2025-06-23',NULL),(60,'Erivaldo','554999956078','AQUEC SOLAR','2025-06-23',NULL),(61,'!','5591475312','OUTROS','2025-06-23',NULL),(62,'Thaiane','553199204060','ENERGIA SOLAR','2025-06-23',NULL),(63,'!','554899146805','OUTROS','2025-06-23',NULL),(65,'!','555193430613','OUTROS','2025-06-23',NULL),(66,'Diego Paulino','555496921070','OUTROS','2025-06-23',NULL),(67,'!','554896997502','AQUECEDORES','2025-06-23',NULL),(68,'!','555492442772','ENERGIA SOLAR','2025-06-23',NULL),(69,'Fernanda','555499470908','AQUECEDORES','2025-06-23',NULL),(70,'Luciene','558799332146','OUTROS','2025-06-23',NULL),(71,'Bruno','5518991691170','CURSOS','2025-06-23',NULL),(72,'!','555484115992','AQUECEDORES','2025-06-23',NULL),(73,'William','555391013882','AQUEC SOLAR','2025-06-23',NULL),(74,'!','555491037026','AQUECEDORES','2025-06-23',NULL),(76,'!','554998156042','OUTROS','2025-06-23',NULL),(77,'Rocar','5512996280527','OUTROS','2025-06-23',NULL),(78,'Jaisson','555196304174','CURSOS','2025-06-23',NULL),(79,'Edipo','5518996065598','AQUEC SOLAR','2025-06-25',NULL),(80,'Samuel','555499538484','AQUECEDORES','2025-06-25',NULL),(81,'Rodrigo','555496442665','AQUECEDORES','2025-06-25',NULL),(82,'Perdigão','555491760905','AQUECEDORES','2025-06-25',NULL),(83,'!','5516982561336','CURSOS','2025-06-25',NULL),(84,'Gilberto','555491894058','ENERGIA SOLAR','2025-06-25',NULL),(85,'Luciano','554391162011','AQUEC SOLAR','2025-06-25',NULL),(86,'Claudia','555193175646','AQUECEDORES','2025-06-25',NULL),(87,'!','555499419537','AQUECEDORES','2025-06-25',NULL),(89,'Maristela','555496056431','AQUECEDORES','2025-06-25',NULL),(90,'Zé','555196271914','CURSOS','2025-06-27',NULL),(91,'Leandro','555499846868','AQUECEDORES','2025-06-27',NULL),(92,'Amanda','555497120734','AQUECEDORES','2025-06-26',NULL),(93,'Anderson','555196822987','AQUEC SOLAR','2025-06-27',NULL),(94,'Jana','555491963540','OUTROS','2025-06-27',NULL),(95,'Vanessa','5521999626511','AQUEC SOLAR','2025-06-27',NULL),(96,'Vinicius','555491578890','AQUECEDORES','2025-06-27',NULL),(97,'José roberto','5597197147','CURSOS','2025-06-27',NULL),(98,'Elton','554199998977','AQUEC SOLAR','2025-06-27',NULL),(99,'Thobias','555496834407','AQUECEDORES','2025-06-30',NULL),(100,'Vanessa','555499120593','AQUECEDORES','2025-06-30',NULL),(101,'Lunes Hassen','555499922977','AQUEC SOLAR','2025-06-30',NULL),(102,'Fabio','555499191567','CURSOS','2025-06-30',NULL),(103,'Fernando','554784482709','AQUECEDORES','2025-06-30',NULL),(104,'Marcio','554896933597','AQUEC SOLAR','2025-06-30',NULL),(105,'Anderson','555491804720','AQUEC SOLAR','2025-07-09',NULL),(106,'Nonato','558596538764','CURSOS','2025-07-04',NULL),(107,'Felipe Instagram','5531992600304','CURSOS','2025-07-08',NULL),(108,'!','555491616850','CURSOS','2025-07-07',NULL),(109,'Raquel','555184313043','AQUECEDORES','2025-07-07',NULL),(110,'Karina Costa Silva','5511988498655','AQUECEDORES','2025-07-07',NULL),(111,'Pedro Imbituba SC','554891761011','AQUEC SOLAR','2025-07-07',NULL),(112,'Gilson Aquec Solar','555491134144','AQUEC SOLAR','2025-07-07',NULL),(113,'! - Energia + AQUEC SOLAR','555189386547','AQUEC SOLAR','2025-07-07',NULL),(114,'Marcius','553192290005','AQUECEDORES','2025-07-07',NULL),(115,'Elias - Carregador Elétrico','555496072482','OUTROS','2025-07-07',NULL),(116,'Paola','555496882993','AQUECEDORES','2025-07-07',NULL),(118,'Everton Arroio dos Ratos','555184431243','AQUEC SOLAR','2025-07-07',NULL),(119,'André Luiz Mendes - Instagram','5549999437878','CURSOS','2025-07-09',NULL),(120,'PCAquecedores','553185571659','CURSOS','2025-07-14',NULL),(122,'Nara','555492519826','AQUECEDORES','2025-07-14',NULL),(123,'Andréia','555499689230','AQUEC SOLAR','2025-07-14',NULL),(124,'Evandro G. Todero','555491443213','AQUECEDORES','2025-07-14',NULL),(125,'Marcius','553192290005','AQUECEDORES','2025-06-07',NULL),(126,'Douglas Rafael','555496271921','ENERGIA SOLAR','2025-07-23',NULL),(127,'Max Bernadini','555499341612','ENERGIA SOLAR','2025-07-23',NULL),(128,'Natalino','555499726463','AQUECEDORES','2025-07-23',NULL),(129,'David','555194718721','CURSOS','2025-07-23',NULL),(130,'Marcos','5511940230695','OUTROS','2025-07-23',NULL),(132,'Vitória Bernades','555199148414','AQUECEDORES','2025-07-23',NULL),(133,'Jeison','555591039275','AQUEC SOLAR','2025-07-23',NULL),(134,'Tiago Weimann','555196586663','AQUECEDORES','2025-07-23',NULL),(135,'Jaqueline Decezaro','555484291497','ENERGIA SOLAR','2025-07-23',NULL),(136,'Larissa - Sapiranga','555199136939','AQUEC SOLAR','2025-07-23',NULL),(137,'Jane','555499528899','AQUEC SOLAR','2025-06-15',NULL),(138,'Fernanda Laís Baú','555499266017','AQUECEDORES','2025-07-25',NULL),(139,'Caroline Silvestrin','554999700104','AQUECEDORES','2025-07-25',NULL),(140,'Plínio Caixa','555491216994','AQUECEDORES','2025-07-25',NULL),(141,'Flavio','555496418606','ENERGIA SOLAR','2025-07-28',NULL),(142,'Vilmar','555499243168','AQUEC SOLAR','2025-07-28',NULL),(143,'Marcia Mg Malhas','555491782797','ENERGIA SOLAR','2025-07-28',NULL),(144,'Emerson','557191708273','CURSOS','2025-07-29',NULL),(145,'Igor Santos','5521975539696','CURSOS','2025-07-29',NULL),(146,'Luiz Gustavo','555481201757','ENERGIA SOLAR','2025-07-29',NULL),(147,'Alexandre Idesol','555199607378','AQUEC SOLAR','2025-07-29',NULL),(148,'Miriam','555492535380','AQUECEDORES','2025-07-31',NULL),(149,'Nilton Fabiano','5515997323606','CURSOS','2025-08-01',NULL),(151,'Anderson Carregador','555496337696','OUTROS','2025-08-04',NULL),(152,'João Paulo','555196441515','AQUEC SOLAR','2025-08-04',NULL),(153,'Itacir Boniati','555491228504','OUTROS','2025-08-05',NULL),(154,'Jane Aquecimento Solar','555499528899','AQUEC SOLAR','2025-08-06',NULL),(155,'Rodrigo','5511999899020','OUTROS','2025-08-05',NULL),(158,'Jair - Santa Catarina','554792394200','AQUEC SOLAR','2025-08-07',NULL),(159,'Stili','555199806743','ENERGIA SOLAR','2025-08-07',NULL),(160,'Luiz - SP','5519981844600','AQUEC SOLAR','2025-08-07',NULL),(161,'Diego Schaefer','555198065691','AQUECEDORES','2025-08-12',NULL),(163,'Lima','5596736577','AQUEC SOLAR','2025-08-10',NULL),(164,'Marlon Felipe','5521994595185','CURSOS','2025-08-18',NULL),(165,'Engenharia ITEC','555180563509','AQUEC SOLAR','2025-08-18',NULL),(166,'Romulo Brendow','5524981768501','CURSOS','2025-08-18',NULL),(167,'Ws-Climatizaçao','555182437300','CURSOS','2025-08-18',NULL),(169,'Vinicius','555491910076','AQUEC SOLAR','2025-08-21',NULL),(170,'Vitor','555391611309','AQUEC SOLAR','2025-08-21',NULL),(171,'Janice Caceres','5596131870','AQUECEDORES','2025-08-25',NULL),(172,'William Alvarenga','554396320802','CURSOS','2025-08-25',NULL),(173,'Marlon Felipe','5521994595185','CURSOS','2025-08-18',NULL),(174,'Marcelo Energia Solar','555492615925','ENERGIA SOLAR','2025-08-29',NULL),(175,'Tregansin Aquec Solar','555491686959','AQUEC SOLAR','2025-08-29',NULL),(176,'Kika Aquecedores','555491586196','AQUECEDORES','2025-08-29',NULL),(177,'.','555491813047','AQUEC SOLAR','2025-08-29',NULL),(178,'Altemir Energia Assinatura','555496916571','AQUEC SOLAR','2025-08-29',NULL),(179,'Laissa Aquec - 21L','555481610508','AQUECEDORES','2025-09-01',NULL),(180,'Daniel Curdoglo','5515991783294','OUTROS','2025-09-01',NULL),(182,'Laiza Energia Solar','555491649940','ENERGIA SOLAR','2025-09-12',NULL),(183,'. Piscinas Smatec','554999330088','AQUEC SOLAR','2025-09-21',NULL),(184,'. Energia Monte Pasqual','555196885905','ENERGIA SOLAR','2025-09-12',NULL),(185,'Jardel energia Solar Farroupilha','555496358908','ENERGIA SOLAR','2025-09-12',NULL),(187,'- Aquecimento Piscina Caxias','555481290300','AQUEC SOLAR','2025-09-24',NULL),(188,'Roberto Capellari','555492774141','OUTROS','2025-09-24',NULL),(189,'Sandro Monteiro','555484192369','ENERGIA SOLAR','2025-08-24',NULL),(190,'Alisson','555499701673','ENERGIA SOLAR','2025-09-24',NULL),(191,'Fabiano Aquec Solar POA','555183212223','AQUEC SOLAR','2025-09-24',NULL),(192,'Daiane','555496505642','AQUEC SOLAR','2025-09-24',NULL),(193,'- Placas Solares','555484378403','ENERGIA SOLAR','2025-09-24',NULL),(194,'Estevao Radaelli','555499879723','AQUEC SOLAR','2025-09-24',NULL),(195,'Joao Aquecedor','555481128637','AQUECEDORES','2025-09-24',NULL),(196,'Joao Sales','555499763601','ENERGIA SOLAR','2025-09-24',NULL),(197,'Fernanda','555198886693','AQUEC SOLAR','2025-09-25',NULL),(198,'ThermoHeat','555189170957','OUTROS','2025-10-07',NULL),(199,'Patricia','555198657060','AQUECEDORES','2025-10-07',NULL),(200,'Carlos','554891070477','OUTROS','2025-10-07',NULL),(201,'Vinicius','555496375151','OUTROS','2025-10-07',NULL),(202,'.','5521997353987','OUTROS','2025-10-07',NULL),(203,'Diego','555499100181','AQUEC SOLAR','2025-10-07',NULL),(204,'Gilberto','555499192929','ENERGIA SOLAR','2025-10-07',NULL),(205,'Ilhandro','5554922258678','AQUECEDORES','2025-10-07',NULL),(206,'Neli Schneider','555499161692','ENERGIA SOLAR','2025-10-07',NULL),(207,'Bruno','5599246411','ENERGIA SOLAR','2025-10-07',NULL),(208,'Erick','555181053082','AQUECEDORES','2025-10-07',NULL),(209,'Nelson Tranfer','555499113880','ENERGIA SOLAR','2025-10-07',NULL),(210,'Elide Gn-Aq','559293685838','AQUECEDORES','2025-10-07',NULL),(211,'Giovani Energia Solar','555499779547','ENERGIA SOLAR','2025-10-10',NULL),(213,'Jose Marcos Pinto Colussi','555496170075','AQUEC SOLAR','2025-10-20',NULL),(214,'.','554497532765','AQUEC SOLAR','2025-10-20',NULL),(215,'Giovani','555496120582','ENERGIA SOLAR','2025-10-20',NULL),(216,'Pedro','555496604877','ENERGIA SOLAR','2025-10-20',NULL),(217,'Casagrande','555499541445','ENERGIA SOLAR','2025-10-20',NULL),(218,'Alcir Denardi','555492364353','ENERGIA SOLAR','2025-10-20',NULL),(219,'Jessica','555496595667','AQUECEDORES','2025-10-20',NULL),(221,'.','555491241893','OUTROS','2025-10-28',NULL),(222,'Rudi','555496140371','AQUEC SOLAR','2025-10-28',NULL),(223,'Leirivan','5511915154862','AQUEC SOLAR','2025-10-28',NULL),(224,'.','555198496618','AQUEC SOLAR','2025-10-28',NULL),(226,'.','55559516674','OUTROS','2025-10-28',NULL),(227,'Rosiane','555191504179','AQUECEDORES','2025-10-28',NULL),(228,'Pimentel','555491188669','AQUEC SOLAR','2025-10-28',NULL),(229,'Felipe','555497098621','ENERGIA SOLAR','2025-11-11',NULL),(230,'Jessica','555496595667','AQUECEDORES','2025-11-11',NULL),(231,'Lucia Sena','5512983036422','OUTROS','2025-11-11',NULL),(232,'Tiago passetti','555499918169','AQUEC SOLAR','2025-11-11',NULL),(233,'Cesar','555191788399','AQUEC SOLAR','2025-11-11',NULL),(234,'Itacir Hotel Nova Roma','555484178015','AQUEC SOLAR','2025-11-11',NULL),(235,'Elizagenla','556596656265','AQUECEDORES','2025-11-11',NULL),(236,'Luiza','555197853032','ENERGIA SOLAR','2025-11-11',NULL),(237,'Denilson Palandi','555496311926','ENERGIA SOLAR','2025-11-11',NULL),(239,'.','555491946576','AQUECEDORES','2025-11-11',NULL),(240,'.','555193114298','OUTROS','2025-11-11',NULL),(241,'Alceu','555481237304','AQUECEDORES','2025-11-11',NULL),(242,'Jean Aq Solar','555496812067','AQUEC SOLAR','2025-11-11',NULL),(243,'Tania Grupo Ideia','555493997676','AQUECEDORES','2025-11-18',NULL),(244,'Victoria Baldin Silvestrin','555496947594','AQUEC SOLAR','2025-11-18',NULL),(245,'Maura - Aquecedor','555499684750','AQUECEDORES','2025-11-18',NULL),(246,'Arlindo Spinelli','555499744739','AQUECEDORES','2025-11-19',NULL),(247,'Alexandre','555181001570','OUTROS','2025-11-19',NULL),(248,'Nete','555481050610','OUTROS','2025-11-19',NULL),(249,'Loiva Bomba Calor','555481195619','OUTROS','2025-11-24',NULL),(250,'Almir','555499867595','AQUEC SOLAR','2025-11-24',NULL),(251,'Marcos','555499113801','OUTROS','2025-11-26',NULL),(252,'Marloni','555496931558','OUTROS','2025-11-26',NULL),(253,'Rafael Matte','555499283142','AQUEC SOLAR','2025-11-26',NULL),(255,'Marloni','555496931558','ENERGIA SOLAR','2025-11-26',NULL),(256,'Junior','555180591543','ENERGIA SOLAR','2025-11-26',NULL),(257,'Moacir','555499489077','OUTROS','2025-11-26',NULL),(258,'Edson','555496441369','OUTROS','2025-11-26',NULL),(259,'Loiva Carvalho','555481195619','OUTROS','2025-11-26',NULL),(260,'Marcelo','555496888409','ENERGIA SOLAR','2025-12-01',NULL),(261,'Jonathan','555499604141','AQUEC SOLAR','2025-12-01',NULL),(262,'Daiane Menegol','555496015054','OUTROS','2025-12-01',NULL),(263,'Filipe','555484257004','AQUECEDORES','2025-12-08',NULL),(264,'Iva','553198621284','AQUEC SOLAR','2025-12-08',NULL),(265,'Leonardo Meneghel','55549974491','AQUEC SOLAR','2025-12-08',NULL),(266,'Emporio Q Peixe Bento Gonçalves','555492754111','AQUECEDORES','2025-12-08',NULL),(267,'Charles Canci','555491484471','AQUECEDORES','2025-12-08',NULL);
/*!40000 ALTER TABLE `leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `memory_by_host_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_by_host_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `memory_by_host_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `memory_by_host_by_current_bytes` AS SELECT 
 1 AS `host`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_by_thread_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_by_thread_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `memory_by_thread_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `memory_by_thread_by_current_bytes` AS SELECT 
 1 AS `thread_id`,
 1 AS `user`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_by_user_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_by_user_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `memory_by_user_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `memory_by_user_by_current_bytes` AS SELECT 
 1 AS `user`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_global_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_global_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `memory_global_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `memory_global_by_current_bytes` AS SELECT 
 1 AS `event_name`,
 1 AS `current_count`,
 1 AS `current_alloc`,
 1 AS `current_avg_alloc`,
 1 AS `high_count`,
 1 AS `high_alloc`,
 1 AS `high_avg_alloc`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_global_total`
--

DROP TABLE IF EXISTS `memory_global_total`;
/*!50001 DROP VIEW IF EXISTS `memory_global_total`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `memory_global_total` AS SELECT 
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `mensagens_enviadas`
--

DROP TABLE IF EXISTS `mensagens_enviadas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mensagens_enviadas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `entity_id` int NOT NULL,
  `entity_type` varchar(20) NOT NULL,
  `dias_key` int NOT NULL,
  `data_envio` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_unique_message` (`entity_id`,`entity_type`,`dias_key`)
) ENGINE=InnoDB AUTO_INCREMENT=1353 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensagens_enviadas`
--

LOCK TABLES `mensagens_enviadas` WRITE;
/*!40000 ALTER TABLE `mensagens_enviadas` DISABLE KEYS */;
INSERT INTO `mensagens_enviadas` VALUES (1,1,'CLIENTE',0,'2025-06-09 14:47:42'),(2,1,'LEAD',0,'2025-06-09 14:48:12'),(3,2,'CLIENTE',0,'2025-06-09 14:56:31'),(4,2,'CLIENTE',30,'2025-06-09 15:28:23'),(5,73,'CLIENTE',30,'2025-06-09 15:42:53'),(6,74,'CLIENTE',30,'2025-06-09 15:43:28'),(7,279,'CLIENTE',1000,'2025-06-09 15:44:04'),(8,348,'CLIENTE',1000,'2025-06-09 15:44:39'),(9,1,'LEAD',1,'2025-06-10 13:21:34'),(10,2,'LEAD',1,'2025-06-10 16:08:08'),(11,3,'LEAD',1,'2025-06-10 17:15:31'),(12,4,'LEAD',1,'2025-06-10 17:26:14'),(13,394,'CLIENTE',0,'2025-06-10 17:31:49'),(14,393,'CLIENTE',0,'2025-06-10 17:35:55'),(15,392,'CLIENTE',0,'2025-06-10 17:41:31'),(16,169,'CLIENTE',30,'2025-06-11 13:14:48'),(17,280,'CLIENTE',1005,'2025-06-11 13:15:24'),(18,5,'LEAD',1,'2025-06-11 13:16:01'),(19,6,'LEAD',0,'2025-06-11 15:56:54'),(20,7,'LEAD',0,'2025-06-11 16:22:31'),(21,395,'CLIENTE',0,'2025-06-11 16:38:06'),(22,396,'CLIENTE',0,'2025-06-11 16:38:42'),(23,231,'CLIENTE',30,'2025-06-12 14:23:24'),(24,348,'CLIENTE',1005,'2025-06-12 14:24:00'),(25,7,'LEAD',1,'2025-06-12 14:24:37'),(26,8,'LEAD',1,'2025-06-12 14:25:14'),(27,9,'LEAD',1,'2025-06-12 14:25:49'),(28,10,'LEAD',1,'2025-06-12 14:26:25'),(29,11,'LEAD',1,'2025-06-12 14:27:00'),(30,12,'LEAD',1,'2025-06-12 15:32:49'),(31,13,'LEAD',1,'2025-06-12 15:33:26'),(32,14,'LEAD',1,'2025-06-12 15:34:03'),(33,397,'CLIENTE',0,'2025-06-12 16:19:39'),(34,400,'CLIENTE',0,'2025-06-12 16:27:32'),(35,402,'CLIENTE',0,'2025-06-12 16:36:33'),(36,403,'CLIENTE',0,'2025-06-12 16:49:02'),(37,406,'CLIENTE',0,'2025-06-12 17:04:24'),(38,227,'CLIENTE',340,'2025-06-13 13:09:31'),(39,228,'CLIENTE',340,'2025-06-13 13:10:08'),(40,229,'CLIENTE',340,'2025-06-13 13:10:45'),(41,278,'CLIENTE',1000,'2025-06-13 13:11:21'),(42,279,'CLIENTE',1005,'2025-06-13 13:11:56'),(43,412,'CLIENTE',330,'2025-06-13 14:45:19'),(44,414,'CLIENTE',1000,'2025-06-13 15:10:36'),(46,415,'CLIENTE',1000,'2025-06-13 15:12:33'),(47,222,'CLIENTE',340,'2025-06-16 14:17:41'),(48,223,'CLIENTE',340,'2025-06-16 14:18:18'),(49,224,'CLIENTE',340,'2025-06-16 14:18:54'),(50,225,'CLIENTE',340,'2025-06-16 14:19:31'),(51,226,'CLIENTE',340,'2025-06-16 14:20:08'),(52,232,'CLIENTE',30,'2025-06-16 14:20:45'),(53,233,'CLIENTE',30,'2025-06-16 14:21:21'),(54,275,'CLIENTE',1000,'2025-06-16 14:21:58'),(55,276,'CLIENTE',1000,'2025-06-16 14:22:35'),(56,277,'CLIENTE',1000,'2025-06-16 14:23:12'),(57,15,'LEAD',1,'2025-06-16 14:23:49'),(58,16,'LEAD',1,'2025-06-16 14:24:25'),(59,17,'LEAD',1,'2025-06-16 14:25:02'),(60,18,'LEAD',1,'2025-06-16 14:25:39'),(61,19,'LEAD',1,'2025-06-16 14:26:15'),(62,20,'LEAD',1,'2025-06-16 14:26:52'),(63,21,'LEAD',1,'2025-06-16 14:27:29'),(64,22,'LEAD',1,'2025-06-16 14:28:06'),(65,23,'LEAD',1,'2025-06-16 14:28:43'),(66,24,'LEAD',1,'2025-06-16 14:29:20'),(67,25,'LEAD',1,'2025-06-16 14:29:56'),(68,26,'LEAD',1,'2025-06-16 14:30:33'),(69,27,'LEAD',1,'2025-06-16 14:31:10'),(70,28,'LEAD',1,'2025-06-16 14:31:46'),(71,29,'LEAD',1,'2025-06-16 14:32:23'),(72,30,'LEAD',1,'2025-06-16 14:33:00'),(73,31,'LEAD',1,'2025-06-16 14:33:36'),(74,32,'LEAD',1,'2025-06-16 14:34:13'),(75,33,'LEAD',1,'2025-06-16 14:34:50'),(76,34,'LEAD',1,'2025-06-16 14:35:26'),(77,35,'LEAD',1,'2025-06-16 14:36:03'),(78,37,'LEAD',1,'2025-06-16 14:36:40'),(79,38,'LEAD',1,'2025-06-16 14:37:17'),(80,39,'LEAD',1,'2025-06-16 14:37:53'),(81,40,'LEAD',1,'2025-06-16 14:38:30'),(82,41,'LEAD',1,'2025-06-16 14:39:07'),(83,42,'LEAD',1,'2025-06-16 14:39:43'),(84,43,'LEAD',1,'2025-06-16 14:40:20'),(85,44,'LEAD',1,'2025-06-16 14:40:57'),(86,45,'LEAD',1,'2025-06-16 14:41:33'),(87,46,'LEAD',1,'2025-06-16 14:42:10'),(88,47,'LEAD',1,'2025-06-16 14:42:47'),(89,48,'LEAD',1,'2025-06-16 14:43:23'),(90,49,'LEAD',1,'2025-06-16 14:44:00'),(91,416,'CLIENTE',0,'2025-06-16 15:50:01'),(92,417,'CLIENTE',0,'2025-06-16 15:50:37'),(93,419,'CLIENTE',0,'2025-06-16 15:51:14'),(94,219,'CLIENTE',340,'2025-06-17 13:11:38'),(95,420,'CLIENTE',0,'2025-06-17 13:22:16'),(96,421,'CLIENTE',0,'2025-06-17 13:27:52'),(97,422,'CLIENTE',0,'2025-06-17 13:33:29'),(98,50,'LEAD',1,'2025-06-17 15:02:18'),(99,51,'LEAD',1,'2025-06-17 15:02:55'),(100,52,'LEAD',1,'2025-06-17 15:03:32'),(101,53,'LEAD',1,'2025-06-17 15:04:08'),(102,54,'LEAD',1,'2025-06-17 15:04:45'),(103,55,'LEAD',1,'2025-06-17 15:05:22'),(104,423,'CLIENTE',0,'2025-06-17 17:33:27'),(105,424,'CLIENTE',0,'2025-06-17 17:34:03'),(106,278,'CLIENTE',1005,'2025-06-18 13:17:49'),(107,415,'CLIENTE',1005,'2025-06-18 13:18:26'),(108,15,'LEAD',5,'2025-06-18 13:20:26'),(109,16,'LEAD',5,'2025-06-18 13:21:02'),(110,17,'LEAD',5,'2025-06-18 13:21:39'),(111,18,'LEAD',5,'2025-06-18 13:22:16'),(112,19,'LEAD',5,'2025-06-18 13:22:52'),(113,20,'LEAD',5,'2025-06-18 13:23:29'),(114,21,'LEAD',5,'2025-06-18 13:24:06'),(115,22,'LEAD',5,'2025-06-18 13:24:43'),(116,23,'LEAD',5,'2025-06-18 13:25:19'),(117,24,'LEAD',5,'2025-06-18 13:25:56'),(118,25,'LEAD',5,'2025-06-18 13:26:33'),(119,26,'LEAD',5,'2025-06-18 13:27:10'),(120,27,'LEAD',5,'2025-06-18 13:27:46'),(121,28,'LEAD',5,'2025-06-18 13:28:23'),(122,29,'LEAD',5,'2025-06-18 13:29:00'),(123,30,'LEAD',5,'2025-06-18 13:29:36'),(124,31,'LEAD',5,'2025-06-18 13:30:13'),(125,32,'LEAD',5,'2025-06-18 13:30:50'),(126,33,'LEAD',5,'2025-06-18 13:31:26'),(127,34,'LEAD',5,'2025-06-18 13:32:03'),(128,35,'LEAD',5,'2025-06-18 13:32:40'),(129,37,'LEAD',5,'2025-06-18 13:33:16'),(130,38,'LEAD',5,'2025-06-18 13:33:53'),(131,39,'LEAD',5,'2025-06-18 13:34:30'),(132,40,'LEAD',5,'2025-06-18 13:35:06'),(133,41,'LEAD',5,'2025-06-18 13:35:43'),(134,42,'LEAD',5,'2025-06-18 13:36:20'),(135,43,'LEAD',5,'2025-06-18 13:36:56'),(136,45,'LEAD',5,'2025-06-18 13:37:33'),(137,46,'LEAD',5,'2025-06-18 13:38:10'),(138,47,'LEAD',5,'2025-06-18 13:38:46'),(139,48,'LEAD',5,'2025-06-18 13:39:23'),(140,49,'LEAD',5,'2025-06-18 13:40:00'),(141,56,'LEAD',1,'2025-06-18 17:40:13'),(142,218,'CLIENTE',340,'2025-06-20 13:00:09'),(143,415,'CLIENTE',2,'2025-06-20 14:24:56'),(144,415,'CLIENTE',3,'2025-06-20 14:34:05'),(145,425,'CLIENTE',2,'2025-06-20 14:42:55'),(146,426,'CLIENTE',0,'2025-06-20 16:59:44'),(147,427,'CLIENTE',0,'2025-06-20 17:00:19'),(148,428,'CLIENTE',0,'2025-06-20 17:01:27'),(149,213,'CLIENTE',340,'2025-06-23 13:01:34'),(150,215,'CLIENTE',340,'2025-06-23 13:02:11'),(151,216,'CLIENTE',340,'2025-06-23 13:02:47'),(152,217,'CLIENTE',340,'2025-06-23 13:03:24'),(153,273,'CLIENTE',1000,'2025-06-23 13:04:01'),(154,274,'CLIENTE',1000,'2025-06-23 13:04:38'),(155,275,'CLIENTE',1005,'2025-06-23 13:05:14'),(156,276,'CLIENTE',1005,'2025-06-23 13:05:51'),(157,329,'CLIENTE',30,'2025-06-23 13:06:28'),(158,330,'CLIENTE',30,'2025-06-23 13:07:05'),(159,331,'CLIENTE',30,'2025-06-23 13:07:42'),(160,15,'LEAD',10,'2025-06-23 13:08:19'),(161,16,'LEAD',10,'2025-06-23 13:08:56'),(162,17,'LEAD',10,'2025-06-23 13:09:32'),(163,18,'LEAD',10,'2025-06-23 13:10:09'),(164,19,'LEAD',10,'2025-06-23 13:10:46'),(165,20,'LEAD',10,'2025-06-23 13:11:22'),(166,21,'LEAD',10,'2025-06-23 13:11:59'),(167,22,'LEAD',10,'2025-06-23 13:12:36'),(168,23,'LEAD',10,'2025-06-23 13:13:12'),(169,24,'LEAD',10,'2025-06-23 13:13:49'),(170,25,'LEAD',10,'2025-06-23 13:19:31'),(171,26,'LEAD',10,'2025-06-23 13:23:22'),(172,27,'LEAD',10,'2025-06-23 13:23:59'),(173,28,'LEAD',10,'2025-06-23 13:24:36'),(174,29,'LEAD',10,'2025-06-23 13:25:12'),(175,30,'LEAD',10,'2025-06-23 13:25:49'),(176,31,'LEAD',10,'2025-06-23 13:26:26'),(177,32,'LEAD',10,'2025-06-23 13:27:02'),(178,33,'LEAD',10,'2025-06-23 13:36:35'),(179,34,'LEAD',10,'2025-06-23 13:37:11'),(180,35,'LEAD',10,'2025-06-23 13:37:48'),(181,37,'LEAD',10,'2025-06-23 13:38:25'),(182,38,'LEAD',10,'2025-06-23 13:39:01'),(183,39,'LEAD',10,'2025-06-23 13:39:38'),(184,40,'LEAD',10,'2025-06-23 13:40:15'),(185,41,'LEAD',10,'2025-06-23 13:40:51'),(186,42,'LEAD',10,'2025-06-23 13:41:28'),(187,43,'LEAD',10,'2025-06-23 13:49:27'),(188,45,'LEAD',10,'2025-06-23 13:50:03'),(189,46,'LEAD',10,'2025-06-23 13:50:40'),(190,47,'LEAD',10,'2025-06-23 13:51:17'),(191,48,'LEAD',10,'2025-06-23 13:51:53'),(192,49,'LEAD',10,'2025-06-23 13:52:30'),(193,50,'LEAD',5,'2025-06-23 13:53:07'),(194,51,'LEAD',5,'2025-06-23 13:53:43'),(195,52,'LEAD',5,'2025-06-23 14:00:16'),(196,53,'LEAD',5,'2025-06-23 14:00:52'),(197,54,'LEAD',5,'2025-06-23 14:01:29'),(198,55,'LEAD',5,'2025-06-23 14:02:06'),(199,56,'LEAD',5,'2025-06-23 14:02:43'),(200,429,'CLIENTE',0,'2025-06-23 14:13:01'),(201,430,'CLIENTE',0,'2025-06-23 14:13:37'),(202,431,'CLIENTE',0,'2025-06-23 16:35:29'),(203,212,'CLIENTE',340,'2025-06-24 12:59:01'),(204,272,'CLIENTE',1000,'2025-06-24 12:59:38'),(205,432,'CLIENTE',0,'2025-06-24 13:14:11'),(206,57,'LEAD',1,'2025-06-24 13:14:48'),(207,58,'LEAD',1,'2025-06-24 13:15:24'),(208,59,'LEAD',1,'2025-06-24 13:16:01'),(209,60,'LEAD',1,'2025-06-24 17:10:17'),(210,61,'LEAD',1,'2025-06-24 17:10:54'),(211,62,'LEAD',1,'2025-06-24 17:11:31'),(212,63,'LEAD',1,'2025-06-24 17:12:07'),(213,64,'LEAD',1,'2025-06-24 17:12:44'),(214,65,'LEAD',1,'2025-06-24 17:13:21'),(215,66,'LEAD',1,'2025-06-24 17:13:58'),(216,67,'LEAD',1,'2025-06-24 17:14:35'),(217,68,'LEAD',1,'2025-06-24 17:15:11'),(218,69,'LEAD',1,'2025-06-24 17:15:48'),(219,70,'LEAD',1,'2025-06-24 17:16:25'),(220,71,'LEAD',1,'2025-06-24 17:17:01'),(221,72,'LEAD',1,'2025-06-24 17:17:38'),(222,73,'LEAD',1,'2025-06-24 17:18:15'),(223,74,'LEAD',1,'2025-06-24 17:18:51'),(224,75,'LEAD',1,'2025-06-24 17:19:28'),(225,76,'LEAD',1,'2025-06-24 17:20:05'),(226,77,'LEAD',1,'2025-06-24 17:20:42'),(227,78,'LEAD',1,'2025-06-24 17:21:18'),(228,200,'CLIENTE',330,'2025-06-25 13:00:32'),(229,433,'CLIENTE',0,'2025-06-25 13:31:09'),(230,434,'CLIENTE',0,'2025-06-25 13:31:46'),(231,79,'LEAD',0,'2025-06-25 16:01:56'),(232,80,'LEAD',0,'2025-06-25 16:02:33'),(233,81,'LEAD',0,'2025-06-25 16:03:10'),(234,82,'LEAD',0,'2025-06-25 16:03:47'),(235,83,'LEAD',0,'2025-06-25 16:04:23'),(236,84,'LEAD',0,'2025-06-25 16:05:00'),(237,85,'LEAD',0,'2025-06-25 16:05:37'),(238,86,'LEAD',0,'2025-06-25 16:06:14'),(239,87,'LEAD',0,'2025-06-25 16:06:50'),(240,88,'LEAD',0,'2025-06-25 16:07:27'),(241,89,'LEAD',0,'2025-06-25 16:09:35'),(242,333,'CLIENTE',30,'2025-06-26 13:06:28'),(243,334,'CLIENTE',30,'2025-06-26 13:07:05'),(244,456,'CLIENTE',330,'2025-06-26 13:07:42'),(245,50,'LEAD',10,'2025-06-26 13:08:18'),(246,51,'LEAD',10,'2025-06-26 13:08:55'),(247,52,'LEAD',10,'2025-06-26 13:09:32'),(248,53,'LEAD',10,'2025-06-26 13:10:09'),(249,54,'LEAD',10,'2025-06-26 13:10:45'),(250,55,'LEAD',10,'2025-06-26 13:11:22'),(251,210,'CLIENTE',340,'2025-06-27 13:13:52'),(252,211,'CLIENTE',340,'2025-06-27 13:14:29'),(253,274,'CLIENTE',1005,'2025-06-27 13:15:06'),(254,335,'CLIENTE',30,'2025-06-27 13:15:43'),(255,336,'CLIENTE',30,'2025-06-27 13:16:20'),(256,56,'LEAD',10,'2025-06-27 13:16:57'),(257,90,'LEAD',0,'2025-06-27 13:17:34'),(258,476,'CLIENTE',0,'2025-06-27 14:48:24'),(259,91,'LEAD',0,'2025-06-27 16:35:03'),(260,92,'LEAD',0,'2025-06-27 16:35:40'),(261,93,'LEAD',0,'2025-06-27 16:36:17'),(262,94,'LEAD',0,'2025-06-27 16:36:54'),(263,95,'LEAD',0,'2025-06-27 16:37:30'),(264,96,'LEAD',0,'2025-06-27 16:38:07'),(265,97,'LEAD',0,'2025-06-27 16:38:44'),(266,98,'LEAD',0,'2025-06-27 16:39:21'),(267,200,'CLIENTE',335,'2025-06-30 13:06:22'),(268,202,'CLIENTE',340,'2025-06-30 13:06:58'),(269,205,'CLIENTE',340,'2025-06-30 13:07:35'),(270,206,'CLIENTE',340,'2025-06-30 13:08:12'),(271,207,'CLIENTE',340,'2025-06-30 13:08:49'),(272,208,'CLIENTE',340,'2025-06-30 13:09:25'),(273,209,'CLIENTE',340,'2025-06-30 13:10:02'),(274,271,'CLIENTE',1000,'2025-06-30 13:10:39'),(275,272,'CLIENTE',1005,'2025-06-30 13:11:15'),(276,273,'CLIENTE',1005,'2025-06-30 13:11:52'),(277,337,'CLIENTE',30,'2025-06-30 13:12:29'),(278,338,'CLIENTE',30,'2025-06-30 13:13:06'),(279,339,'CLIENTE',30,'2025-06-30 13:13:43'),(280,340,'CLIENTE',30,'2025-06-30 13:14:20'),(281,469,'CLIENTE',635,'2025-06-30 13:14:57'),(282,15,'LEAD',15,'2025-06-30 13:15:32'),(283,16,'LEAD',15,'2025-06-30 13:16:08'),(284,17,'LEAD',15,'2025-06-30 13:17:20'),(285,18,'LEAD',15,'2025-06-30 13:17:56'),(286,19,'LEAD',15,'2025-06-30 13:18:31'),(287,20,'LEAD',15,'2025-06-30 13:19:07'),(288,21,'LEAD',15,'2025-06-30 13:19:42'),(289,22,'LEAD',15,'2025-06-30 13:20:18'),(290,23,'LEAD',15,'2025-06-30 13:20:53'),(291,24,'LEAD',15,'2025-06-30 13:21:28'),(292,25,'LEAD',15,'2025-06-30 13:22:04'),(293,26,'LEAD',15,'2025-06-30 13:22:39'),(294,28,'LEAD',15,'2025-06-30 13:23:15'),(295,29,'LEAD',15,'2025-06-30 13:23:50'),(296,30,'LEAD',15,'2025-06-30 13:24:26'),(297,31,'LEAD',15,'2025-06-30 13:25:01'),(298,32,'LEAD',15,'2025-06-30 13:25:37'),(299,33,'LEAD',15,'2025-06-30 13:26:12'),(300,34,'LEAD',15,'2025-06-30 13:26:48'),(301,35,'LEAD',15,'2025-06-30 13:27:23'),(302,37,'LEAD',15,'2025-06-30 13:27:59'),(303,38,'LEAD',15,'2025-06-30 13:28:34'),(304,39,'LEAD',15,'2025-06-30 13:29:10'),(305,40,'LEAD',15,'2025-06-30 13:29:45'),(306,41,'LEAD',15,'2025-06-30 13:30:20'),(307,42,'LEAD',15,'2025-06-30 13:30:56'),(308,45,'LEAD',15,'2025-06-30 13:31:31'),(309,46,'LEAD',15,'2025-06-30 13:32:07'),(310,47,'LEAD',15,'2025-06-30 13:32:42'),(311,48,'LEAD',15,'2025-06-30 13:33:18'),(312,49,'LEAD',15,'2025-06-30 13:33:53'),(313,57,'LEAD',5,'2025-06-30 13:38:44'),(314,58,'LEAD',5,'2025-06-30 13:39:46'),(315,59,'LEAD',5,'2025-06-30 13:40:23'),(316,60,'LEAD',5,'2025-06-30 13:41:00'),(317,61,'LEAD',5,'2025-06-30 13:41:37'),(318,62,'LEAD',5,'2025-06-30 13:42:14'),(319,63,'LEAD',5,'2025-06-30 13:42:50'),(320,64,'LEAD',5,'2025-06-30 13:43:27'),(321,65,'LEAD',5,'2025-06-30 13:44:04'),(322,66,'LEAD',5,'2025-06-30 13:44:41'),(323,67,'LEAD',5,'2025-06-30 13:45:17'),(324,68,'LEAD',5,'2025-06-30 13:45:54'),(325,69,'LEAD',5,'2025-06-30 13:46:31'),(326,70,'LEAD',5,'2025-06-30 13:47:08'),(327,71,'LEAD',5,'2025-06-30 13:47:44'),(328,72,'LEAD',5,'2025-06-30 13:48:21'),(329,73,'LEAD',5,'2025-06-30 13:48:58'),(330,74,'LEAD',5,'2025-06-30 13:49:34'),(331,75,'LEAD',5,'2025-06-30 13:50:11'),(332,76,'LEAD',5,'2025-06-30 13:50:48'),(333,77,'LEAD',5,'2025-06-30 13:51:24'),(334,78,'LEAD',5,'2025-06-30 13:52:01'),(335,79,'LEAD',5,'2025-06-30 13:52:38'),(336,80,'LEAD',5,'2025-06-30 13:53:14'),(337,81,'LEAD',5,'2025-06-30 13:53:51'),(338,82,'LEAD',5,'2025-06-30 13:54:28'),(339,83,'LEAD',5,'2025-06-30 13:55:05'),(340,84,'LEAD',5,'2025-06-30 13:55:41'),(341,85,'LEAD',5,'2025-06-30 13:56:18'),(342,86,'LEAD',5,'2025-06-30 13:56:55'),(343,87,'LEAD',5,'2025-06-30 13:57:31'),(344,89,'LEAD',5,'2025-06-30 13:58:08'),(345,477,'CLIENTE',0,'2025-06-30 14:18:45'),(346,478,'CLIENTE',0,'2025-06-30 14:19:22'),(347,479,'CLIENTE',0,'2025-06-30 14:24:59'),(348,99,'LEAD',0,'2025-06-30 15:35:37'),(349,100,'LEAD',0,'2025-06-30 15:41:14'),(350,101,'LEAD',0,'2025-06-30 15:41:51'),(351,102,'LEAD',0,'2025-06-30 15:47:28'),(352,103,'LEAD',0,'2025-06-30 15:48:05'),(353,480,'CLIENTE',0,'2025-06-30 16:03:42'),(354,104,'LEAD',0,'2025-06-30 16:09:19'),(355,203,'CLIENTE',340,'2025-07-01 13:00:53'),(356,204,'CLIENTE',340,'2025-07-01 13:01:30'),(357,341,'CLIENTE',30,'2025-07-01 13:02:06'),(358,342,'CLIENTE',30,'2025-07-01 13:02:43'),(359,456,'CLIENTE',335,'2025-07-01 13:03:20'),(360,50,'LEAD',15,'2025-07-01 13:03:57'),(361,51,'LEAD',15,'2025-07-01 13:04:34'),(362,52,'LEAD',15,'2025-07-01 13:05:11'),(363,53,'LEAD',15,'2025-07-01 13:05:48'),(364,54,'LEAD',15,'2025-07-01 13:06:24'),(365,55,'LEAD',15,'2025-07-01 13:07:01'),(366,481,'CLIENTE',0,'2025-07-01 16:45:42'),(367,343,'CLIENTE',30,'2025-07-02 13:09:58'),(368,344,'CLIENTE',30,'2025-07-02 13:10:35'),(369,345,'CLIENTE',30,'2025-07-02 13:11:12'),(370,56,'LEAD',15,'2025-07-02 13:11:49'),(371,90,'LEAD',5,'2025-07-02 13:12:25'),(372,91,'LEAD',5,'2025-07-02 13:13:02'),(373,92,'LEAD',5,'2025-07-02 13:13:39'),(374,93,'LEAD',5,'2025-07-02 13:14:16'),(375,94,'LEAD',5,'2025-07-02 13:14:52'),(376,95,'LEAD',5,'2025-07-02 13:15:29'),(377,96,'LEAD',5,'2025-07-02 13:16:06'),(378,97,'LEAD',5,'2025-07-02 13:16:43'),(379,98,'LEAD',5,'2025-07-02 13:17:19'),(380,482,'CLIENTE',0,'2025-07-02 15:57:57'),(381,271,'CLIENTE',1005,'2025-07-03 12:58:43'),(382,57,'LEAD',10,'2025-07-03 12:59:19'),(383,58,'LEAD',10,'2025-07-03 12:59:56'),(384,59,'LEAD',10,'2025-07-03 13:00:33'),(385,60,'LEAD',10,'2025-07-03 13:01:10'),(386,61,'LEAD',10,'2025-07-03 13:01:47'),(387,62,'LEAD',10,'2025-07-03 13:02:24'),(388,63,'LEAD',10,'2025-07-03 13:03:01'),(389,64,'LEAD',10,'2025-07-03 13:03:38'),(390,65,'LEAD',10,'2025-07-03 13:04:15'),(391,66,'LEAD',10,'2025-07-03 13:04:51'),(392,67,'LEAD',10,'2025-07-03 13:05:28'),(393,68,'LEAD',10,'2025-07-03 13:06:05'),(394,69,'LEAD',10,'2025-07-03 13:06:41'),(395,70,'LEAD',10,'2025-07-03 13:07:18'),(396,71,'LEAD',10,'2025-07-03 13:07:55'),(397,72,'LEAD',10,'2025-07-03 13:08:31'),(398,73,'LEAD',10,'2025-07-03 13:09:08'),(399,74,'LEAD',10,'2025-07-03 13:09:45'),(400,75,'LEAD',10,'2025-07-03 13:10:22'),(401,76,'LEAD',10,'2025-07-03 13:10:58'),(402,77,'LEAD',10,'2025-07-03 13:11:35'),(403,78,'LEAD',10,'2025-07-03 13:12:12'),(404,483,'CLIENTE',0,'2025-07-03 13:17:49'),(405,485,'CLIENTE',0,'2025-07-03 13:18:26'),(406,486,'CLIENTE',0,'2025-07-03 17:39:58'),(407,487,'CLIENTE',0,'2025-07-04 13:35:56'),(408,197,'CLIENTE',340,'2025-07-07 13:12:24'),(409,198,'CLIENTE',340,'2025-07-07 13:13:01'),(410,199,'CLIENTE',340,'2025-07-07 13:13:37'),(411,201,'CLIENTE',340,'2025-07-07 13:14:14'),(412,269,'CLIENTE',1000,'2025-07-07 13:14:51'),(413,270,'CLIENTE',1000,'2025-07-07 13:15:27'),(414,79,'LEAD',10,'2025-07-07 13:16:04'),(415,80,'LEAD',10,'2025-07-07 13:16:39'),(416,81,'LEAD',10,'2025-07-07 13:17:15'),(417,82,'LEAD',10,'2025-07-07 13:17:52'),(418,83,'LEAD',10,'2025-07-07 13:18:29'),(419,84,'LEAD',10,'2025-07-07 13:19:06'),(420,85,'LEAD',10,'2025-07-07 13:19:42'),(421,86,'LEAD',10,'2025-07-07 13:20:19'),(422,87,'LEAD',10,'2025-07-07 13:20:56'),(423,89,'LEAD',10,'2025-07-07 13:21:32'),(424,90,'LEAD',10,'2025-07-07 13:22:09'),(425,91,'LEAD',10,'2025-07-07 13:22:46'),(426,92,'LEAD',10,'2025-07-07 13:25:14'),(427,93,'LEAD',10,'2025-07-07 13:25:51'),(428,94,'LEAD',10,'2025-07-07 13:26:27'),(429,95,'LEAD',10,'2025-07-07 13:27:04'),(430,96,'LEAD',10,'2025-07-07 13:27:41'),(431,97,'LEAD',10,'2025-07-07 13:28:15'),(432,98,'LEAD',10,'2025-07-07 13:28:52'),(433,99,'LEAD',5,'2025-07-07 13:29:29'),(434,100,'LEAD',5,'2025-07-07 13:30:05'),(435,101,'LEAD',5,'2025-07-07 13:30:42'),(436,102,'LEAD',5,'2025-07-07 13:31:19'),(437,103,'LEAD',5,'2025-07-07 13:31:55'),(438,104,'LEAD',5,'2025-07-07 13:32:32'),(439,105,'LEAD',0,'2025-07-07 13:33:09'),(440,489,'CLIENTE',0,'2025-07-07 13:38:44'),(441,108,'LEAD',0,'2025-07-07 14:24:21'),(442,109,'LEAD',0,'2025-07-07 14:39:58'),(443,110,'LEAD',0,'2025-07-07 14:40:35'),(444,111,'LEAD',0,'2025-07-07 17:35:34'),(445,112,'LEAD',0,'2025-07-07 17:36:12'),(446,113,'LEAD',0,'2025-07-07 17:36:49'),(447,114,'LEAD',0,'2025-07-07 17:37:26'),(448,115,'LEAD',0,'2025-07-07 17:38:03'),(449,116,'LEAD',0,'2025-07-07 17:38:40'),(450,117,'LEAD',0,'2025-07-07 17:39:17'),(451,118,'LEAD',0,'2025-07-07 17:44:54'),(452,195,'CLIENTE',340,'2025-07-08 13:02:27'),(453,268,'CLIENTE',1000,'2025-07-08 13:03:04'),(454,57,'LEAD',15,'2025-07-08 13:03:41'),(455,58,'LEAD',15,'2025-07-08 13:04:18'),(456,59,'LEAD',15,'2025-07-08 13:04:54'),(457,60,'LEAD',15,'2025-07-08 13:05:31'),(458,61,'LEAD',15,'2025-07-08 13:06:08'),(459,62,'LEAD',15,'2025-07-08 13:06:45'),(460,63,'LEAD',15,'2025-07-08 13:07:22'),(461,65,'LEAD',15,'2025-07-08 13:07:59'),(462,66,'LEAD',15,'2025-07-08 13:08:35'),(463,67,'LEAD',15,'2025-07-08 13:09:12'),(464,68,'LEAD',15,'2025-07-08 13:09:49'),(465,69,'LEAD',15,'2025-07-08 13:10:26'),(466,70,'LEAD',15,'2025-07-08 13:11:02'),(467,71,'LEAD',15,'2025-07-08 13:11:39'),(468,72,'LEAD',15,'2025-07-08 13:12:16'),(469,73,'LEAD',15,'2025-07-08 13:12:52'),(470,74,'LEAD',15,'2025-07-08 13:13:29'),(471,76,'LEAD',15,'2025-07-08 13:14:06'),(472,77,'LEAD',15,'2025-07-08 13:14:42'),(473,78,'LEAD',15,'2025-07-08 13:15:19'),(474,107,'LEAD',0,'2025-07-08 13:15:56'),(475,490,'CLIENTE',0,'2025-07-08 13:21:32'),(476,491,'CLIENTE',0,'2025-07-08 13:27:06'),(477,106,'LEAD',5,'2025-07-09 13:04:16'),(478,119,'LEAD',0,'2025-07-09 16:45:29'),(479,392,'CLIENTE',30,'2025-07-10 13:10:49'),(480,79,'LEAD',15,'2025-07-10 13:11:32'),(481,80,'LEAD',15,'2025-07-10 13:12:10'),(482,81,'LEAD',15,'2025-07-10 13:12:46'),(483,82,'LEAD',15,'2025-07-10 13:13:23'),(484,83,'LEAD',15,'2025-07-10 13:14:00'),(485,84,'LEAD',15,'2025-07-10 13:14:37'),(486,85,'LEAD',15,'2025-07-10 13:15:13'),(487,86,'LEAD',15,'2025-07-10 13:15:50'),(488,87,'LEAD',15,'2025-07-10 13:16:27'),(489,89,'LEAD',15,'2025-07-10 13:17:03'),(490,99,'LEAD',10,'2025-07-10 13:17:40'),(491,100,'LEAD',10,'2025-07-10 13:18:17'),(492,101,'LEAD',10,'2025-07-10 13:18:54'),(493,102,'LEAD',10,'2025-07-10 13:19:31'),(494,103,'LEAD',10,'2025-07-10 13:20:07'),(495,104,'LEAD',10,'2025-07-10 13:20:44'),(496,492,'CLIENTE',0,'2025-07-10 16:46:58'),(497,493,'CLIENTE',0,'2025-07-10 16:47:35'),(498,196,'CLIENTE',340,'2025-07-11 13:06:49'),(499,267,'CLIENTE',1000,'2025-07-11 13:07:32'),(500,270,'CLIENTE',1005,'2025-07-11 13:08:09'),(501,396,'CLIENTE',30,'2025-07-11 13:08:46'),(502,92,'LEAD',15,'2025-07-11 13:09:22'),(503,494,'CLIENTE',0,'2025-07-11 14:15:00'),(504,495,'CLIENTE',0,'2025-07-11 16:13:34'),(505,193,'CLIENTE',340,'2025-07-14 13:08:01'),(506,237,'CLIENTE',1000,'2025-07-14 13:08:38'),(507,266,'CLIENTE',1000,'2025-07-14 13:09:15'),(508,268,'CLIENTE',1005,'2025-07-14 13:09:52'),(509,269,'CLIENTE',1005,'2025-07-14 13:10:29'),(510,349,'CLIENTE',1000,'2025-07-14 13:11:06'),(511,418,'CLIENTE',30,'2025-07-14 13:11:43'),(512,90,'LEAD',15,'2025-07-14 13:12:20'),(513,91,'LEAD',15,'2025-07-14 13:12:57'),(514,93,'LEAD',15,'2025-07-14 13:13:34'),(515,94,'LEAD',15,'2025-07-14 13:14:10'),(516,95,'LEAD',15,'2025-07-14 13:14:47'),(517,96,'LEAD',15,'2025-07-14 13:15:24'),(518,97,'LEAD',15,'2025-07-14 13:16:01'),(519,98,'LEAD',15,'2025-07-14 13:16:37'),(520,106,'LEAD',10,'2025-07-14 13:17:15'),(521,107,'LEAD',5,'2025-07-14 13:17:51'),(522,108,'LEAD',5,'2025-07-14 13:18:28'),(523,119,'LEAD',5,'2025-07-14 13:19:05'),(524,496,'CLIENTE',0,'2025-07-14 15:14:43'),(525,120,'LEAD',0,'2025-07-14 16:31:46'),(526,121,'LEAD',0,'2025-07-14 16:32:23'),(527,122,'LEAD',0,'2025-07-14 16:33:00'),(528,123,'LEAD',0,'2025-07-14 16:33:37'),(529,124,'LEAD',0,'2025-07-14 16:34:14'),(530,472,'CLIENTE',630,'2025-07-15 13:04:01'),(531,99,'LEAD',15,'2025-07-15 13:04:38'),(532,100,'LEAD',15,'2025-07-15 13:05:14'),(533,101,'LEAD',15,'2025-07-15 13:05:51'),(534,102,'LEAD',15,'2025-07-15 13:06:28'),(535,103,'LEAD',15,'2025-07-15 13:07:05'),(536,104,'LEAD',15,'2025-07-15 13:07:41'),(537,497,'CLIENTE',0,'2025-07-15 17:13:20'),(538,265,'CLIENTE',1000,'2025-07-16 13:03:46'),(539,267,'CLIENTE',1005,'2025-07-16 13:04:22'),(540,416,'CLIENTE',30,'2025-07-16 13:05:00'),(541,417,'CLIENTE',30,'2025-07-16 13:05:36'),(542,419,'CLIENTE',30,'2025-07-16 13:06:13'),(543,498,'CLIENTE',0,'2025-07-16 16:58:54'),(544,262,'CLIENTE',1000,'2025-07-17 13:05:13'),(545,263,'CLIENTE',1000,'2025-07-17 13:05:50'),(546,264,'CLIENTE',1000,'2025-07-17 13:06:27'),(547,420,'CLIENTE',30,'2025-07-17 13:07:04'),(548,421,'CLIENTE',30,'2025-07-17 13:07:41'),(549,422,'CLIENTE',30,'2025-07-17 13:08:17'),(550,423,'CLIENTE',30,'2025-07-17 13:08:54'),(551,424,'CLIENTE',30,'2025-07-17 13:09:31'),(552,457,'CLIENTE',30,'2025-07-17 13:10:08'),(553,108,'LEAD',10,'2025-07-17 13:10:45'),(554,109,'LEAD',10,'2025-07-17 13:11:22'),(555,110,'LEAD',10,'2025-07-17 13:11:59'),(556,111,'LEAD',10,'2025-07-17 13:12:36'),(557,112,'LEAD',10,'2025-07-17 13:13:12'),(558,113,'LEAD',10,'2025-07-17 13:13:49'),(559,114,'LEAD',10,'2025-07-17 13:14:26'),(560,115,'LEAD',10,'2025-07-17 13:15:03'),(561,116,'LEAD',10,'2025-07-17 13:15:39'),(562,118,'LEAD',10,'2025-07-17 13:16:16'),(563,499,'CLIENTE',0,'2025-07-17 13:21:53'),(564,188,'CLIENTE',340,'2025-07-18 13:02:16'),(565,190,'CLIENTE',340,'2025-07-18 13:02:53'),(566,191,'CLIENTE',340,'2025-07-18 13:03:30'),(567,192,'CLIENTE',340,'2025-07-18 13:04:07'),(568,107,'LEAD',10,'2025-07-18 13:04:44'),(569,187,'CLIENTE',340,'2025-07-21 13:01:35'),(570,189,'CLIENTE',340,'2025-07-21 13:02:12'),(571,237,'CLIENTE',1005,'2025-07-21 13:02:49'),(572,265,'CLIENTE',1005,'2025-07-21 13:03:25'),(573,266,'CLIENTE',1005,'2025-07-21 13:04:02'),(574,349,'CLIENTE',1005,'2025-07-21 13:04:39'),(575,426,'CLIENTE',30,'2025-07-21 13:05:16'),(576,428,'CLIENTE',30,'2025-07-21 13:05:53'),(577,472,'CLIENTE',635,'2025-07-21 13:06:29'),(578,105,'LEAD',10,'2025-07-21 13:07:07'),(579,106,'LEAD',15,'2025-07-21 13:07:43'),(580,119,'LEAD',10,'2025-07-21 13:08:20'),(581,120,'LEAD',5,'2025-07-21 13:08:57'),(582,261,'CLIENTE',1000,'2025-07-22 13:00:21'),(583,262,'CLIENTE',1005,'2025-07-22 13:00:58'),(584,263,'CLIENTE',1005,'2025-07-22 13:01:35'),(585,264,'CLIENTE',1005,'2025-07-22 13:02:11'),(586,108,'LEAD',15,'2025-07-22 13:02:48'),(587,109,'LEAD',15,'2025-07-22 13:03:25'),(588,110,'LEAD',15,'2025-07-22 13:04:02'),(589,111,'LEAD',15,'2025-07-22 13:04:39'),(590,112,'LEAD',15,'2025-07-22 13:05:15'),(591,113,'LEAD',15,'2025-07-22 13:05:52'),(592,114,'LEAD',15,'2025-07-22 13:06:29'),(593,115,'LEAD',15,'2025-07-22 13:07:06'),(594,116,'LEAD',15,'2025-07-22 13:07:42'),(595,118,'LEAD',15,'2025-07-22 13:08:19'),(596,500,'CLIENTE',0,'2025-07-22 13:12:21'),(597,429,'CLIENTE',30,'2025-07-23 13:02:39'),(598,430,'CLIENTE',30,'2025-07-23 13:03:16'),(599,431,'CLIENTE',30,'2025-07-23 13:03:52'),(600,107,'LEAD',15,'2025-07-23 13:04:29'),(601,179,'CLIENTE',330,'2025-07-24 13:05:12'),(602,432,'CLIENTE',30,'2025-07-24 13:05:49'),(603,105,'LEAD',15,'2025-07-24 13:06:26'),(604,119,'LEAD',15,'2025-07-24 13:07:02'),(605,120,'LEAD',10,'2025-07-24 13:07:39'),(606,121,'LEAD',10,'2025-07-24 13:08:16'),(607,122,'LEAD',10,'2025-07-24 13:08:53'),(608,123,'LEAD',10,'2025-07-24 13:09:29'),(609,124,'LEAD',10,'2025-07-24 13:10:06'),(610,126,'LEAD',1,'2025-07-24 13:10:43'),(611,127,'LEAD',1,'2025-07-24 13:11:20'),(612,128,'LEAD',1,'2025-07-24 13:11:56'),(613,129,'LEAD',1,'2025-07-24 13:12:33'),(614,130,'LEAD',1,'2025-07-24 13:13:10'),(615,132,'LEAD',1,'2025-07-24 13:13:47'),(616,133,'LEAD',1,'2025-07-24 13:14:23'),(617,134,'LEAD',1,'2025-07-24 13:15:00'),(618,135,'LEAD',1,'2025-07-24 13:15:37'),(619,136,'LEAD',1,'2025-07-24 13:16:13'),(620,501,'CLIENTE',0,'2025-07-24 13:41:51'),(621,433,'CLIENTE',30,'2025-07-25 13:02:34'),(622,434,'CLIENTE',30,'2025-07-25 13:03:11'),(623,503,'CLIENTE',0,'2025-07-25 15:34:27'),(624,186,'CLIENTE',340,'2025-07-28 13:15:54'),(625,260,'CLIENTE',1000,'2025-07-28 13:16:31'),(626,261,'CLIENTE',1005,'2025-07-28 13:17:08'),(627,449,'CLIENTE',330,'2025-07-28 13:17:45'),(628,459,'CLIENTE',330,'2025-07-28 13:18:22'),(629,476,'CLIENTE',30,'2025-07-28 13:18:58'),(630,129,'LEAD',5,'2025-07-28 13:19:35'),(631,138,'LEAD',1,'2025-07-28 13:20:12'),(632,139,'LEAD',1,'2025-07-28 13:20:49'),(633,140,'LEAD',1,'2025-07-28 13:21:26'),(634,179,'CLIENTE',335,'2025-07-29 13:03:07'),(635,183,'CLIENTE',340,'2025-07-29 13:03:44'),(636,184,'CLIENTE',340,'2025-07-29 13:04:21'),(637,185,'CLIENTE',340,'2025-07-29 13:04:58'),(638,259,'CLIENTE',1000,'2025-07-29 13:05:35'),(639,120,'LEAD',15,'2025-07-29 13:06:12'),(640,122,'LEAD',15,'2025-07-29 13:06:49'),(641,123,'LEAD',15,'2025-07-29 13:07:26'),(642,124,'LEAD',15,'2025-07-29 13:08:03'),(643,141,'LEAD',1,'2025-07-29 13:08:40'),(644,142,'LEAD',1,'2025-07-29 13:09:17'),(645,143,'LEAD',1,'2025-07-29 13:09:52'),(646,505,'CLIENTE',0,'2025-07-29 13:25:29'),(647,507,'CLIENTE',0,'2025-07-29 17:25:19'),(648,506,'CLIENTE',2025,'2025-07-29 17:29:47'),(649,508,'CLIENTE',2025,'2025-07-29 17:35:26'),(650,477,'CLIENTE',30,'2025-07-30 12:59:17'),(651,478,'CLIENTE',30,'2025-07-30 12:59:56'),(652,479,'CLIENTE',30,'2025-07-30 13:00:35'),(653,480,'CLIENTE',30,'2025-07-30 13:01:13'),(654,144,'LEAD',1,'2025-07-30 13:01:52'),(655,145,'LEAD',1,'2025-07-30 13:02:31'),(656,146,'LEAD',1,'2025-07-30 13:03:10'),(657,147,'LEAD',1,'2025-07-30 13:03:49'),(658,509,'CLIENTE',0,'2025-07-30 13:29:28'),(659,449,'CLIENTE',335,'2025-07-31 13:02:03'),(660,459,'CLIENTE',335,'2025-07-31 13:02:39'),(661,481,'CLIENTE',30,'2025-07-31 13:03:16'),(662,258,'CLIENTE',1000,'2025-08-01 13:00:40'),(663,148,'LEAD',1,'2025-08-01 13:01:17'),(664,510,'CLIENTE',0,'2025-08-01 13:16:53'),(665,511,'CLIENTE',0,'2025-08-01 16:50:47'),(666,512,'CLIENTE',0,'2025-08-01 16:53:53'),(667,166,'CLIENTE',330,'2025-08-04 12:59:52'),(668,178,'CLIENTE',340,'2025-08-04 13:00:29'),(669,180,'CLIENTE',340,'2025-08-04 13:01:06'),(670,181,'CLIENTE',340,'2025-08-04 13:01:43'),(671,182,'CLIENTE',340,'2025-08-04 13:02:20'),(672,256,'CLIENTE',1000,'2025-08-04 13:02:56'),(673,257,'CLIENTE',1000,'2025-08-04 13:03:33'),(674,259,'CLIENTE',1005,'2025-08-04 13:04:10'),(675,260,'CLIENTE',1005,'2025-08-04 13:04:47'),(676,486,'CLIENTE',30,'2025-08-04 13:05:24'),(677,487,'CLIENTE',30,'2025-08-04 13:06:01'),(678,488,'CLIENTE',30,'2025-08-04 13:06:38'),(679,489,'CLIENTE',30,'2025-08-04 13:07:12'),(680,126,'LEAD',10,'2025-08-04 13:07:49'),(681,127,'LEAD',10,'2025-08-04 13:08:26'),(682,128,'LEAD',10,'2025-08-04 13:09:03'),(683,129,'LEAD',10,'2025-08-04 13:09:40'),(684,130,'LEAD',10,'2025-08-04 13:10:17'),(685,132,'LEAD',10,'2025-08-04 13:10:53'),(686,133,'LEAD',10,'2025-08-04 13:11:30'),(687,134,'LEAD',10,'2025-08-04 13:12:07'),(688,135,'LEAD',10,'2025-08-04 13:12:44'),(689,136,'LEAD',10,'2025-08-04 13:13:20'),(690,138,'LEAD',10,'2025-08-04 13:13:57'),(691,139,'LEAD',10,'2025-08-04 13:14:34'),(692,140,'LEAD',10,'2025-08-04 13:15:11'),(693,144,'LEAD',5,'2025-08-04 13:15:47'),(694,145,'LEAD',5,'2025-08-04 13:16:24'),(695,149,'LEAD',1,'2025-08-04 13:16:59'),(696,177,'CLIENTE',340,'2025-08-05 12:59:32'),(697,151,'LEAD',1,'2025-08-05 13:00:10'),(698,152,'LEAD',1,'2025-08-05 13:00:46'),(699,513,'CLIENTE',0,'2025-08-05 16:05:26'),(700,258,'CLIENTE',1005,'2025-08-06 13:01:50'),(701,506,'CLIENTE',30,'2025-08-06 13:02:26'),(702,508,'CLIENTE',30,'2025-08-06 13:03:03'),(703,149,'LEAD',5,'2025-08-06 13:03:40'),(704,153,'LEAD',1,'2025-08-06 13:04:17'),(705,155,'LEAD',1,'2025-08-06 13:04:54'),(706,166,'CLIENTE',335,'2025-08-07 13:01:28'),(707,255,'CLIENTE',1000,'2025-08-07 13:02:05'),(708,490,'CLIENTE',30,'2025-08-07 13:02:42'),(709,491,'CLIENTE',30,'2025-08-07 13:03:19'),(710,126,'LEAD',15,'2025-08-07 13:03:56'),(711,127,'LEAD',15,'2025-08-07 13:04:33'),(712,128,'LEAD',15,'2025-08-07 13:05:10'),(713,129,'LEAD',15,'2025-08-07 13:05:47'),(714,130,'LEAD',15,'2025-08-07 13:06:24'),(715,132,'LEAD',15,'2025-08-07 13:07:01'),(716,133,'LEAD',15,'2025-08-07 13:07:42'),(717,134,'LEAD',15,'2025-08-07 13:08:19'),(718,135,'LEAD',15,'2025-08-07 13:08:56'),(719,136,'LEAD',15,'2025-08-07 13:09:32'),(720,141,'LEAD',10,'2025-08-07 13:10:09'),(721,142,'LEAD',10,'2025-08-07 13:10:46'),(722,143,'LEAD',10,'2025-08-07 13:11:23'),(723,154,'LEAD',1,'2025-08-07 13:12:00'),(724,514,'CLIENTE',0,'2025-08-07 13:17:37'),(725,176,'CLIENTE',340,'2025-08-08 13:04:00'),(726,257,'CLIENTE',1005,'2025-08-08 13:04:37'),(727,144,'LEAD',10,'2025-08-08 13:05:14'),(728,145,'LEAD',10,'2025-08-08 13:05:51'),(729,146,'LEAD',10,'2025-08-08 13:06:28'),(730,147,'LEAD',10,'2025-08-08 13:07:05'),(731,158,'LEAD',1,'2025-08-08 13:07:41'),(732,159,'LEAD',1,'2025-08-08 13:08:18'),(733,160,'LEAD',1,'2025-08-08 13:08:55'),(734,168,'CLIENTE',340,'2025-08-11 13:05:17'),(735,173,'CLIENTE',340,'2025-08-11 13:05:54'),(736,256,'CLIENTE',1005,'2025-08-11 13:06:31'),(737,492,'CLIENTE',30,'2025-08-11 13:07:08'),(738,493,'CLIENTE',30,'2025-08-11 13:07:45'),(739,494,'CLIENTE',30,'2025-08-11 13:08:22'),(740,495,'CLIENTE',30,'2025-08-11 13:08:58'),(741,138,'LEAD',15,'2025-08-11 13:09:36'),(742,139,'LEAD',15,'2025-08-11 13:10:12'),(743,140,'LEAD',15,'2025-08-11 13:10:49'),(744,148,'LEAD',10,'2025-08-11 13:11:26'),(745,149,'LEAD',10,'2025-08-11 13:12:04'),(746,515,'CLIENTE',0,'2025-08-11 17:58:23'),(747,167,'CLIENTE',340,'2025-08-12 13:00:19'),(748,175,'CLIENTE',340,'2025-08-12 13:00:55'),(749,255,'CLIENTE',1005,'2025-08-12 13:01:33'),(750,496,'CLIENTE',30,'2025-08-13 13:01:39'),(751,144,'LEAD',15,'2025-08-13 13:02:16'),(752,145,'LEAD',15,'2025-08-13 13:02:52'),(753,146,'LEAD',15,'2025-08-13 13:03:30'),(754,147,'LEAD',15,'2025-08-13 13:04:07'),(755,161,'LEAD',1,'2025-08-13 13:04:44'),(756,162,'LEAD',1,'2025-08-13 13:05:21'),(757,497,'CLIENTE',30,'2025-08-14 13:04:55'),(758,151,'LEAD',10,'2025-08-14 13:05:32'),(759,152,'LEAD',10,'2025-08-14 13:06:08'),(760,518,'CLIENTE',0,'2025-08-14 13:19:23'),(761,519,'CLIENTE',0,'2025-08-14 13:19:58'),(762,520,'CLIENTE',0,'2025-08-14 15:40:00'),(763,253,'CLIENTE',1000,'2025-08-15 13:03:37'),(764,254,'CLIENTE',1000,'2025-08-15 13:04:32'),(765,498,'CLIENTE',30,'2025-08-15 13:05:09'),(766,148,'LEAD',15,'2025-08-15 13:05:46'),(767,153,'LEAD',10,'2025-08-15 13:06:23'),(768,155,'LEAD',10,'2025-08-15 13:07:06'),(769,164,'CLIENTE',340,'2025-08-18 13:00:15'),(770,499,'CLIENTE',30,'2025-08-18 13:00:52'),(771,149,'LEAD',15,'2025-08-18 13:01:29'),(772,154,'LEAD',10,'2025-08-18 13:02:06'),(773,158,'LEAD',10,'2025-08-18 13:02:43'),(774,159,'LEAD',10,'2025-08-18 13:03:20'),(775,160,'LEAD',10,'2025-08-18 13:03:57'),(776,521,'CLIENTE',0,'2025-08-18 14:22:04'),(777,252,'CLIENTE',1000,'2025-08-19 13:06:23'),(778,151,'LEAD',15,'2025-08-19 13:06:59'),(779,152,'LEAD',15,'2025-08-19 13:07:36'),(780,163,'LEAD',1,'2025-08-19 13:08:13'),(781,164,'LEAD',1,'2025-08-19 13:08:51'),(782,165,'LEAD',1,'2025-08-19 13:09:27'),(783,166,'LEAD',1,'2025-08-19 13:10:04'),(784,167,'LEAD',1,'2025-08-19 13:10:41'),(785,162,'CLIENTE',340,'2025-08-20 12:52:52'),(786,251,'CLIENTE',1000,'2025-08-20 12:53:30'),(787,253,'CLIENTE',1005,'2025-08-20 12:54:07'),(788,254,'CLIENTE',1005,'2025-08-20 12:54:44'),(789,153,'LEAD',15,'2025-08-20 12:55:20'),(790,155,'LEAD',15,'2025-08-20 12:55:57'),(791,522,'CLIENTE',0,'2025-08-20 17:59:45'),(792,523,'CLIENTE',0,'2025-08-20 18:00:22'),(793,250,'CLIENTE',1000,'2025-08-21 13:01:08'),(794,474,'CLIENTE',630,'2025-08-21 13:07:47'),(795,500,'CLIENTE',30,'2025-08-21 13:08:24'),(796,154,'LEAD',15,'2025-08-21 13:09:01'),(797,158,'LEAD',15,'2025-08-22 12:54:34'),(798,159,'LEAD',15,'2025-08-22 12:55:11'),(799,160,'LEAD',15,'2025-08-22 12:55:49'),(800,161,'LEAD',10,'2025-08-22 12:56:29'),(801,169,'LEAD',1,'2025-08-22 12:57:06'),(802,170,'LEAD',1,'2025-08-22 12:57:43'),(803,159,'CLIENTE',340,'2025-08-25 12:59:35'),(804,160,'CLIENTE',340,'2025-08-25 13:00:13'),(805,161,'CLIENTE',340,'2025-08-25 13:00:50'),(806,235,'CLIENTE',1000,'2025-08-25 13:01:27'),(807,249,'CLIENTE',1000,'2025-08-25 13:02:03'),(808,251,'CLIENTE',1005,'2025-08-25 13:02:40'),(809,252,'CLIENTE',1005,'2025-08-25 13:03:17'),(810,464,'CLIENTE',330,'2025-08-25 13:03:54'),(811,501,'CLIENTE',30,'2025-08-25 13:04:31'),(812,502,'CLIENTE',30,'2025-08-25 13:05:07'),(813,503,'CLIENTE',30,'2025-08-25 13:05:44'),(814,504,'CLIENTE',30,'2025-08-25 13:06:21'),(815,164,'LEAD',5,'2025-08-25 13:06:58'),(816,166,'LEAD',5,'2025-08-25 13:07:36'),(817,167,'LEAD',5,'2025-08-25 13:08:12'),(818,171,'LEAD',0,'2025-08-25 15:46:43'),(819,172,'LEAD',0,'2025-08-25 15:47:20'),(820,524,'CLIENTE',0,'2025-08-25 16:15:22'),(821,525,'CLIENTE',0,'2025-08-25 16:15:59'),(822,250,'CLIENTE',1005,'2025-08-26 13:14:03'),(823,462,'CLIENTE',330,'2025-08-26 13:14:40'),(824,474,'CLIENTE',635,'2025-08-26 13:15:17'),(825,171,'LEAD',1,'2025-08-26 13:15:54'),(826,172,'LEAD',1,'2025-08-26 13:16:31'),(827,526,'CLIENTE',0,'2025-08-26 14:42:09'),(828,248,'CLIENTE',1000,'2025-08-27 12:56:51'),(829,442,'CLIENTE',330,'2025-08-27 12:57:28'),(830,161,'LEAD',15,'2025-08-27 12:58:05'),(831,464,'CLIENTE',335,'2025-08-28 12:52:54'),(832,505,'CLIENTE',30,'2025-08-28 12:53:31'),(833,507,'CLIENTE',30,'2025-08-28 12:54:08'),(834,163,'LEAD',10,'2025-08-28 12:54:44'),(835,164,'LEAD',10,'2025-08-28 12:55:21'),(836,165,'LEAD',10,'2025-08-28 12:55:58'),(837,166,'LEAD',10,'2025-08-28 12:56:35'),(838,167,'LEAD',10,'2025-08-28 12:57:11'),(839,509,'CLIENTE',30,'2025-08-29 13:10:43'),(840,527,'CLIENTE',0,'2025-08-29 15:51:21'),(841,158,'CLIENTE',340,'2025-09-01 12:57:41'),(842,235,'CLIENTE',1005,'2025-09-01 12:58:18'),(843,248,'CLIENTE',1005,'2025-09-01 12:58:55'),(844,249,'CLIENTE',1005,'2025-09-01 12:59:32'),(845,442,'CLIENTE',335,'2025-09-01 13:00:09'),(846,462,'CLIENTE',335,'2025-09-01 13:00:45'),(847,510,'CLIENTE',30,'2025-09-01 13:01:22'),(848,511,'CLIENTE',30,'2025-09-01 13:01:59'),(849,169,'LEAD',10,'2025-09-01 13:02:37'),(850,170,'LEAD',10,'2025-09-01 13:03:13'),(851,172,'LEAD',5,'2025-09-01 13:03:50'),(852,174,'LEAD',1,'2025-09-01 13:04:28'),(853,175,'LEAD',1,'2025-09-01 13:05:04'),(854,176,'LEAD',1,'2025-09-01 13:05:41'),(855,177,'LEAD',1,'2025-09-01 13:06:18'),(856,178,'LEAD',1,'2025-09-01 13:06:55'),(857,528,'CLIENTE',0,'2025-09-01 13:20:53'),(858,529,'CLIENTE',0,'2025-09-01 13:21:30'),(859,530,'CLIENTE',0,'2025-09-01 13:22:07'),(860,531,'CLIENTE',0,'2025-09-01 17:57:17'),(861,164,'LEAD',15,'2025-09-02 12:55:16'),(862,165,'LEAD',15,'2025-09-02 12:55:53'),(863,166,'LEAD',15,'2025-09-02 12:56:30'),(864,167,'LEAD',15,'2025-09-02 12:57:07'),(865,173,'LEAD',15,'2025-09-02 12:57:43'),(866,179,'LEAD',1,'2025-09-02 12:58:20'),(867,180,'LEAD',1,'2025-09-02 12:58:57'),(868,532,'CLIENTE',0,'2025-09-02 16:47:04'),(869,533,'CLIENTE',0,'2025-09-02 16:47:41'),(870,157,'CLIENTE',340,'2025-09-04 12:56:49'),(871,513,'CLIENTE',30,'2025-09-04 12:57:25'),(872,171,'LEAD',10,'2025-09-04 12:58:02'),(873,172,'LEAD',10,'2025-09-04 12:58:39'),(874,247,'CLIENTE',1000,'2025-09-05 13:00:28'),(875,169,'LEAD',15,'2025-09-05 13:01:05'),(876,170,'LEAD',15,'2025-09-05 13:01:42'),(877,535,'CLIENTE',0,'2025-09-05 13:07:19'),(878,536,'CLIENTE',0,'2025-09-05 13:12:56'),(879,152,'CLIENTE',340,'2025-09-08 13:03:00'),(880,154,'CLIENTE',340,'2025-09-08 13:03:37'),(881,155,'CLIENTE',340,'2025-09-08 13:04:13'),(882,156,'CLIENTE',340,'2025-09-08 13:04:50'),(883,245,'CLIENTE',1000,'2025-09-08 13:05:27'),(884,246,'CLIENTE',1000,'2025-09-08 13:06:04'),(885,514,'CLIENTE',30,'2025-09-08 13:06:41'),(886,174,'LEAD',10,'2025-09-08 13:07:18'),(887,175,'LEAD',10,'2025-09-08 13:07:55'),(888,176,'LEAD',10,'2025-09-08 13:08:32'),(889,177,'LEAD',10,'2025-09-08 13:09:09'),(890,178,'LEAD',10,'2025-09-08 13:09:44'),(891,244,'CLIENTE',1000,'2025-09-09 12:56:23'),(892,171,'LEAD',15,'2025-09-09 12:57:00'),(893,172,'LEAD',15,'2025-09-09 12:57:37'),(894,181,'LEAD',1,'2025-09-09 12:58:14'),(896,247,'CLIENTE',1005,'2025-09-10 13:07:06'),(897,515,'CLIENTE',30,'2025-09-10 13:07:42'),(898,537,'CLIENTE',0,'2025-09-10 16:39:27'),(899,538,'CLIENTE',0,'2025-09-10 16:40:04'),(900,539,'CLIENTE',0,'2025-09-10 16:40:41'),(901,475,'CLIENTE',630,'2025-09-11 12:57:35'),(902,179,'LEAD',10,'2025-09-11 12:58:12'),(903,180,'LEAD',10,'2025-09-11 12:58:49'),(904,541,'CLIENTE',0,'2025-09-11 13:59:25'),(905,542,'CLIENTE',0,'2025-09-11 14:00:02'),(906,543,'CLIENTE',0,'2025-09-11 17:46:14'),(907,242,'CLIENTE',1000,'2025-09-12 13:03:55'),(908,243,'CLIENTE',1000,'2025-09-12 13:04:31'),(909,246,'CLIENTE',1005,'2025-09-12 13:05:08'),(910,516,'CLIENTE',30,'2025-09-12 13:05:45'),(911,517,'CLIENTE',30,'2025-09-12 13:06:22'),(912,544,'CLIENTE',0,'2025-09-12 13:46:58'),(913,545,'CLIENTE',0,'2025-09-12 13:47:35'),(914,147,'CLIENTE',340,'2025-09-15 12:57:16'),(915,149,'CLIENTE',340,'2025-09-15 12:57:53'),(916,150,'CLIENTE',340,'2025-09-15 12:58:30'),(917,241,'CLIENTE',1000,'2025-09-15 12:59:08'),(918,244,'CLIENTE',1005,'2025-09-15 12:59:44'),(919,245,'CLIENTE',1005,'2025-09-15 13:00:21'),(920,519,'CLIENTE',30,'2025-09-15 13:00:58'),(921,520,'CLIENTE',30,'2025-09-15 13:01:35'),(922,174,'LEAD',15,'2025-09-15 13:02:12'),(923,175,'LEAD',15,'2025-09-15 13:02:49'),(924,176,'LEAD',15,'2025-09-15 13:03:26'),(925,177,'LEAD',15,'2025-09-15 13:04:03'),(926,178,'LEAD',15,'2025-09-15 13:04:39'),(927,182,'LEAD',1,'2025-09-15 13:05:16'),(928,184,'LEAD',1,'2025-09-15 13:05:53'),(929,185,'LEAD',1,'2025-09-15 13:06:30'),(930,475,'CLIENTE',635,'2025-09-16 12:56:48'),(931,179,'LEAD',15,'2025-09-16 12:57:25'),(932,180,'LEAD',15,'2025-09-16 12:58:02'),(933,242,'CLIENTE',1005,'2025-09-17 12:50:11'),(934,243,'CLIENTE',1005,'2025-09-17 12:50:48'),(935,521,'CLIENTE',30,'2025-09-17 12:51:25'),(936,391,'CLIENTE',1400,'2025-09-18 12:52:04'),(937,241,'CLIENTE',1005,'2025-09-19 16:11:15'),(938,522,'CLIENTE',30,'2025-09-19 16:11:52'),(939,523,'CLIENTE',30,'2025-09-19 16:12:29'),(940,145,'CLIENTE',340,'2025-09-22 13:12:50'),(941,182,'LEAD',10,'2025-09-22 13:13:27'),(942,183,'LEAD',1,'2025-09-22 13:14:03'),(943,184,'LEAD',10,'2025-09-22 13:14:40'),(944,185,'LEAD',10,'2025-09-22 13:15:17'),(945,547,'CLIENTE',0,'2025-09-22 13:35:54'),(946,240,'CLIENTE',1000,'2025-09-23 13:23:12'),(947,391,'CLIENTE',1405,'2025-09-23 13:23:48'),(948,143,'CLIENTE',340,'2025-09-24 13:03:48'),(949,144,'CLIENTE',340,'2025-09-24 13:04:26'),(950,524,'CLIENTE',30,'2025-09-24 13:05:03'),(951,525,'CLIENTE',30,'2025-09-24 13:05:40'),(952,389,'CLIENTE',1400,'2025-09-25 12:53:33'),(953,390,'CLIENTE',1400,'2025-09-25 12:54:09'),(954,526,'CLIENTE',30,'2025-09-25 12:54:46'),(955,186,'LEAD',1,'2025-09-25 15:17:16'),(956,187,'LEAD',1,'2025-09-25 15:17:53'),(957,188,'LEAD',1,'2025-09-25 15:18:30'),(958,189,'LEAD',1,'2025-09-25 15:19:07'),(959,190,'LEAD',1,'2025-09-25 15:19:43'),(960,191,'LEAD',1,'2025-09-25 15:20:20'),(961,192,'LEAD',1,'2025-09-25 15:20:57'),(962,193,'LEAD',1,'2025-09-25 15:21:33'),(963,194,'LEAD',1,'2025-09-25 15:22:10'),(964,195,'LEAD',1,'2025-09-25 15:22:47'),(965,196,'LEAD',1,'2025-09-25 15:23:24'),(966,549,'CLIENTE',0,'2025-09-25 15:27:20'),(967,197,'LEAD',1,'2025-09-26 13:03:23'),(968,240,'CLIENTE',1005,'2025-09-29 12:52:07'),(969,386,'CLIENTE',1400,'2025-09-29 12:52:44'),(970,387,'CLIENTE',1400,'2025-09-29 12:53:21'),(971,435,'CLIENTE',330,'2025-09-29 12:53:58'),(972,439,'CLIENTE',330,'2025-09-29 12:54:35'),(973,445,'CLIENTE',330,'2025-09-29 12:55:12'),(974,527,'CLIENTE',30,'2025-09-29 12:55:49'),(975,528,'CLIENTE',30,'2025-09-29 12:56:26'),(976,529,'CLIENTE',30,'2025-09-29 12:57:30'),(977,182,'LEAD',15,'2025-09-29 12:58:13'),(978,184,'LEAD',15,'2025-09-29 12:58:55'),(979,185,'LEAD',15,'2025-09-29 12:59:31'),(980,550,'CLIENTE',0,'2025-09-29 13:20:06'),(981,551,'CLIENTE',0,'2025-09-29 14:02:08'),(982,552,'CLIENTE',0,'2025-09-29 14:03:16'),(983,389,'CLIENTE',1405,'2025-09-30 13:01:23'),(984,390,'CLIENTE',1405,'2025-09-30 13:02:00'),(985,553,'CLIENTE',0,'2025-09-30 17:14:58'),(986,554,'CLIENTE',0,'2025-09-30 17:15:34'),(987,384,'CLIENTE',1400,'2025-10-01 13:06:26'),(988,385,'CLIENTE',1400,'2025-10-01 13:07:03'),(989,530,'CLIENTE',30,'2025-10-01 13:07:39'),(990,531,'CLIENTE',30,'2025-10-01 13:08:16'),(991,183,'LEAD',10,'2025-10-01 13:08:53'),(992,555,'CLIENTE',0,'2025-10-01 16:09:32'),(993,387,'CLIENTE',1405,'2025-10-02 13:05:30'),(994,435,'CLIENTE',335,'2025-10-02 13:06:07'),(995,439,'CLIENTE',335,'2025-10-02 13:06:44'),(996,445,'CLIENTE',335,'2025-10-02 13:07:21'),(997,532,'CLIENTE',30,'2025-10-02 13:07:57'),(998,533,'CLIENTE',30,'2025-10-02 13:08:34'),(999,556,'CLIENTE',0,'2025-10-02 13:15:41'),(1000,137,'CLIENTE',340,'2025-10-06 13:02:15'),(1001,138,'CLIENTE',340,'2025-10-06 13:02:52'),(1002,140,'CLIENTE',340,'2025-10-06 13:04:01'),(1003,384,'CLIENTE',1405,'2025-10-06 13:04:38'),(1004,385,'CLIENTE',1405,'2025-10-06 13:05:14'),(1005,386,'CLIENTE',1405,'2025-10-06 13:05:51'),(1006,535,'CLIENTE',30,'2025-10-06 13:06:28'),(1007,536,'CLIENTE',30,'2025-10-06 13:07:05'),(1008,183,'LEAD',15,'2025-10-06 13:07:42'),(1009,186,'LEAD',10,'2025-10-06 13:08:19'),(1010,187,'LEAD',10,'2025-10-06 13:08:56'),(1011,188,'LEAD',10,'2025-10-06 13:09:33'),(1012,189,'LEAD',10,'2025-10-06 13:10:10'),(1013,190,'LEAD',10,'2025-10-06 13:10:46'),(1014,191,'LEAD',10,'2025-10-06 13:11:23'),(1015,192,'LEAD',10,'2025-10-06 13:12:00'),(1016,193,'LEAD',10,'2025-10-06 13:12:37'),(1017,194,'LEAD',10,'2025-10-06 13:13:14'),(1018,195,'LEAD',10,'2025-10-06 13:13:50'),(1019,196,'LEAD',10,'2025-10-06 13:14:27'),(1020,197,'LEAD',10,'2025-10-06 13:15:04'),(1021,139,'CLIENTE',340,'2025-10-06 13:20:39'),(1022,558,'CLIENTE',0,'2025-10-06 16:05:18'),(1023,560,'CLIENTE',0,'2025-10-06 16:05:54'),(1024,561,'CLIENTE',0,'2025-10-07 13:12:00'),(1025,562,'CLIENTE',0,'2025-10-07 13:17:37'),(1026,198,'LEAD',0,'2025-10-07 15:41:36'),(1027,199,'LEAD',0,'2025-10-07 15:42:13'),(1028,200,'LEAD',0,'2025-10-07 15:42:50'),(1029,201,'LEAD',0,'2025-10-07 15:43:27'),(1030,202,'LEAD',0,'2025-10-07 15:44:04'),(1031,203,'LEAD',0,'2025-10-07 15:44:41'),(1032,204,'LEAD',0,'2025-10-07 15:45:18'),(1033,205,'LEAD',0,'2025-10-07 15:45:55'),(1034,206,'LEAD',0,'2025-10-07 15:46:31'),(1035,207,'LEAD',0,'2025-10-07 15:47:08'),(1036,208,'LEAD',0,'2025-10-07 15:47:45'),(1037,209,'LEAD',0,'2025-10-07 15:48:21'),(1038,210,'LEAD',0,'2025-10-07 15:48:58'),(1039,186,'LEAD',15,'2025-10-09 13:00:15'),(1040,187,'LEAD',15,'2025-10-09 13:00:52'),(1041,188,'LEAD',15,'2025-10-09 13:01:29'),(1042,190,'LEAD',15,'2025-10-09 13:02:06'),(1043,191,'LEAD',15,'2025-10-09 13:02:43'),(1044,192,'LEAD',15,'2025-10-09 13:03:19'),(1045,193,'LEAD',15,'2025-10-09 13:03:56'),(1046,194,'LEAD',15,'2025-10-09 13:04:33'),(1047,195,'LEAD',15,'2025-10-09 13:05:10'),(1048,196,'LEAD',15,'2025-10-09 13:05:47'),(1049,563,'CLIENTE',0,'2025-10-09 13:16:24'),(1050,474,'CLIENTE',680,'2025-10-10 13:10:57'),(1051,537,'CLIENTE',30,'2025-10-10 13:11:34'),(1052,538,'CLIENTE',30,'2025-10-10 13:12:11'),(1053,539,'CLIENTE',30,'2025-10-10 13:12:48'),(1054,540,'CLIENTE',30,'2025-10-10 13:13:25'),(1055,197,'LEAD',15,'2025-10-10 13:14:02'),(1056,564,'CLIENTE',0,'2025-10-10 13:27:05'),(1057,565,'CLIENTE',0,'2025-10-10 15:45:37'),(1058,211,'LEAD',0,'2025-10-10 15:46:14'),(1059,135,'CLIENTE',340,'2025-10-13 12:58:09'),(1060,136,'CLIENTE',340,'2025-10-13 12:58:45'),(1061,382,'CLIENTE',1400,'2025-10-13 12:59:23'),(1062,383,'CLIENTE',1400,'2025-10-13 12:59:59'),(1063,463,'CLIENTE',330,'2025-10-13 13:00:36'),(1064,541,'CLIENTE',30,'2025-10-13 13:01:14'),(1065,542,'CLIENTE',30,'2025-10-13 13:01:50'),(1066,544,'CLIENTE',30,'2025-10-13 13:02:27'),(1067,545,'CLIENTE',30,'2025-10-13 13:03:04'),(1068,546,'CLIENTE',30,'2025-10-13 13:03:41'),(1069,566,'CLIENTE',0,'2025-10-13 13:24:18'),(1070,567,'CLIENTE',0,'2025-10-13 15:49:57'),(1071,568,'CLIENTE',0,'2025-10-13 16:48:30'),(1072,383,'CLIENTE',1405,'2025-10-16 13:08:06'),(1073,463,'CLIENTE',335,'2025-10-16 13:08:43'),(1074,198,'LEAD',10,'2025-10-17 12:55:28'),(1075,199,'LEAD',10,'2025-10-17 12:56:05'),(1076,200,'LEAD',10,'2025-10-17 12:56:52'),(1077,201,'LEAD',10,'2025-10-17 12:57:29'),(1078,202,'LEAD',10,'2025-10-17 12:58:06'),(1079,203,'LEAD',10,'2025-10-17 12:58:43'),(1080,204,'LEAD',10,'2025-10-17 12:59:20'),(1081,205,'LEAD',10,'2025-10-17 12:59:57'),(1082,206,'LEAD',10,'2025-10-17 13:00:33'),(1083,207,'LEAD',10,'2025-10-17 13:01:10'),(1084,208,'LEAD',10,'2025-10-17 13:01:47'),(1085,209,'LEAD',10,'2025-10-17 13:04:42'),(1086,210,'LEAD',10,'2025-10-17 13:05:19'),(1087,569,'CLIENTE',0,'2025-10-17 13:10:56'),(1088,570,'CLIENTE',0,'2025-10-17 17:26:11'),(1089,571,'CLIENTE',0,'2025-10-17 17:26:48'),(1090,128,'CLIENTE',330,'2025-10-20 13:03:11'),(1091,382,'CLIENTE',1405,'2025-10-20 13:03:48'),(1092,453,'CLIENTE',330,'2025-10-20 13:04:25'),(1093,454,'CLIENTE',330,'2025-10-20 13:05:02'),(1094,548,'CLIENTE',30,'2025-10-20 13:05:39'),(1095,211,'LEAD',10,'2025-10-20 13:06:16'),(1096,213,'LEAD',0,'2025-10-20 15:11:54'),(1097,214,'LEAD',0,'2025-10-20 16:24:39'),(1098,215,'LEAD',0,'2025-10-20 16:25:17'),(1099,216,'LEAD',0,'2025-10-20 16:25:53'),(1100,217,'LEAD',0,'2025-10-20 16:26:30'),(1101,218,'LEAD',0,'2025-10-20 16:27:07'),(1102,219,'LEAD',0,'2025-10-20 16:27:44'),(1103,473,'CLIENTE',1000,'2025-10-22 13:01:35'),(1104,198,'LEAD',15,'2025-10-22 13:02:12'),(1105,199,'LEAD',15,'2025-10-22 13:02:50'),(1106,200,'LEAD',15,'2025-10-22 13:03:26'),(1107,201,'LEAD',15,'2025-10-22 13:04:03'),(1108,202,'LEAD',15,'2025-10-22 13:04:40'),(1109,203,'LEAD',15,'2025-10-22 13:05:17'),(1110,204,'LEAD',15,'2025-10-22 13:05:54'),(1111,205,'LEAD',15,'2025-10-22 13:06:31'),(1112,206,'LEAD',15,'2025-10-22 13:07:07'),(1113,207,'LEAD',15,'2025-10-22 13:07:44'),(1114,208,'LEAD',15,'2025-10-22 13:08:21'),(1115,209,'LEAD',15,'2025-10-22 13:08:58'),(1116,210,'LEAD',15,'2025-10-22 13:09:34'),(1117,572,'CLIENTE',0,'2025-10-22 14:54:24'),(1118,128,'CLIENTE',335,'2025-10-23 12:58:08'),(1119,453,'CLIENTE',335,'2025-10-23 12:58:44'),(1120,454,'CLIENTE',335,'2025-10-23 12:59:21'),(1121,134,'CLIENTE',340,'2025-10-24 13:05:00'),(1122,381,'CLIENTE',1400,'2025-10-27 13:02:19'),(1123,473,'CLIENTE',1005,'2025-10-27 13:02:56'),(1124,549,'CLIENTE',30,'2025-10-27 13:03:33'),(1125,211,'LEAD',15,'2025-10-27 13:04:10'),(1126,573,'CLIENTE',0,'2025-10-27 13:20:14'),(1127,126,'CLIENTE',340,'2025-10-28 13:08:23'),(1128,127,'CLIENTE',340,'2025-10-28 13:09:00'),(1129,129,'CLIENTE',340,'2025-10-28 13:09:37'),(1130,130,'CLIENTE',340,'2025-10-28 13:10:14'),(1131,131,'CLIENTE',340,'2025-10-28 13:10:51'),(1132,221,'LEAD',0,'2025-10-28 16:51:35'),(1133,222,'LEAD',0,'2025-10-28 16:52:12'),(1134,223,'LEAD',0,'2025-10-28 16:52:49'),(1135,224,'LEAD',0,'2025-10-28 16:53:26'),(1136,226,'LEAD',0,'2025-10-28 16:54:02'),(1137,227,'LEAD',0,'2025-10-28 16:54:39'),(1138,228,'LEAD',0,'2025-10-28 16:55:16'),(1139,550,'CLIENTE',30,'2025-10-29 12:56:15'),(1140,551,'CLIENTE',30,'2025-10-29 12:56:52'),(1141,552,'CLIENTE',30,'2025-10-29 12:57:29'),(1142,553,'CLIENTE',30,'2025-10-30 12:46:00'),(1143,554,'CLIENTE',30,'2025-10-30 12:46:37'),(1144,213,'LEAD',10,'2025-10-30 12:47:14'),(1145,214,'LEAD',10,'2025-10-30 12:47:51'),(1146,215,'LEAD',10,'2025-10-30 12:48:28'),(1147,216,'LEAD',10,'2025-10-30 12:49:05'),(1148,217,'LEAD',10,'2025-10-30 12:49:42'),(1149,218,'LEAD',10,'2025-10-30 12:50:18'),(1150,219,'LEAD',10,'2025-10-30 12:50:55'),(1151,475,'CLIENTE',680,'2025-10-31 13:14:27'),(1152,556,'CLIENTE',30,'2025-10-31 13:15:04'),(1153,574,'CLIENTE',0,'2025-10-31 13:40:41'),(1154,575,'CLIENTE',0,'2025-10-31 13:46:18'),(1155,576,'CLIENTE',0,'2025-10-31 14:32:55'),(1156,120,'CLIENTE',340,'2025-11-03 13:02:33'),(1157,122,'CLIENTE',340,'2025-11-03 13:03:10'),(1158,123,'CLIENTE',340,'2025-11-03 13:03:47'),(1159,381,'CLIENTE',1405,'2025-11-03 13:04:24'),(1160,436,'CLIENTE',330,'2025-11-03 13:05:00'),(1161,559,'CLIENTE',30,'2025-11-03 13:05:38'),(1162,577,'CLIENTE',0,'2025-11-03 14:01:14'),(1163,558,'CLIENTE',30,'2025-11-05 14:54:36'),(1164,560,'CLIENTE',30,'2025-11-05 14:55:13'),(1165,436,'CLIENTE',335,'2025-11-06 13:05:07'),(1166,561,'CLIENTE',30,'2025-11-06 13:05:44'),(1167,562,'CLIENTE',30,'2025-11-06 13:06:21'),(1168,579,'CLIENTE',0,'2025-11-06 16:52:04'),(1169,580,'CLIENTE',0,'2025-11-06 16:52:40'),(1170,221,'LEAD',10,'2025-11-07 12:40:11'),(1171,222,'LEAD',10,'2025-11-07 12:40:48'),(1172,223,'LEAD',10,'2025-11-07 12:41:24'),(1173,224,'LEAD',10,'2025-11-07 12:42:01'),(1174,226,'LEAD',10,'2025-11-07 12:42:38'),(1175,227,'LEAD',10,'2025-11-07 12:43:15'),(1176,228,'LEAD',10,'2025-11-07 12:43:52'),(1177,119,'CLIENTE',340,'2025-11-10 13:00:04'),(1178,563,'CLIENTE',30,'2025-11-10 13:00:40'),(1179,564,'CLIENTE',30,'2025-11-10 13:01:18'),(1180,565,'CLIENTE',30,'2025-11-10 13:01:55'),(1181,581,'CLIENTE',0,'2025-11-10 13:12:32'),(1182,582,'CLIENTE',0,'2025-11-10 13:18:09'),(1183,118,'CLIENTE',340,'2025-11-11 12:40:38'),(1184,229,'LEAD',0,'2025-11-11 14:11:17'),(1185,230,'LEAD',0,'2025-11-11 14:21:54'),(1186,231,'LEAD',0,'2025-11-11 14:22:31'),(1187,232,'LEAD',0,'2025-11-11 14:23:09'),(1188,233,'LEAD',0,'2025-11-11 14:23:45'),(1189,234,'LEAD',0,'2025-11-11 14:44:22'),(1190,235,'LEAD',0,'2025-11-11 14:49:59'),(1191,236,'LEAD',0,'2025-11-11 15:00:36'),(1192,237,'LEAD',0,'2025-11-11 15:01:13'),(1193,238,'LEAD',0,'2025-11-11 15:06:49'),(1194,239,'LEAD',0,'2025-11-11 15:12:26'),(1195,240,'LEAD',0,'2025-11-11 15:13:03'),(1196,241,'LEAD',0,'2025-11-11 15:18:40'),(1197,242,'LEAD',0,'2025-11-11 15:19:17'),(1198,583,'CLIENTE',0,'2025-11-11 16:29:55'),(1199,566,'CLIENTE',30,'2025-11-12 12:41:12'),(1200,567,'CLIENTE',30,'2025-11-12 12:43:37'),(1201,221,'LEAD',15,'2025-11-12 12:44:14'),(1202,222,'LEAD',15,'2025-11-12 12:44:51'),(1203,223,'LEAD',15,'2025-11-12 12:45:28'),(1204,224,'LEAD',15,'2025-11-12 12:46:05'),(1205,226,'LEAD',15,'2025-11-12 12:46:41'),(1206,227,'LEAD',15,'2025-11-12 12:47:19'),(1207,228,'LEAD',15,'2025-11-12 12:47:55'),(1208,116,'CLIENTE',340,'2025-11-17 12:47:01'),(1209,569,'CLIENTE',30,'2025-11-17 12:47:37'),(1210,570,'CLIENTE',30,'2025-11-17 12:48:14'),(1211,571,'CLIENTE',30,'2025-11-17 12:48:51'),(1212,586,'CLIENTE',0,'2025-11-17 13:29:28'),(1213,243,'LEAD',0,'2025-11-18 15:33:55'),(1214,244,'LEAD',0,'2025-11-18 15:54:32'),(1215,245,'LEAD',0,'2025-11-18 16:10:09'),(1216,588,'CLIENTE',0,'2025-11-18 16:35:45'),(1217,380,'CLIENTE',1400,'2025-11-19 12:44:47'),(1218,589,'CLIENTE',0,'2025-11-19 14:00:25'),(1219,246,'LEAD',0,'2025-11-19 17:11:06'),(1220,247,'LEAD',0,'2025-11-19 17:16:43'),(1221,248,'LEAD',0,'2025-11-19 17:22:20'),(1222,379,'CLIENTE',1400,'2025-11-21 13:04:42'),(1223,572,'CLIENTE',30,'2025-11-21 13:05:19'),(1224,229,'LEAD',10,'2025-11-21 13:05:56'),(1225,230,'LEAD',10,'2025-11-21 13:06:33'),(1226,231,'LEAD',10,'2025-11-21 13:07:10'),(1227,232,'LEAD',10,'2025-11-21 13:07:47'),(1228,233,'LEAD',10,'2025-11-21 13:08:24'),(1229,234,'LEAD',10,'2025-11-21 13:09:00'),(1230,235,'LEAD',10,'2025-11-21 13:09:37'),(1231,236,'LEAD',10,'2025-11-21 13:10:14'),(1232,237,'LEAD',10,'2025-11-21 13:10:51'),(1233,239,'LEAD',10,'2025-11-21 13:11:27'),(1234,240,'LEAD',10,'2025-11-21 13:12:04'),(1235,241,'LEAD',10,'2025-11-21 13:12:41'),(1236,242,'LEAD',10,'2025-11-21 13:13:18'),(1237,378,'CLIENTE',1400,'2025-11-24 12:49:29'),(1238,380,'CLIENTE',1405,'2025-11-24 12:50:06'),(1239,460,'CLIENTE',330,'2025-11-24 12:50:43'),(1240,573,'CLIENTE',30,'2025-11-24 12:51:20'),(1241,591,'CLIENTE',0,'2025-11-24 13:36:57'),(1242,592,'CLIENTE',0,'2025-11-24 13:42:34'),(1243,249,'LEAD',0,'2025-11-24 15:33:15'),(1244,250,'LEAD',0,'2025-11-24 15:33:52'),(1245,593,'CLIENTE',0,'2025-11-25 13:17:26'),(1246,594,'CLIENTE',0,'2025-11-25 13:18:03'),(1247,2,'ANIVERSARIO',20250,'2025-11-25 16:08:26'),(1248,595,'CLIENTE',0,'2025-11-25 17:57:46'),(1249,253,'LEAD',0,'2025-11-26 15:48:12'),(1250,232,'LEAD',15,'2025-11-26 15:48:42'),(1251,233,'LEAD',15,'2025-11-26 15:49:11'),(1252,234,'LEAD',15,'2025-11-26 15:50:22'),(1253,242,'LEAD',15,'2025-11-26 15:50:51'),(1254,255,'LEAD',0,'2025-11-26 15:51:21'),(1255,256,'LEAD',0,'2025-11-26 15:51:51'),(1256,229,'LEAD',15,'2025-11-26 15:52:21'),(1257,236,'LEAD',15,'2025-11-26 15:52:51'),(1258,237,'LEAD',15,'2025-11-26 15:53:20'),(1259,114,'CLIENTE',340,'2025-11-26 15:55:06'),(1260,379,'CLIENTE',1405,'2025-11-26 15:55:43'),(1261,230,'LEAD',15,'2025-11-26 15:56:20'),(1262,231,'LEAD',15,'2025-11-26 15:56:57'),(1263,235,'LEAD',15,'2025-11-26 15:57:34'),(1264,239,'LEAD',15,'2025-11-26 15:58:11'),(1265,240,'LEAD',15,'2025-11-26 15:58:48'),(1266,241,'LEAD',15,'2025-11-26 15:59:24'),(1267,251,'LEAD',0,'2025-11-26 16:00:01'),(1268,252,'LEAD',0,'2025-11-26 16:00:38'),(1269,257,'LEAD',0,'2025-11-26 16:01:15'),(1270,258,'LEAD',0,'2025-11-26 16:01:52'),(1271,259,'LEAD',0,'2025-11-26 16:02:28'),(1272,460,'CLIENTE',335,'2025-11-27 13:21:10'),(1273,596,'CLIENTE',0,'2025-11-27 13:21:48'),(1274,597,'CLIENTE',0,'2025-11-27 13:22:25'),(1275,598,'CLIENTE',0,'2025-11-28 14:51:29'),(1276,243,'LEAD',10,'2025-11-28 14:52:06'),(1277,244,'LEAD',10,'2025-11-28 14:52:43'),(1278,245,'LEAD',10,'2025-11-28 14:53:20'),(1279,113,'CLIENTE',340,'2025-12-01 13:02:14'),(1280,378,'CLIENTE',1405,'2025-12-01 13:02:52'),(1281,574,'CLIENTE',30,'2025-12-01 13:03:29'),(1282,575,'CLIENTE',30,'2025-12-01 13:04:06'),(1283,576,'CLIENTE',30,'2025-12-01 13:04:41'),(1284,577,'CLIENTE',30,'2025-12-01 13:05:17'),(1285,246,'LEAD',10,'2025-12-01 13:05:55'),(1286,247,'LEAD',10,'2025-12-01 13:06:32'),(1287,248,'LEAD',10,'2025-12-01 13:07:08'),(1288,377,'CLIENTE',1400,'2025-12-02 12:55:34'),(1289,599,'CLIENTE',0,'2025-12-02 13:52:51'),(1290,600,'CLIENTE',0,'2025-12-02 13:53:28'),(1291,601,'CLIENTE',0,'2025-12-02 16:35:37'),(1292,375,'CLIENTE',1400,'2025-12-03 12:55:37'),(1293,376,'CLIENTE',1400,'2025-12-03 12:56:14'),(1294,243,'LEAD',15,'2025-12-03 12:56:51'),(1295,244,'LEAD',15,'2025-12-03 12:57:28'),(1296,245,'LEAD',15,'2025-12-03 12:58:05'),(1297,602,'CLIENTE',0,'2025-12-03 17:18:46'),(1298,578,'CLIENTE',30,'2025-12-04 13:07:07'),(1299,246,'LEAD',15,'2025-12-04 13:07:44'),(1300,247,'LEAD',15,'2025-12-04 13:08:21'),(1301,248,'LEAD',15,'2025-12-04 13:08:58'),(1302,249,'LEAD',10,'2025-12-04 13:09:35'),(1303,250,'LEAD',10,'2025-12-04 13:10:12'),(1304,111,'CLIENTE',340,'2025-12-05 12:56:45'),(1305,372,'CLIENTE',1400,'2025-12-05 12:57:22'),(1306,373,'CLIENTE',1400,'2025-12-05 12:57:59'),(1307,374,'CLIENTE',1400,'2025-12-05 12:58:36'),(1308,375,'CLIENTE',1405,'2025-12-08 12:45:26'),(1309,376,'CLIENTE',1405,'2025-12-08 12:46:05'),(1310,377,'CLIENTE',1405,'2025-12-08 12:46:41'),(1311,438,'CLIENTE',330,'2025-12-08 12:47:18'),(1312,579,'CLIENTE',30,'2025-12-08 12:47:55'),(1313,580,'CLIENTE',30,'2025-12-08 12:48:32'),(1314,581,'CLIENTE',30,'2025-12-08 12:49:09'),(1315,582,'CLIENTE',30,'2025-12-08 12:49:46'),(1316,251,'LEAD',10,'2025-12-08 12:50:23'),(1317,252,'LEAD',10,'2025-12-08 12:51:00'),(1318,253,'LEAD',10,'2025-12-08 12:51:37'),(1319,255,'LEAD',10,'2025-12-08 12:52:14'),(1320,256,'LEAD',10,'2025-12-08 12:52:51'),(1321,257,'LEAD',10,'2025-12-08 12:53:27'),(1322,258,'LEAD',10,'2025-12-08 12:54:04'),(1323,259,'LEAD',10,'2025-12-08 12:54:41'),(1324,263,'LEAD',0,'2025-12-08 14:00:19'),(1325,264,'LEAD',0,'2025-12-08 14:10:56'),(1326,265,'LEAD',0,'2025-12-08 14:16:33'),(1327,266,'LEAD',0,'2025-12-08 14:22:10'),(1328,267,'LEAD',0,'2025-12-08 14:37:47'),(1329,249,'LEAD',15,'2025-12-09 13:13:42'),(1330,250,'LEAD',15,'2025-12-09 13:14:19'),(1331,372,'CLIENTE',1405,'2025-12-10 12:55:58'),(1332,373,'CLIENTE',1405,'2025-12-10 12:56:34'),(1333,374,'CLIENTE',1405,'2025-12-10 12:57:11'),(1334,261,'LEAD',10,'2025-12-11 14:47:33'),(1335,253,'LEAD',15,'2025-12-11 14:48:02'),(1336,105,'CLIENTE',330,'2025-12-11 14:49:23'),(1337,438,'CLIENTE',335,'2025-12-11 14:50:00'),(1338,583,'CLIENTE',30,'2025-12-11 14:50:37'),(1339,251,'LEAD',15,'2025-12-11 14:51:14'),(1340,252,'LEAD',15,'2025-12-11 14:51:50'),(1341,255,'LEAD',15,'2025-12-11 14:52:27'),(1342,256,'LEAD',15,'2025-12-11 14:53:04'),(1343,257,'LEAD',15,'2025-12-11 14:53:41'),(1344,258,'LEAD',15,'2025-12-11 14:54:17'),(1345,259,'LEAD',15,'2025-12-11 14:54:54'),(1346,260,'LEAD',10,'2025-12-11 14:55:31'),(1347,262,'LEAD',10,'2025-12-11 16:52:35'),(1348,60,'ANIVERSARIO',20250,'2025-12-12 13:00:21'),(1349,98,'ANIVERSARIO',20250,'2025-12-15 13:14:54'),(1350,261,'LEAD',15,'2025-12-16 12:56:58'),(1351,260,'LEAD',15,'2025-12-16 12:57:28'),(1352,262,'LEAD',15,'2025-12-16 12:57:58');
/*!40000 ALTER TABLE `mensagens_enviadas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `metrics`
--

DROP TABLE IF EXISTS `metrics`;
/*!50001 DROP VIEW IF EXISTS `metrics`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `metrics` AS SELECT 
 1 AS `Variable_name`,
 1 AS `Variable_value`,
 1 AS `Type`,
 1 AS `Enabled`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `pendencias_atrasadas`
--

DROP TABLE IF EXISTS `pendencias_atrasadas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pendencias_atrasadas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int NOT NULL,
  `grupo` varchar(255) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `mensagem` text NOT NULL,
  `data_prevista` date NOT NULL,
  `status` varchar(20) DEFAULT 'pendente',
  `data_resolvida` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pendencias_atrasadas`
--

LOCK TABLES `pendencias_atrasadas` WRITE;
/*!40000 ALTER TABLE `pendencias_atrasadas` DISABLE KEYS */;
/*!40000 ALTER TABLE `pendencias_atrasadas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `processlist`
--

DROP TABLE IF EXISTS `processlist`;
/*!50001 DROP VIEW IF EXISTS `processlist`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `processlist` AS SELECT 
 1 AS `thd_id`,
 1 AS `conn_id`,
 1 AS `user`,
 1 AS `db`,
 1 AS `command`,
 1 AS `state`,
 1 AS `time`,
 1 AS `current_statement`,
 1 AS `execution_engine`,
 1 AS `statement_latency`,
 1 AS `progress`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_examined`,
 1 AS `rows_sent`,
 1 AS `rows_affected`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `full_scan`,
 1 AS `last_statement`,
 1 AS `last_statement_latency`,
 1 AS `current_memory`,
 1 AS `last_wait`,
 1 AS `last_wait_latency`,
 1 AS `source`,
 1 AS `trx_latency`,
 1 AS `trx_state`,
 1 AS `trx_autocommit`,
 1 AS `pid`,
 1 AS `program_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `product_cache`
--

DROP TABLE IF EXISTS `product_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_cache` (
  `link` varchar(500) NOT NULL,
  `nome` text,
  `imagem_url` text,
  `preco_vista` varchar(50) DEFAULT NULL,
  `preco_prazo` varchar(50) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cod` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`link`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_cache`
--

LOCK TABLES `product_cache` WRITE;
/*!40000 ALTER TABLE `product_cache` DISABLE KEYS */;
INSERT INTO `product_cache` VALUES ('https://confortec.com.br/produto/5445/','PLACA DE CONTROLE ELETR S/TIMER KO 15-20D DI','https://confortec.com.br/wp-content/uploads/2021/02/IMG_20210215_103346879-scaled-1.jpg','475,15','10x R$ 54,64','2025-12-16 20:00:00','00052'),('https://confortec.com.br/produto/anel-de-vedacao-para-coletor-solar-tubo-a-vacuo/','ANEL DE VEDAÇÃO PARA COLETOR SOLAR TUBO A VÁCUO','https://confortec.com.br/wp-content/uploads/2020/12/IMG_20201216_140621355-scaled-1.jpg','25,00','10x R$ 2,87','2025-12-16 19:59:59','01366'),('https://confortec.com.br/produto/aquec-solar-nivel-bp-500l-inox304/','BOILER KOMECO – EM NÍVEL 500L – BAIXA PRESSÃO – AÇO INOX 304','https://confortec.com.br/wp-content/uploads/2021/10/boiler_solar_alta_pressao_200l_inox_komeco_87418261_de6d_600x600.jpg','3.986,00','10x R$ 458,39','2025-12-16 19:59:59','00018'),('https://confortec.com.br/produto/aquecedor-a-gas-ko-36wh-home-glp-36-l-min/','AQUECEDOR A GÁS KOMECO – KO 36WH HOME – 36l/min','https://confortec.com.br/wp-content/uploads/2025/03/1-3.png','3.964,00','10x de R$ 455,86','2025-12-16 19:59:59','01525'),('https://confortec.com.br/produto/aquecedor-a-gas-komeco-21sl-decor-glp-21-l-min/','AQUECEDOR A GÁS KOMECO – KO 21SL DECOR C/ WI-FI – CINZA GLP – 21 l/min','https://confortec.com.br/wp-content/uploads/2024/07/Design-sem-nome-5.jpg','2.387,00.','10x de R$ 304,75','2025-12-16 19:59:59',''),('https://confortec.com.br/produto/aquecedor-a-gas-komeco-ko-16wh-decor/','AQUECEDOR A GÁS KOMECO – KO 16WH DECOR – 16l/min','https://confortec.com.br/wp-content/uploads/2025/03/1.png','2.195,00','10x de R$ 252,45','2025-12-16 19:59:59','01522'),('https://confortec.com.br/produto/aquecedor-a-gas-komeco-ko-16wh-home/','AQUECEDOR A GÁS KOMECO 16WH HOME – 16l/min','https://confortec.com.br/wp-content/uploads/2024/10/Fotos1024xPsite.png','1.674,15','10x de R$ 192,52','2025-12-16 19:59:59','01470'),('https://confortec.com.br/produto/aquecedor-a-gas-komeco-ko21wh-home/','AQUECEDOR A GÁS KOMECO – KO 21WH HOME – 21l/min','https://confortec.com.br/wp-content/uploads/2024/10/Fotos1024xPsite.png','1.870,00','10x de R$ 215,05','2025-12-16 19:59:59','01471'),('https://confortec.com.br/produto/aquecedor-automatico-33d-prime-1bflp1/','AQUECEDOR A GÁS DIGITAL 33D PRIME 1BFLP1','https://confortec.com.br/wp-content/uploads/2020/10/AQUECEDOR-AUTOMATICO-33D-PRIME-1BFLP1.png','4.582,11','10xR$504,03','2025-12-16 20:00:00','00048'),('https://confortec.com.br/produto/aquecedor-automatico-ko-26di-prime-1iflp1/','AQUECEDOR A GÁS DIGITAL KO 26DI PRIME 1IFLP1','https://confortec.com.br/wp-content/uploads/2020/10/AQUECEDOR-AUTOMATICO-KO-26DI-PRIME-1IFLP1.png','3.700,00','10xR$407,00','2025-12-16 20:00:00','00043'),('https://confortec.com.br/produto/aquecedor-de-acumulacao-eletrico-100/','AQUECEDOR DE ACUMULAÇÃO ELÉTRICO- RINNAI – RET-100 M','https://confortec.com.br/wp-content/uploads/2025/06/01.png','3.230,00','10x de R$ 371,45','2025-12-16 19:59:59','1549'),('https://confortec.com.br/produto/aquecedor-digital-glp-21-l/','AQUECEDOR DIGITAL KO PRIME 21D – BRANCO GLP – 21 l/min','https://confortec.com.br/wp-content/uploads/2021/05/AQUECEDOR-DIGITAL-KOMECO-PRIME-20D-BRANCO-GLP-20-lmin.png','2.240,00','10xR$257,60','2025-12-16 19:59:59','00046'),('https://confortec.com.br/produto/aquecedor-digital-home-26-l/','AQUECEDOR DIGITAL KOMECO KO 26WH HOME – GLP – 26 l/min','https://confortec.com.br/wp-content/uploads/2024/10/Fotos1024xPsite.png','2.927,50','10xR$336,66','2025-12-16 19:59:59','00047'),('https://confortec.com.br/produto/aquecedor-digital-komeco-prime-16d-branco/','AQUECEDOR DIGITAL KOMECO – PRIME 16D – BRANCO GLP – 16 l/min','https://confortec.com.br/wp-content/uploads/2024/11/Fotos1024xPsite.png','1.965,60','10x de R$ 225,97','2025-12-16 19:59:59','00038'),('https://confortec.com.br/produto/aquecedor-digital-komeco-prime-inox/','AQUECEDOR DIGITAL KOMECO 21DI PRIME – INOX – GLP – 21 l/min','https://confortec.com.br/wp-content/uploads/2018/06/AQUECEDOR-DIGITAL-KOMECO-PRIME-20DI-INOX-GLP-20-lmin.png','2.340,00','10x de R$ 269,10','2025-12-16 19:59:59',''),('https://confortec.com.br/produto/aquecedor-komeco-black-16-litros-glp/','AQUECEDOR KOMECO BLACK 16 LITROS GLP','https://confortec.com.br/wp-content/uploads/2022/01/novo-aquec-site-1.png','2.460,00','10xR$270,60','2025-12-16 19:59:59','00637'),('https://confortec.com.br/produto/boia-de-nivel-eletrica-solarvac/','BOIA DE NÍVEL ELÉTRICA – SOLAR VAC','https://confortec.com.br/wp-content/uploads/2024/09/Fotos1024xPsite-6.png','62,50','10x de R$ 7,18','2025-12-16 19:59:59',''),('https://confortec.com.br/produto/boiler-200l-komeco-alta-pressao/','BOILER 200L KOMECO – DESNÍVEL – ALTA PRESSÃO – AÇO INOX 304','https://confortec.com.br/wp-content/uploads/2021/03/SOLARVAC-1.png','3.516,70','10x R$ 404,42','2025-12-16 19:59:59','00012'),('https://confortec.com.br/produto/boiler-200l-solar-komeco-bp-inox-304/','BOILER 200L KOMECO – DESNÍVEL – BAIXA PRESSÃO – AÇO INOX 304','https://confortec.com.br/wp-content/uploads/2020/03/boiler.jpg','2.424,94','10x R$ 278,87','2025-12-16 19:59:59','00005'),('https://confortec.com.br/produto/boiler-400l-aco-inox-304-em-nivel-bp/','BOILER 400L AÇO INOX 304 BP EM NIVEL','https://confortec.com.br/wp-content/uploads/2024/06/BOILER-KOMECO-EM-NIVEL-1.png','3.165,64','10x de R$ 364,00','2025-12-16 19:59:59',''),('https://confortec.com.br/produto/boiler-400l-aco-inox-316-em-nivel/','BOILER 400L BP AÇO INOX 316 EM NIVEL','https://confortec.com.br/wp-content/uploads/2024/06/BOILER-KOMECO-EM-NIVEL-1.png','3.492,00','10x de R$ 401,58','2025-12-16 19:59:59',''),('https://confortec.com.br/produto/boiler-500l-aco-inox-304-bp-em-nivel/','BOILER 500L AÇO INOX 304 BP EM NIVEL','https://confortec.com.br/wp-content/uploads/2024/06/BOILER-KOMECO-EM-NIVEL-1.png','3.396,00','10x de R$ 390,54','2025-12-16 19:59:59','00018'),('https://confortec.com.br/produto/boiler-500l-aco-inox-316-em-nivel-bp/','BOILER EM NIVEL 500L BP AÇO INOX 316','https://confortec.com.br/wp-content/uploads/2024/06/BOILER-KOMECO-EM-NIVEL-1.png','3.716,00','10x de R$ 427,35','2025-12-16 19:59:59','01425'),('https://confortec.com.br/produto/boiler-600l-komeco-desnivel-baixa-pressao-aco-inox-316/','BOILER 600L KOMECO – DESNÍVEL – BAIXA PRESSÃO – AÇO INOX 316','https://confortec.com.br/wp-content/uploads/2021/10/boiler_solar_alta_pressao_200l_inox_komeco_87418261_de6d_600x600.jpg','4.366,75','10x R$ 502,18','2025-12-16 19:59:59','00011'),('https://confortec.com.br/produto/boiler-800-litros-baixa-pressao-aco-304/','BOILER 800L EM DESNÍVEL BP AÇO 304 – BAIXA PRESSÃO','https://confortec.com.br/wp-content/uploads/2021/10/boiler_solar_alta_pressao_200l_inox_komeco_87418261_de6d_600x600.jpg','5.532,00','10x R$ 636,18','2025-12-16 20:00:00','00989'),('https://confortec.com.br/produto/boiler-desnivel-600l-bp-aco-inox-316/','BOILER 600L KOMECO – DESNÍVEL – BAIXA PRESSÃO – AÇO INOX 316','https://confortec.com.br/wp-content/uploads/2021/10/boiler_solar_alta_pressao_200l_inox_komeco_87418261_de6d_600x600.jpg','4.292,00','10x R$ 493,58','2025-12-16 19:59:59','00011'),('https://confortec.com.br/produto/boiler-em-desnivel-500l-bp-aco-304/','BOILER 500L KOMECO – DESNÍVEL – BAIXA PRESSÃO – AÇO INOX 304','https://confortec.com.br/wp-content/uploads/2021/10/boiler_solar_alta_pressao_200l_inox_komeco_87418261_de6d_600x600.jpg','2.980,00','10x R$ 342,70','2025-12-16 19:59:59','00009'),('https://confortec.com.br/produto/boiler-em-nivel-600l-bp-aco-inox-304/','BOILER EM NIVEL 600L BP AÇO INOX 304','https://confortec.com.br/wp-content/uploads/2024/06/BOILER-KOMECO-EM-NIVEL-1.png','3.898,50','10x de R$ 448,32','2025-12-16 19:59:59',''),('https://confortec.com.br/produto/boiler-em-nivel-600l-bp-aco-inox-316/','BOILER EM NIVEL 600L BP AÇO INOX 316','https://confortec.com.br/wp-content/uploads/2024/06/BOILER-KOMECO-EM-NIVEL-1.png','4.536,00','10x de R$ 522,00','2025-12-16 19:59:59',''),('https://confortec.com.br/produto/boiler-komeco-600l-bp-aco-304/','BOILER EM DESNÍVEL 600 L BP AÇO 304 – BAIXA PRESSÃO','https://confortec.com.br/wp-content/uploads/2021/10/boiler_solar_alta_pressao_200l_inox_komeco_87418261_de6d_600x600.jpg','3.350,00','10x R$ 385,25','2025-12-16 19:59:59','00014'),('https://confortec.com.br/produto/boiler-komeco-800l-baixa-pressao/','BOILER KOMECO – DESNÍVEL 800 L – BAIXA PRESSÃO – AÇO INOX 316','https://confortec.com.br/wp-content/uploads/2021/10/boiler_solar_alta_pressao_200l_inox_komeco_87418261_de6d_600x600.jpg','6.583,00','10x R$ 757,04','2025-12-16 19:59:59','00634'),('https://confortec.com.br/produto/boiler-komeco-desnivel-400l-alta-pressao-aco-inox-304/','BOILER KOMECO – DESNÍVEL 400L – ALTA PRESSÃO – AÇO INOX 304','https://confortec.com.br/wp-content/uploads/2021/03/SOLARVAC-1.png','4.600,00','10x R$ 529,00','2025-12-16 19:59:59','01453'),('https://confortec.com.br/produto/boiler-komeco-desnivel-400l-baixa-pressao/','BOILER 400L KOMECO – DESNÍVEL – BAIXA PRESSÃO – AÇO INOX 316','https://confortec.com.br/wp-content/uploads/2021/10/boiler_solar_alta_pressao_200l_inox_komeco_87418261_de6d_600x600.jpg','3.185,00','10x R$ 366,27','2025-12-16 19:59:59','00008'),('https://confortec.com.br/produto/boiler-komeco-desnivel-500l-baixa-pressao/','BOILER 500L KOMECO – DESNÍVEL – BAIXA PRESSÃO – AÇO INOX 316','https://confortec.com.br/wp-content/uploads/2021/10/boiler_solar_alta_pressao_200l_inox_komeco_87418261_de6d_600x600.jpg','3.530,00','10x R$ 405,95','2025-12-16 19:59:59','00010'),('https://confortec.com.br/produto/boiler-komeco-desnivel-600l-ap-inox-304/','BOILER KOMECO – DESNÍVEL 600L – ALTA PRESSÃO – AÇO INOX 304','https://confortec.com.br/wp-content/uploads/2021/03/SOLARVAC-1.png','5.055,00','10x R$ 581,33','2025-12-16 19:59:59','01340'),('https://confortec.com.br/produto/boiler-komeco-nivel-600l-alta-pressao-aco-inox-316/','BOILER KOMECO – EM NÍVEL 600L – ALTA PRESSÃO – AÇO INOX 316','https://confortec.com.br/wp-content/uploads/2021/03/SOLARVAC-1.png','6.645,00','10x R$ 764,17','2025-12-16 19:59:59','01615'),('https://confortec.com.br/produto/boiler-solar-komeco-200l-baixa-pressao/','BOILER KOMECO – DESNÍVEL 200 L – BAIXA PRESSÃO – AÇO INOX 316','https://confortec.com.br/wp-content/uploads/2020/03/boiler-1.jpg','2.830,94','10x R$ 325,56','2025-12-16 19:59:59','00006'),('https://confortec.com.br/produto/boiler-solar-komeco-400l-bp-aco-inox-304/','BOILER KOMECO – DESNÍVEL 400 L – BAIXA PRESSÃO – AÇO INOX 304','https://confortec.com.br/wp-content/uploads/2018/03/imagem_2022-04-06_101609.png','2.584,00','10x R$ 297,16','2025-12-16 19:59:59','00007'),('https://confortec.com.br/produto/bomba-305w-bronze-220v-pressostato/','BOMBA CIRCULADORA 305W BRONZE 220V + PRESSOSTATO MONTADO – SOLAR VAC','https://confortec.com.br/wp-content/uploads/2025/12/1.png','1.072,00','10x R$ 123,28','2025-12-16 19:59:59','01618'),('https://confortec.com.br/produto/bomba-circuladora-tp20-bronze-220v/','BOMBA DE CIRCULAÇÃO DE ÀGUA TP20 BRONZE 220v','https://confortec.com.br/wp-content/uploads/2025/12/Bomba-circuladora-de-agua-frente.png','405,00','10x R$ 46,57','2025-12-16 19:59:59','01619'),('https://confortec.com.br/produto/bomba-inversora-smartpress-32-komeco/','BOMBA INVERSORA SMARTPRESS 32 – KOMECO – 220V','https://confortec.com.br/wp-content/uploads/2025/01/S32KO-frente.png','1.760,00.','10x R$ 202,40','2025-12-16 19:59:59','01508'),('https://confortec.com.br/produto/bomba-para-agua-quente-1-2cv/','BOMBA PARA ÁGUA QUENTE 1/2CV','https://confortec.com.br/wp-content/uploads/2023/03/4.png','1.380,00','10x R$ 158,70','2025-12-16 19:59:59','01245'),('https://confortec.com.br/produto/bomba-press-up-56-1cv/','BOMBA ULTRA PRESS UP 56 1CV','https://confortec.com.br/wp-content/uploads/2020/12/Sem-titulo1.png','502,43','10x R$ 57,78','2025-12-16 19:59:59','00082'),('https://confortec.com.br/produto/bomba-smartpress-37-komeco-1cv/','BOMBA SMARTPRESS 37 – 1CV – KOMECO','https://confortec.com.br/wp-content/uploads/2025/06/1-1.png','2.550,00','10x R$ 293,25','2025-12-16 19:59:59','1350'),('https://confortec.com.br/produto/bomba-ultra-press-autoaspirante-upa-32-1-2cv/','BOMBA ULTRA PRESS AUTOASPIRANTE UPA 32 1/2CV','https://confortec.com.br/wp-content/uploads/2020/12/D_NQ_NP_630001-MLB43221549351_082020-V.jpg','478,50','10x R$ 55,03','2025-12-16 19:59:59','00079'),('https://confortec.com.br/produto/bomba-ultra-press-autoaspirante-upa-52-1cv/','BOMBA ULTRA PRESS AUTOASPIRANTE UPA 52 1CV','https://confortec.com.br/wp-content/uploads/2020/12/D_NQ_NP_630001-MLB43221549351_082020-V.jpg','590,15','10x R$ 67,87','2025-12-16 20:00:00','00080'),('https://confortec.com.br/produto/bomba-ultra-press-up-35-1-2cv/','BOMBA ULTRA PRESS UP 35 1/2CV','https://confortec.com.br/wp-content/uploads/2020/12/Sem-titulo-3.png','311,03','10x R$ 35,77','2025-12-16 19:59:59','00081'),('https://confortec.com.br/produto/carregador-de-carro-eletrico-7kw-220v/','CARREGADOR DE CARRO ELÉTRICO 7KW – 220V – KOMECO','https://confortec.com.br/wp-content/uploads/2025/11/2.png','3.981,00','10x R$ 457,81','2025-12-16 19:59:59',''),('https://confortec.com.br/produto/coletor-solar-15-tubos-a-vacuo-vertical-baixa-pressao/','COLETOR SOLAR – 15 TUBOS A VÁCUO – VERTICAL – BAIXA PRESSÃO','https://confortec.com.br/wp-content/uploads/2022/07/1-1.png','2.160,00','10x R$ 248,40','2025-12-16 19:59:59','00911'),('https://confortec.com.br/produto/coletor-solar-30-tubos-a-vacuo-horizontal/','COLETOR SOLAR – 30 TUBOS A VÁCUO – BAIXA PRESSÃO – HORIZONTAL','https://confortec.com.br/wp-content/uploads/2022/05/3-1.png','3.657,00.','10x R$ 420,55','2025-12-16 19:59:59','00909'),('https://confortec.com.br/produto/coletor-solar-30-tubos-a-vacuo-vertical-baixa-pressao/','COLETOR SOLAR – 30 TUBOS A VÁCUO VERTICAL – BAIXA PRESSÃO','https://confortec.com.br/wp-content/uploads/2022/07/COLETOR-SOLAR-–-30-TUBOS-A-VACUO-–-BAIXA-PRESSAO.jpg','3.100,00','10x R$ 356,50','2025-12-16 19:59:59','00913'),('https://confortec.com.br/produto/coletor-solar-30-tubos-bp-vertical/','COLETOR SOLAR KOMECO – 30 TUBOS A VÁCUO – BAIXA PRESSÃO – VERTICAL','https://confortec.com.br/wp-content/uploads/2018/03/Design-sem-nome-8.png','3.130,00','10x R$ 359,95','2025-12-16 19:59:59','00001'),('https://confortec.com.br/produto/coletor-solar-40-tubos-a-vacuo-baixa-pressao-horizontal/','COLETOR SOLAR – 40 TUBOS A VÁCUO – BAIXA PRESSÃO – HORIZONTAL','https://confortec.com.br/wp-content/uploads/2022/05/3-1.png','4.200,00','10x R$ 483,00','2025-12-16 19:59:59','00910'),('https://confortec.com.br/produto/coletor-solar-40-tubos-a-vacuo-solarvac/','COLETOR SOLAR DE 40 TUBOS A VÁCUO – SOLARVAC','https://confortec.com.br/wp-content/uploads/2022/05/3-1.png','5.785,60','10x R$ 665,34','2025-12-16 19:59:59',''),('https://confortec.com.br/produto/coletor-solar-50-tubos-a-vacuo-baixa-pressao-horizontal/','COLETOR SOLAR – 50 TUBOS A VÁCUO – BAIXA PRESSÃO – HORIZONTAL','https://confortec.com.br/wp-content/uploads/2022/05/3-1.png','4.999,00.','10x R$ 574,88','2025-12-16 19:59:59','01128'),('https://confortec.com.br/produto/coletor-solar-a-vacuo-acoplado-de-15-tubos/','COLETOR SOLAR – ACOPLADO DE 15 TUBOS – BAIXA PRESSÃO','https://confortec.com.br/wp-content/uploads/2022/01/WhatsApp-Image-2022-01-14-at-16.31.09.jpeg','5.345,73','10x R$ 614,76','2025-12-16 19:59:59','00641'),('https://confortec.com.br/produto/coletor-solar-acoplado-20-tubos/','COLETOR SOLAR – ACOPLADO 20 TUBOS – BAIXA PRESSÃO','https://confortec.com.br/wp-content/uploads/2022/01/WhatsApp-Image-2022-01-14-at-16.31.09.jpeg','6.180,00','10x R$ 710,70','2025-12-16 19:59:59','00639'),('https://confortec.com.br/produto/coletor-solar-plano-15-x-1-m/','COLETOR SOLAR PLANO KOMECO -1,5 X 1,0 m – SERPENTINA EM AÇO INOX','https://confortec.com.br/wp-content/uploads/2024/02/1-5.png','1.294,68','10x R$ 148,89','2025-12-16 19:59:59','01394'),('https://confortec.com.br/produto/coletor-solar-plano-komeco-2-x-1-m/','COLETOR SOLAR PLANO KOMECO – 2 x 1m – SERPENTINA EM AÇO INOX','https://confortec.com.br/wp-content/uploads/2024/02/2-5.png','1.642,77','10x R$ 188,92','2025-12-16 19:59:59','01395'),('https://confortec.com.br/produto/conjunto-motor-ventilador-ko-20d-di/','CONJUNTO MOTOR VENTILADOR KO 20D.DI GLP OU GN','https://confortec.com.br/wp-content/uploads/2022/06/1.png','460,00','10x R$ 52,90','2025-12-16 19:59:59','00859'),('https://confortec.com.br/produto/controlador-diferencial-anasol-digital-full-gauge/','CONTROLADOR DIFERENCIAL ANASOL – DIGITAL – FULL GAUGE','https://confortec.com.br/wp-content/uploads/2023/10/1.png','244,00','10x R$ 28,06','2025-12-16 19:59:59','01343'),('https://confortec.com.br/produto/controlador-gridzero-st8700c-sultech/','CONTROLADOR GRID ZERO – ST 8700C – SULTECH','https://confortec.com.br/wp-content/uploads/2025/10/controlador-zero-grid-Sultech-frenti-st8700.png','4.205,00','10x R$ 483,57','2025-12-16 19:59:59','01599'),('https://confortec.com.br/produto/cuba-de-pressao-tp-820-ptg1-825-ptg1/','CUBA DE PRESSÃO TP 820 PTG1 / 825 PTG1','https://confortec.com.br/wp-content/uploads/2021/02/01000301271-c61287449907c6d58515336567763111-1024-1024.jpg','366,50','10x R$ 42,15','2025-12-16 20:00:00','00067'),('https://confortec.com.br/produto/disjuntores-bifasicos-steck/','DISJUNTORES BIFÁSICOS STECK CURVA C 6 KA','https://confortec.com.br/wp-content/uploads/2023/03/1-2.png','78,00','10x R$ 8,97','2025-12-16 19:59:59','00901'),('https://confortec.com.br/produto/disjuntores-trifasicos-steck/','DISJUNTORES TRIFÁSICOS STECK CURVA C 6 KA','https://confortec.com.br/wp-content/uploads/2023/03/2-1.png','102,50','10x R$ 11,79','2025-12-16 19:59:59','01226'),('https://confortec.com.br/produto/distribuidor-de-gas-completo-glp-ko-15d-di/','DISTRIBUIDOR DE GÁS COMPLETO GLP KO 15D.DI','https://confortec.com.br/wp-content/uploads/2021/08/IMG-20210810-WA0042.jpg','60,67','10x R$ 6,98','2025-12-16 19:59:59','01255'),('https://confortec.com.br/produto/distribuidor-de-gas-completo-ko-16d-home-glp-modelo-novo/','DISTRIBUIDOR DE GÁS COMPLETO KO 16D HOME GLP MODELO NOVO','https://confortec.com.br/wp-content/uploads/2021/08/IMG-20210810-WA0041.jpg','111,37','10x R$ 12,81','2025-12-16 19:59:59','00049'),('https://confortec.com.br/produto/distribuidor-de-gas-completo-ko-20-21-d-di-prime-glp/','DISTRIBUIDOR DE GÁS COMPLETO KO 20.21 D.DI PRIME GLP','https://confortec.com.br/wp-content/uploads/2023/01/1.png','166,90','10x R$ 19,19','2025-12-16 19:59:59','01214'),('https://confortec.com.br/produto/distribuidor-de-gas-completo-ko-21d-home-gn/','DISTRIBUIDOR DE GÁS COMPLETO KO 21D HOME GLP MODELO NOVO','https://confortec.com.br/wp-content/uploads/2021/03/1.png','123,25','10x R$ 14,17','2025-12-16 20:00:00','01263'),('https://confortec.com.br/produto/ducha-rinnai-baixa-vazao-rsh-2000/','DUCHA RINNAI BAIXA VAZÃO RSH-2000','https://confortec.com.br/wp-content/uploads/2020/11/ducharinnaiRSH.jpg','340,00','10x R$ 39,10','2025-12-16 20:00:00','00064'),('https://confortec.com.br/produto/eliminadora-de-ar-ventosa-plastica-1-2/','VÁLVULA ELIMINADORA DE AR VENTOSA PLÁSTICA 1.2”','https://confortec.com.br/wp-content/uploads/2023/05/7.png','63,00','10x R$ 7,24','2025-12-16 19:59:59','01274'),('https://confortec.com.br/produto/esfregao-multi-angulos-cabo-em-aluminio/','ESFREGÃO MULTI ÂNGULOS + CABO DE ALUMÍNIO','https://confortec.com.br/wp-content/uploads/2020/09/esfregao.jpg','0,00','Consultar','2025-12-16 19:59:59','00094'),('https://confortec.com.br/produto/filtro-de-gas-cb901-filtrogas/','FILTRO DE GÁS CB901 – FILTROGÁS','https://confortec.com.br/wp-content/uploads/2025/04/1.png','275,00','10x de R$ 31,62','2025-12-16 19:59:59','01531'),('https://confortec.com.br/produto/flexivel-1-50cm-aco-inox-304/','FLEXIVEL 1” 50CM – AÇO INOX 304','https://confortec.com.br/wp-content/uploads/2022/01/8.png','149,00','10x R$ 17,13','2025-12-16 19:59:59','00636'),('https://confortec.com.br/produto/flexivel-3-4-50cm-aco-inox-304/','FLEXIVEL 3/4” 50CM – AÇO INOX 304','https://confortec.com.br/wp-content/uploads/2022/01/4.png','120,00','10x R$ 13,80','2025-12-16 19:59:59','00635'),('https://confortec.com.br/produto/fluxostato-tp80-g3-g4/','FLUXOSTATO TP40 G3.G4','https://confortec.com.br/wp-content/uploads/2021/02/IMG_20210215_115513047_HDR-scaled-1.jpg','66,50','10x R$ 7,65','2025-12-16 20:00:00','00069'),('https://confortec.com.br/produto/fluxostato-tp80-g4-v18-10/','FLUXOSTATO TP80 G4 V18.10','https://confortec.com.br/wp-content/uploads/2021/02/IMG_20210215_115653946-scaled-1.jpg','92,72','10x R$ 10,66','2025-12-16 20:00:00','00070'),('https://confortec.com.br/produto/full-charge-portatil-fc-ca-003-3-7-kw-ca/','FULL CHARGE PORTÁTIL FC.CA-003 / 3.7 kW CA','https://confortec.com.br/wp-content/uploads/2024/02/1-2.png','2.415,00','10x R$ 277,73','2025-12-16 19:59:59',''),('https://confortec.com.br/produto/full-charge-smart-fc-ca-0007-7-4-kw-ca/','FULL CHARGE SMART FC.CA-0007 / 7.4 kW CA','https://confortec.com.br/wp-content/uploads/2024/02/3-2.png','3.915,00','10x R$ 450,23','2025-12-16 19:59:59',''),('https://confortec.com.br/produto/full-charge-smart-fc-ca-07-4g-7-4-kw-ca/','FULL CHARGE SMART FC.CA-07.4G / 7.4 kW CA','https://confortec.com.br/wp-content/uploads/2024/02/3-2.png','5.535,00','10x R$ 636,52','2025-12-16 19:59:59',''),('https://confortec.com.br/produto/full-charge-swift-fc-cc-030-30kw-cc/','FULL CHARGE SWIFT FC.CC-030 / 30kW CC','https://confortec.com.br/wp-content/uploads/2024/02/1.png','64.530,00','10x R$ 7.420,95','2025-12-16 19:59:59',''),('https://confortec.com.br/produto/full-charge-swift-fc-cc-040-40kw-cc/','FULL CHARGE SWIFT FC.CC-040 / 40kW CC','https://confortec.com.br/wp-content/uploads/2024/02/1.png','76.950,00','10x R$ 8.849,25','2025-12-16 19:59:59',''),('https://confortec.com.br/produto/inversor-solar-fotovoltaico-on-grid-growatt-68210-5/','INVERSOR SOLAR FOTOVOLTAICO ON GRID GROWATT (68210-5)','https://confortec.com.br/wp-content/uploads/2021/06/Design-sem-nome-3.png','0,00','Consultar','2025-12-09 20:18:47',NULL),('https://confortec.com.br/produto/kit-aquecedor-solar-600l-baixa-pressao-agua-de-poco-circulacao-forcada/','KIT AQUECEDOR SOLAR – 600L – BAIXA PRESSÃO – AGUA DE POÇO – CIRCULAÇÃO FORÇADA','https://confortec.com.br/wp-content/uploads/2021/06/1-18.png','11.230,51','10x R$ 1.291,51','2025-12-16 20:00:00',''),('https://confortec.com.br/produto/kit-aquecedor-solar-circ-forcada-baixa-pressao-400l-agua-rede-publica/','KIT AQUECEDOR SOLAR – CIRC FORÇADA – BAIXA PRESSÃO – 400L – AGUA REDE PUBLICA','https://confortec.com.br/wp-content/uploads/2021/06/KIT-SOLAR-FORCADO.png','8.798,19','10x R$ 1.011,79','2025-12-16 20:00:00',''),('https://confortec.com.br/produto/kit-aquecedor-solar-circ-forcada-baixa-pressao-600l-agua-rede-publica/','KIT AQUECEDOR SOLAR – CIRC FORÇADA – BAIXA PRESSÃO – 600L – AGUA REDE PUBLICA','https://confortec.com.br/wp-content/uploads/2021/06/1-17.png','10.770,23','10x R$ 1.238,58','2025-12-16 20:00:00',''),('https://confortec.com.br/produto/kit-aquecedor-solar-desnivel-baixa-pressao-600l-agua-de-poco/','KIT: AQUECEDOR SOLAR – DESNÍVEL – BAIXA PRESSÃO – 600L – AGUA DE POÇO','https://confortec.com.br/wp-content/uploads/2021/06/1-20.png','10.334,06','10x R$ 1.188,42','2025-12-16 19:59:59',''),('https://confortec.com.br/produto/kit-aquecedor-solar-desnivel-baixa-pressao-600l-agua-rede-publica/','KIT: AQUECEDOR SOLAR – DESNÍVEL – BAIXA PRESSÃO – 600L – AGUA REDE PUBLICA','https://confortec.com.br/wp-content/uploads/2021/06/1-19.png','9.873,79','10x R$ 1.135,49','2025-12-16 20:00:00',''),('https://confortec.com.br/produto/kit-chamine-aquecedor-a-gas-60mm/','KIT CHAMINÉ – AQUECEDOR A GÁS – 60MM','https://confortec.com.br/wp-content/uploads/2024/03/1-1.png','145,00','10x R$ 16,68','2025-12-16 19:59:59','01402'),('https://confortec.com.br/produto/kit-chamine-aquecedor-a-gas-80mm/','KIT CHAMINÉ PARA AQUECEDOR A GÁS – 80mm','https://confortec.com.br/wp-content/uploads/2024/03/4-1.png','165,00','10x R$ 18,97','2025-12-16 19:59:59','01401'),('https://confortec.com.br/produto/kit-conexao-aquecedor-40-cm/','KIT CONEXÃO AQUECEDOR 40 CM','https://confortec.com.br/wp-content/uploads/2020/10/Design-sem-nome-31.png','198,00','10x R$ 22,77','2025-12-16 19:59:59','01290'),('https://confortec.com.br/produto/komeco-bomba-de-calor-inverter-kobc-25qc/','BOMBA DE CALOR INVERTER – KOBC 25QC – KOMECO','https://confortec.com.br/wp-content/uploads/2025/03/1-4.png','10.360,00','10x de R$ 1.191,40','2025-12-16 19:59:59','01527'),('https://confortec.com.br/produto/manometro-de-coluna-de-agua-mm800/','MANÔMETRO DE COLUNA DE ÁGUA – MM800','https://confortec.com.br/wp-content/uploads/2024/02/14.png','525,00','10xR$57,75','2025-12-16 19:59:59','01392'),('https://confortec.com.br/produto/manometro-de-coluna/','MANÔMETRO DE COLUNA DE ÁGUA – MM400','https://confortec.com.br/wp-content/uploads/2018/09/IMG_20210628_140431381_HDR-scaled-1.jpg','340,00','10x de R$39,10','2025-12-16 19:59:59','00057'),('https://confortec.com.br/produto/microsol-bmp-advanced-full-gauge/','MICROSOL BMP ADVANCED CONNECT – AQUECIMENTO SOLAR – FULL GAUGE','https://confortec.com.br/wp-content/uploads/2023/10/1-2.png','493,00','10x R$ 56,69','2025-12-16 19:59:59','01342'),('https://confortec.com.br/produto/microsol-rst-advanced-connect-full-gauge/','MICROSOL RST ADVANCED CONNECT – AQUECIMENTO/REFRIGERAÇÃO – FULL GAUGE','https://confortec.com.br/wp-content/uploads/2023/10/1-1.png','370,00','10x R$ 42,55','2025-12-16 19:59:59',''),('https://confortec.com.br/produto/minipressurizador-para-agua-fria-350w/','MINIPRESSURIZADOR PARA ÁGUA FRIA 350W','https://confortec.com.br/wp-content/uploads/2023/03/10.png','1.834,67','10x R$ 210,99','2025-12-16 19:59:59','01247'),('https://confortec.com.br/produto/minipressurizador-para-agua-quente-350w/','MINIPRESSURIZADOR PARA ÁGUA QUENTE 350W','https://confortec.com.br/wp-content/uploads/2023/03/7.png','1.883,30','10x R$ 216,58','2025-12-16 19:59:59','01246'),('https://confortec.com.br/produto/minipressurizador-solarvac-80w/','MINIPRESSURIZADOR SOLARVAC 80W','https://confortec.com.br/wp-content/uploads/2024/09/Fotos1024xPsite.png','307,50','10x R$ 35,36','2025-12-16 19:59:59','01463'),('https://confortec.com.br/produto/modulo-de-comunicacao-wifi-prime-smart-wi-fi/','MODULO DE COMUNICACAO WIFI PRIME – SMART WI-FI','https://confortec.com.br/wp-content/uploads/2024/06/COLETOR-SOLAR-–-30-TUBOS-A-VACUO-VERTICAL-–-BAIXA-PRESSAO.jpg','206,00','10x R$ 23,69','2025-12-16 19:59:59',''),('https://confortec.com.br/produto/modulo-wi-fi-controle-de-produtos/','MODULO WIFI AQUECEDOR RINNAI','https://confortec.com.br/wp-content/uploads/2020/12/MODULORINNAI.png','360,00','10x R$ 41,40','2025-12-16 20:00:00','00066'),('https://confortec.com.br/produto/oring-fluxostato-tp40-g3-g4/','ORING FLUXOSTATO TP40 G3 G4','https://confortec.com.br/wp-content/uploads/2021/02/IMG_20210215_112604793-scaled-1.jpg','18,14','10x R$ 2,09','2025-12-16 20:00:00','00071'),('https://confortec.com.br/produto/oring-fluxostato-tp80-g3-g4/','ORING FLUXOSTATO TP80 G3 G4','https://confortec.com.br/wp-content/uploads/2021/02/IMG_20210215_112534456_HDR-scaled-1.jpg','44,33','10x R$ 5,10','2025-12-16 20:00:00','00072'),('https://confortec.com.br/produto/oring-parafuso-purga-tp80-g1-g3-e-g4/','ORING PARAFUSO PURGA TP80 G1, G3 E G4','https://confortec.com.br/wp-content/uploads/2021/02/IMG_20210215_112629708-scaled-1.jpg','20,15','10x R$ 2,32','2025-12-16 20:00:00','00073'),('https://confortec.com.br/produto/painel-digital-ko-16-21-d-home/','PAINEL DIGITAL KO 16.21 D HOME','https://confortec.com.br/wp-content/uploads/2022/05/1.png','415,00','10x R$ 47,72','2025-12-16 19:59:59','00804'),('https://confortec.com.br/produto/painel-digital-ko-20d-di/','PAINEL DIGITAL KO 20D.DI','https://confortec.com.br/wp-content/uploads/2023/05/1.png','245,00','10x R$ 28,18','2025-12-16 19:59:59','01267'),('https://confortec.com.br/produto/placa-de-controle-eletr-s-timer-ko-15-20-d-di-prime/','PLACA DE CONTROLE ELETR S/TIMER KO 15.16.20.21 D.DI PRIME','https://confortec.com.br/wp-content/uploads/2021/02/IMG_20210215_101416961-scaled-1.jpg','639,20','10x R$ 73,51','2025-12-16 20:00:00','01212'),('https://confortec.com.br/produto/placa-de-controle-eletr-s-timer-ko-16-21-d-home-modelo-novo/','PLACA DE CONTROLE ELETR S/TIMER KO 16.21 D HOME MODELO NOVO','https://confortec.com.br/wp-content/uploads/2021/08/IMG-20210810-WA0045.jpg','310,50','10x R$ 35,71','2025-12-16 19:59:59','00054'),('https://confortec.com.br/produto/placa-de-controle-eletr-s-timer-ko-26-d-home/','PLACA DE CONTROLE ELETR S/TIMER KO 26 D HOME','https://confortec.com.br/wp-content/uploads/2022/09/1.png','884,94','10x R$ 101,77','2025-12-16 19:59:59','01125'),('https://confortec.com.br/produto/placa-de-controle-eletr-s-timer-ko-31d-di-conector-novo/','PLACA DE CONTROLE ELETR S/TIMER KO 31D.DI CONECTOR NOVO','https://confortec.com.br/wp-content/uploads/2023/07/1.png','581,60','10x R$ 66,88','2025-12-16 19:59:59','01326'),('https://confortec.com.br/produto/placa-de-identificacao-rge-2/','PLACA DE IDENTIFICAÇÃO – RGE','https://confortec.com.br/wp-content/uploads/2022/06/retas-13-pila-1.jpg','13,00','10x R$ 1,49','2025-12-16 19:59:59',''),('https://confortec.com.br/produto/placa-de-identificacao-rge/','PLACA DE IDENTIFICAÇÃO – RGE','https://confortec.com.br/wp-content/uploads/2022/06/cortadas-0.5-a-mais-1.jpg','13,50','10x R$ 1,55','2025-12-16 19:59:59',''),('https://confortec.com.br/produto/pressostato-ps-1100m/','PRESSOSTATO PS 1100M','https://confortec.com.br/wp-content/uploads/2022/08/Design-sem-nome-24.png','318,00','10x R$ 36,57','2025-12-16 19:59:59','01013'),('https://confortec.com.br/produto/pressurizador-komeco-tp-40-bronze-220v/','PRESSURIZADOR KOMECO TP 40 G4 BRONZE 220V','https://confortec.com.br/wp-content/uploads/2018/03/51354392_1GG.jpg','495,50','10x R$ 56,98','2025-12-16 19:59:59','00728'),('https://confortec.com.br/produto/pressurizador-komeco-tp-40-ferro/','PRESSURIZADOR KOMECO TP 40 G4 220V FERRO 220V','https://confortec.com.br/wp-content/uploads/2018/03/5ef0bf0551ff0_gg.jpg','445,00','10x R$ 51,17','2025-12-16 19:59:59','00076'),('https://confortec.com.br/produto/pressurizador-komeco-tp-80-bronze-220v/','PRESSURIZADOR KOMECO TP 80 G4 BRONZE 220V','https://confortec.com.br/wp-content/uploads/2018/03/Design-sem-nome-6.png','863,72','10x R$ 99,33','2025-12-16 19:59:59','00077'),('https://confortec.com.br/produto/pressurizador-komeco-tp-80-ferro-220v/','PRESSURIZADOR KOMECO TP 80 G4 FERRO 220V','https://confortec.com.br/wp-content/uploads/2018/03/Design-sem-nome-5.png','761,32','10x R$ 87,55','2025-12-16 19:59:59','00078'),('https://confortec.com.br/produto/pressurizador-tp-120-g1-bronze-220/','PRESSURIZADOR – BOMBA CIRCULADORA TP 120 G1 BRONZE 22V/60HZ – 350W','https://confortec.com.br/wp-content/uploads/2023/09/2.png','980,00','10x R$ 112,70','2025-12-16 19:59:59','01336'),('https://confortec.com.br/produto/refil-de-filtro-de-gas-cb901-scholl/','REFIL DE FILTRO DE GÁS – CB901 SCHOLL','https://confortec.com.br/wp-content/uploads/2025/04/2-1.png','68,00','10x de R$7,82','2025-12-16 19:59:59','01532'),('https://confortec.com.br/produto/refletor-solar-maxxy-30w-frio/','REFLETOR SOLAR MAXXY 30W FRIO','https://confortec.com.br/wp-content/uploads/2023/05/1-2.png','195,00','10x R$ 22,42','2025-12-16 19:59:59','01278'),('https://confortec.com.br/produto/refletor-solar-maxxy-60w-frio/','REFLETOR SOLAR MAXXY 60W FRIO','https://confortec.com.br/wp-content/uploads/2023/05/4-2.png','275,30','10x R$ 31,66','2025-12-16 19:59:59','01279'),('https://confortec.com.br/produto/resistencia-6000w-inox-316l-380-trifasico/','RESISTENCIA 6000W INOX 316L 380/220V TRIFASICO – 2′′','https://confortec.com.br/wp-content/uploads/2025/10/1.png','590,60','10x R$ 67,92','2025-12-16 19:59:59','01277'),('https://confortec.com.br/produto/resistencia-eletrica-1500w-para-coletor-solar-acoplado/','RESISTÊNCIA ELÉTRICA 1500W PARA COLETOR SOLAR ACOPLADO','https://confortec.com.br/wp-content/uploads/2022/01/RESISTENCIA-ELETRICA-1500W-PARA-COLETOR-SOLAR-ACOPLADO-1.png','262,00','10x R$ 30,13','2025-12-16 19:59:59','00642'),('https://confortec.com.br/produto/resistor-3000w-inox-316l-1-elem/','RESISTOR 3000W INOX 316 – 1 ELEMENTO','https://confortec.com.br/wp-content/uploads/2020/12/IMG_20201223_085808920-scaled-1.jpg','217,62','10x R$ 25,03','2025-12-16 19:59:59','00019'),('https://confortec.com.br/produto/resistor-tipo-u-imersao-inox-com-flange-1-1-4/','RESISTOR TIPO U IMERSAO INOX TRIFÁSICO COM FLANGE 1.1/4','https://confortec.com.br/wp-content/uploads/2021/06/WhatsApp-Image-2021-06-14-at-13.37.14.jpeg','840,00','10x R$ 96,60','2025-12-16 19:59:59','00022'),('https://confortec.com.br/produto/robo-aspirador-de-piscina-korp-30-komeco/','ROBÔ ASPIRADOR DE PISCINA KORP 30 AQUAPLUS – KOMECO','https://confortec.com.br/wp-content/uploads/2025/10/RoboAspirador.png','1.730,00','10x de R$ 198,95','2025-12-16 19:59:59',''),('https://confortec.com.br/produto/sens-de-fluxo-fluxostato-ko-15-20d-di-ko-16-21-home/','FLUXOSTATO – SENSOR DE FLUXO KO 15.20 D DI / KO 16.21 D HOME','https://confortec.com.br/wp-content/uploads/2021/02/IMG_20210215_115341161-scaled-1.jpg','56,42','10x R$ 6,49','2025-12-16 20:00:00','00055'),('https://confortec.com.br/produto/tanque-assistente-com-boia-para-coletor-solar-acoplado/','TANQUE ASSISTENTE COM BOIA PARA COLETOR SOLAR ACOPLADO','https://confortec.com.br/wp-content/uploads/2022/01/TANQUE-ASSISTENTE-COM-BOIA-PARA-COLETOR-SOLAR-ACOPLADO-1.png','399,17','10x R$ 45,90','2025-12-16 19:59:59','00643'),('https://confortec.com.br/produto/tanque-de-expansao-24l/','TANQUE DE EXPANSÃO COM MEMBRANA – 24L','https://confortec.com.br/wp-content/uploads/2024/02/1-6.png','430,50','10x R$ 49,51','2025-12-16 19:59:59','01396'),('https://confortec.com.br/produto/tanque-de-expansao-30l/','TANQUE DE EXPANSÃO COM MEMBRANA – 30L','https://confortec.com.br/wp-content/uploads/2024/02/9.png','671,90','10x R$ 77,27','2025-12-16 19:59:59','01398'),('https://confortec.com.br/produto/tanque-de-expansao-50l/','TANQUE DE EXPANSÃO COM MEMBRANA – 50L','https://confortec.com.br/wp-content/uploads/2024/02/5-3.png','774,90','10x R$ 89,11','2025-12-16 19:59:59','01397'),('https://confortec.com.br/produto/tanque-de-expansao-de-35l-aco-carbono-vertical-rowa/','ROWA – TANQUE DE EXPANSÃO DE 35L AÇO CARBONO VERTICAL','https://confortec.com.br/wp-content/uploads/2023/11/1606710985_99002b22db30f9d94e30.jpg','935,00','10x R$ 107,53','2025-12-16 19:59:59','01361'),('https://confortec.com.br/produto/termostato-0-90-3c-850mmpvc-shaft-komeco/','TERMOSTATO 0-90 +/- 3C° 850MM + PVC SHAFT 23MM – KOMECO','https://confortec.com.br/wp-content/uploads/2025/10/1-1.png','70,00','10x de R$ 8,05','2025-12-16 19:59:59',''),('https://confortec.com.br/produto/termostato-0-90-5c-950mm-pvc-shaft-23mm/','TERMOSTATO 0-90+/-5C 30A 900+/-50 MM+PVC SHAFT 23 MM – KOMECO','https://confortec.com.br/wp-content/uploads/2025/10/1-1.png','170,60','10x de R$ 19,62','2025-12-16 19:59:59',''),('https://confortec.com.br/produto/trocador-de-calor-indireto-30-placas/','TROCADOR DE CALOR INDIRETO – 30 PLACAS','https://confortec.com.br/wp-content/uploads/2020/11/Design-sem-nome-10.png','2.300,00','10x R$ 264,50','2025-12-16 19:59:59','00029'),('https://confortec.com.br/produto/tubo-a-vacuo/','TUBO A VÁCUO INDEPENDENTE','https://confortec.com.br/wp-content/uploads/2020/10/tubonovo.png','95,00','10x R$ 10,92','2025-12-16 19:59:59','00020'),('https://confortec.com.br/produto/valvula-de-retencao-vertical-1-2/','VÁLVULA DE RETENÇÃO VERTICAL 1/2′′','https://confortec.com.br/wp-content/uploads/2023/05/5-1.png','50,00','10x R$ 5,75','2025-12-16 19:59:59','01272'),('https://confortec.com.br/produto/valvula-de-retencao-vertical-3-4/','VÁLVULA DE RETENÇÃO VERTICAL 3.4”','https://confortec.com.br/wp-content/uploads/2023/05/6.png','60,00','10x R$ 6,90','2025-12-16 19:59:59','01271'),('https://confortec.com.br/produto/valvula-de-seguranca-1-2/','VÁLVULA DE SEGURANÇA 1.2”','https://confortec.com.br/wp-content/uploads/2023/05/3-1.png','55,00','10x R$ 6,32','2025-12-16 19:59:59','01273'),('https://confortec.com.br/produto/valvula-misturadora-3-4/','VÁLVULA MISTURADORA 3/4”','https://confortec.com.br/wp-content/uploads/2023/05/1-1.png','640,00','10x R$ 73,60','2025-12-16 19:59:59','01275'),('https://confortec.com.br/produto/valvula-solenoide-de-seguranca-ko-16-21-d-di-prime/','VÁLVULA SOLENOIDE DE SEGURANÇA KO 16.21 D.DI PRIME','https://confortec.com.br/wp-content/uploads/2024/04/1-1.png','90,80','10x R$ 10,44','2025-12-16 19:59:59','01408'),('https://confortec.com.br/produto/ventoinha-de-ventilacao-forcada-ko-15d-di-prime/','VENTOINHA DE VENTILAÇÃO FORÇADA KO 15 D DI PRIME','https://confortec.com.br/wp-content/uploads/2021/02/IMG_20210215_133707182-scaled-1.jpg','425,17','10x R$ 48,89','2025-12-16 20:00:00','00056');
/*!40000 ALTER TABLE `product_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `id` varchar(50) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `marca` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos_cadastrados`
--

DROP TABLE IF EXISTS `produtos_cadastrados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos_cadastrados` (
  `id` int NOT NULL,
  `nome` varchar(255) NOT NULL,
  `marca` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos_cadastrados`
--

LOCK TABLES `produtos_cadastrados` WRITE;
/*!40000 ALTER TABLE `produtos_cadastrados` DISABLE KEYS */;
INSERT INTO `produtos_cadastrados` VALUES (-1,'ENERGIA SOLAR','CONFORTEC'),(1,'COLETOR SOLAR KO - 30 TB A VÁCUO - BP - AQUEC SOLAR','KOMECO'),(4,'ANEL DE VEDAÇAO - TUBO A VACUO','KOMECO'),(5,'BOILER 200L KO - DESNÍVEL - BP - 304','KOMECO'),(6,'BOILER 200L KO - DESNÍVEL - BP - 316','KOMECO'),(7,'BOILER 400L KO - DESNÍVEL - BP - 304','KOMECO'),(8,'BOILER 400L KO - DESNÍVEL - BP - 316','KOMECO'),(9,'BOILER 500L KO - DESNÍVEL - BP - 304','KOMECO'),(10,'BOILER 500L KO - DESNÍVEL - BP - 316','KOMECO'),(11,'BOILER 600L KO - DESNÍVEL - BP - 316','KOMECO'),(12,'BOILER 200L KO - DESNÍVEL - AP - 304','KOMECO'),(14,'BOILER 600L KO - DESNÍVEL - BP - 304','KOMECO'),(16,'COLETOR SOLAR KO - 20 TB A VÁCUO - BP - AQUEC SOLAR','KOMECO'),(18,'BOILER 500L KO - EM NÍVEL - BP - 304','KOMECO'),(19,'RESISTOR 3000W INOX 316','-'),(20,'TUBO A VÁCUO INDEPENDENTE - AQUEC SOLAR','KOMECO'),(22,'RESISTOR TIPO U IMERSÃO INOX COM FLANGE 1.1/4','-'),(29,'TROCADOR DE CALOR INDIRETO - 30 PLACAS','RINNAI'),(37,'KIT CHAMINE FACIL  DIAM 80 MM x 150 CM','WESTAFLEX'),(38,'AQUECEDOR KO PRIME 16D - GLP','KOMECO'),(39,'AQUECEDOR KO PRIME 16DI - INOX - GLP','KOMECO'),(46,'AQUECEDOR KO PRIME 21D - GLP','KOMECO'),(47,'AQUECEDOR KO 26 WH HOME - GLP','KOMECO'),(49,'DISTRIBUIDOR DE GÁS KO 16D HOME GLP -PEÇA','KOMECO'),(51,'AQUECEDOR KO PRIME 21DI - INOX - GLP','KOMECO'),(52,'PLACA DE CONTROLE ELETR. S/TIMER KO 15.20D.DI - PEÇA','KOMECO'),(54,'PLACA DE CONTROLE ELETR. S/TIMER KO 16.21D HOME - PEÇA','KOMECO'),(55,'FLUXOSTATO KO 15.20 D DI / KO 16.21 D HOME -PEÇA','KOMECO'),(56,'VENTOINHA DE VENTILAÇÃO FORÇADA KO 15D.DI PRIME - PEÇA','KOMECO'),(57,'MANÔMETRO MM400','-'),(63,'DUCHA RINNAI RSH-1000','RINNAI'),(64,'DUCHA RINNAI RSH-2000','RINNAI'),(66,'MODULO WIFI - AQUECEDORES','RINNAI'),(69,'FLUXOSTATO TP40 G3.G4 - PEÇA','KOMECO'),(70,'FLUXOSTATO TP80 G4 V18.10 - PEÇA','KOMECO'),(71,'ORING FLUXOSTATO TP40 G3.G4 - PEÇA','KOMECO'),(72,'ORING FLUXOSTATO TP80 G3.G4 - PEÇA','KOMECO'),(73,'ORING PARAFUSO PURGA TP80 G1.G3.G4 - PEÇA','KOMECO'),(74,'PRESSURIZADOR KO TP 820 G3 BIVOLT - BOMBAS','KOMECO'),(75,'PRESSURIZADOR KO TP 825 G3 BIVOLT - BOMBAS','KOMECO'),(76,'PRESSURIZADO KO TP40 G4 FERRO - BOMBAS','KOMECO'),(77,'PRESSURIZADOR KO TP80 G4 BRONZE - BOMBAS','KOMECO'),(78,'PRESSURIZADOR KO TP80 G4 FERRO - BOMBAS','KOMECO'),(79,'BOMBA ULTRA PRESS AUTOASPIRANTE UPA 32 1/2CV - BOMBAS','KOMECO'),(81,'BOMBA ULTRA PRESS UP 35 1/2 CV - BOMBAS','KOMECO'),(82,'BOMBA ULTRA PRESS UP 56 1CV - BOMBAS','KOMECO'),(84,'PRESSURIZADOR PL9 220V - BOMBA','LORENZETTI'),(86,'ESFREGÂO MULTI ANGULOS (CABO)','-'),(94,'ESFREGÃO MULTI ANGULOS','-'),(603,'INVERSOR SOLAR FOTOVOLTAICO ON-GRID','GROWATT'),(634,'BOILER 800L KO - DESNÍVEL - BP - 316','KOMECO'),(635,'FLEXIVEL 3/4\' 50CM - AÇO INOX 304','KOMECO'),(636,'FLEXIVEL 1\' 50CM -AÇO INOX 304','KOMECO'),(637,'AQUECEDOR KO BLACK 16L - GLP','KOMECO'),(639,'COLETOR SOLAR ACOPLADO - 20 TB - BP','KOMECO'),(641,'COLETOR SOLAR ACOPLADO - 15 TUBOS - BP','KOMECO'),(642,'RESISTENCIA ELÉTRICA 1500W P/ COLETOR SOLAR ACOPLADO','-'),(643,'TANQUE ASSISTENTE COM BOIA P/ COLETOR SOLAR ACOPLADO','-'),(728,'PRESSURIZADOR KO TP40 G4 BRONZE - BOMBAS','KOMECO'),(781,'DUCHA RINNAI RSH-2001','RINNAI'),(804,'PAINEL DIGITAL KO 16.21D HOME - PEÇA','KOMECO'),(859,'CONJUNTO MOTOR VENTILADO KO 20D.DI - PEÇA','KOMECO'),(909,'COLETOR SOLAR 30 TUBOS A VÁCUO - HORIZONTAL BP','SOLARVAC'),(910,'COLETOR SOLAR 40 TUBOS A VÁCUO - HORIZONTAL BP','SOLARVAC'),(911,'COLETOR SOLAR 15 TUBOS A VÁCUO - VERTICAL BP','SOLARVAC'),(912,'COLETOR 20 TBP VERTICAL','SOLARVAC'),(913,'COLETOR SOLAR 30 TUBO A VÁCUOS - VERTICAL BP','SOLARVAC'),(1013,'PRESSOSTATO PS 1100M - BOMBAS','KOMECO'),(1125,'PLACA DE CONTROLE ELETR. S/TIMER KO 26D HOME - PEÇA','KOMECO'),(1128,'COLETOR SOLAR 50 TUBOS A VÁCUO - HORIZONTAL BP','SOLARVAC'),(1212,'PLACA DE CONTROLE ELETR. S/TIMER KO 15.16.20.21 D.DI PRIME - PEÇA','KOMECO'),(1214,'DISTRIBUIDOR DE GÁS KO 20.21 D.DI PRIME - PEÇA','KOMECO'),(1245,'BOMBA P/ ÁGUA QUENTE 1/2CV - BOMBAS','SYLLENT'),(1246,'MINIPRESSURIZADOR P/ ÁGUA QUENTE 350W - BOMBAS','SYLLENT'),(1247,'MINIPRESSURIZADOR P/ ÁGUA FRIA 350W - BOMBAS','SYLLENT'),(1248,'PRESSURIZADOR P/ ÁGUA FRIA 1/2CV - BOMBA','SYLLENT'),(1263,'DISTRIBUIDOR DE GÁS KO 21D HOME GLP - PEÇA','KOMECO'),(1266,'BOMBA ULTRA PRESS 725 - BOMBAS','KOMECO'),(1271,'VALVULA DE RETENÇÃO VERTICAL 3.4\'','-'),(1272,'VALVULA DE RETENÇÃO VERTICAL 1/2\'','-'),(1273,'VALVULA DE SEGURANÇA 1.2\'','-'),(1274,'VALVULA ELIMINADORA DE AR VENTOSA PlÁSTICA 1.2\'','-'),(1275,'VALVULA MISTURADORA 3/4\'','-'),(1277,'RESISTOR 6000W INOX 316 - 2 POL','CONFORTEC'),(1278,'REFLETOR SOLAR MAXXY 30W FRIO','MAXXY'),(1279,'REFLETOR SOLAR MAXXY 60W FRIo','MAXXY'),(1290,'KIT CONEXÃO 40CM','-'),(1326,'PLACA DE CONTROLE ELETR. S/TIMER KO 31D.DI - PEÇA','KOMECO'),(1335,'BOMBA DE 1/2 CV LINHA IMPULSE PRESS P/ ÁGUA QUENTE','SYLLENT'),(1336,'PRESSURIZADOR KO TP 120 G1 BRONZE - BOMBAS','KOMECO'),(1341,'MICROSOL RST ADVANCED CONNECT - AQUECIMENTO/REFRIGERAÇÃO - FULL GAUGE','FULL GAUGE'),(1342,'MICROSOL BMP ADVANCED CONNECT - AQ. SOLAR - FULL GAUGE','FULL GAUGE'),(1343,'CONTROLADOR DIFERENCIAL ANASOL - DIGITAL - FULL GAUGE','FULL GAUGE'),(1350,'BOMBA SMARTPRESS 37 - BOMBAS','KOMECO'),(1361,'TANQUE DE EXPANSÃO DE 35L AÇO CARBONO VERTICAL - ROWA','ROWA'),(1363,'COLETOR SOLAR 20 TUBOS A VÁCUO - VERTICAL AP','SOLARVAC'),(1384,'KIT CHAMINE 60MM','WESTAFLEX'),(1392,'MANÔMETRO MM800','-'),(1394,'COLETOR SOLAR PLANO KO - 1,5 x 1,0m','KOMECO'),(1395,'COLETOR SOLAR PLANO KO - 2 x 1m','KOMECO'),(1396,'TANQUE DE EXPANSÃO COM MEBRANA - 24L','KOMECO'),(1397,'TANQUE DE EXPANSÃO COM MEMBRANA - 50L','KOMECO'),(1398,'TANQUE DE EXPANSÃO COM MEMBRANA - 30L','KOMECO'),(1401,'KIT CHAMINÉ - 80MM','-'),(1402,'KIT CHAMINÉ - 60MM','-'),(1408,'VÁLVULA SOLENOIDE KO 16.21 D.DI PRIME - PEÇAS','KOMECO'),(1412,'MODULO WIFI - PRIME - SMART WI-FI - PEÇA','KOMECO'),(1418,'BOILER 600L KO - EM NÍVEL - BP - 316','KOMECO'),(1422,'AQUECEDOR KO 21 WH DECOR -GLP','KOMECO'),(1423,'AQUECEDOR KO 21 SL DECOR - GLP','KOMECO'),(1424,'BOILER 400L KO - EM NÍVEL - BP - 304','KOMECO'),(1425,'BOILER 500L KO - EM NIVEL - BP - 316','KOMECO'),(1426,'BOILER 600L KO - EM NIVEL - BP - 304','KOMECO'),(1427,'BOILER 400L KO - EM NÍVEL - BP - 316','KOMECO'),(1433,'BOILER 500L KO - DESNIVEL - AP - 304','KOMECO'),(1453,'BOILER 400L KO - EM NIVEL - AP - 304','KOMECO'),(1454,'BOILER 400L KO - DESNÍVEL - AP - 304','KOMECO'),(1463,'MINIPRESSURIZADOR SOLARVAC 80W - BOMBAS','SOLARVAC'),(1464,'BOIA DE NÍVEL ELÉTRICA - SOLAR VAC','SOLAR VAC'),(1465,'VALVULA ELIMINADORA DE AR 1/2','SOLARVAC'),(1466,'VALVULA DE SEGURANÇA 4 BAR','SOLARVAC'),(1470,'AQUECEDOR KO 16 WH HOME - GLP','KOMECO'),(1471,'AQUECEDOR KO 21 WH HOME - GLP','KOMECO'),(1481,'PAINEL SOLAR 370W MONOFACIAL HALFCELL MAX 1000V','SUNENERGY'),(1499,'AQUECEDOR KO 26WH HOME 1BFLP4 - GLP','KOMECO'),(1508,'BOMBA INVERSORA SMARTPRESS 32 - BOMBAS','KOMECO'),(1522,'AQUECEDOR KO 16WH DECOR - GLP','KOMECO'),(1523,'AQUECEDOR KO 21BK HOME - GLP','KOMECO'),(1525,'AQUECEDOR KO 36WH HOME - GLP','KOMECO'),(1526,'AQUECEDOR KO 26 WH DECOR - GLP','KOMECO'),(1527,'BOMBA DE CALOR INVERTER - KOBC 25QC - BOMBAS','KOMECO'),(1530,'PEÇAS/AQUEC - MANGUEIRA PVC 3/16\" x 1,5 DE PAREDE','JOARES'),(1531,'FILTRO DE GÁS - CB901','FILTROGÁS'),(1532,'REFIL DE FILTRO DE GÁS - CB901','SCHOLL'),(1536,'ESTACAO DE RECARGA CA 3,7 KW','FULL CHARGE'),(1537,'RESISTOR TRIFASICO 220 - 380V - 6000W rosca 11/4','-'),(1539,'CONJUNTO AQUECEDOR SOLAR DE AGUA C 20\nTUBOS','AQUAKENT'),(1540,'CONJUNTO AQUECEDOR SOLAR DE AGUA C 35\nTUBOS','AQUAKENT'),(1541,'AQUECEDOR DE AR CERÂMICO PORTÁTIL- 2000W - AQUECEDOR','KOMECO'),(1542,'AQUECEDOR KO 16 WH HOME - GN','KOMECO'),(1543,'AQUEC SOLAR - EX TIMER ANALOGICO BIVOLT AUTOMATICO','-'),(1551,'ENERGIA - POSTE INCORPORADO DUAS MEDIÇÕES TIPO C7 E C8','PIER'),(1554,'PLACA DE CONTROLE KO 16.21 DECOR','KOMECO'),(1570,'Modulo Fotovoltaico BYD 455W MGK-36','MAXSUL'),(1605,'ROBO ASPIRADOR DE PISCINA KORP 30','KOMECO'),(1616,'GERADOR FOTOVOLTAICO STRING N SPR.75KWP - 4,88 KWPO.C','FOCO');
/*!40000 ALTER TABLE `produtos_cadastrados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `ps_check_lost_instrumentation`
--

DROP TABLE IF EXISTS `ps_check_lost_instrumentation`;
/*!50001 DROP VIEW IF EXISTS `ps_check_lost_instrumentation`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ps_check_lost_instrumentation` AS SELECT 
 1 AS `variable_name`,
 1 AS `variable_value`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_auto_increment_columns`
--

DROP TABLE IF EXISTS `schema_auto_increment_columns`;
/*!50001 DROP VIEW IF EXISTS `schema_auto_increment_columns`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_auto_increment_columns` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `column_name`,
 1 AS `data_type`,
 1 AS `column_type`,
 1 AS `is_signed`,
 1 AS `is_unsigned`,
 1 AS `max_value`,
 1 AS `auto_increment`,
 1 AS `auto_increment_ratio`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_index_statistics`
--

DROP TABLE IF EXISTS `schema_index_statistics`;
/*!50001 DROP VIEW IF EXISTS `schema_index_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_index_statistics` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `index_name`,
 1 AS `rows_selected`,
 1 AS `select_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_object_overview`
--

DROP TABLE IF EXISTS `schema_object_overview`;
/*!50001 DROP VIEW IF EXISTS `schema_object_overview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_object_overview` AS SELECT 
 1 AS `db`,
 1 AS `object_type`,
 1 AS `count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_redundant_indexes`
--

DROP TABLE IF EXISTS `schema_redundant_indexes`;
/*!50001 DROP VIEW IF EXISTS `schema_redundant_indexes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_redundant_indexes` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `redundant_index_name`,
 1 AS `redundant_index_columns`,
 1 AS `redundant_index_non_unique`,
 1 AS `dominant_index_name`,
 1 AS `dominant_index_columns`,
 1 AS `dominant_index_non_unique`,
 1 AS `subpart_exists`,
 1 AS `sql_drop_index`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_table_lock_waits`
--

DROP TABLE IF EXISTS `schema_table_lock_waits`;
/*!50001 DROP VIEW IF EXISTS `schema_table_lock_waits`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_table_lock_waits` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `waiting_thread_id`,
 1 AS `waiting_pid`,
 1 AS `waiting_account`,
 1 AS `waiting_lock_type`,
 1 AS `waiting_lock_duration`,
 1 AS `waiting_query`,
 1 AS `waiting_query_secs`,
 1 AS `waiting_query_rows_affected`,
 1 AS `waiting_query_rows_examined`,
 1 AS `blocking_thread_id`,
 1 AS `blocking_pid`,
 1 AS `blocking_account`,
 1 AS `blocking_lock_type`,
 1 AS `blocking_lock_duration`,
 1 AS `sql_kill_blocking_query`,
 1 AS `sql_kill_blocking_connection`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_table_statistics`
--

DROP TABLE IF EXISTS `schema_table_statistics`;
/*!50001 DROP VIEW IF EXISTS `schema_table_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_table_statistics` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `total_latency`,
 1 AS `rows_fetched`,
 1 AS `fetch_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`,
 1 AS `io_read_requests`,
 1 AS `io_read`,
 1 AS `io_read_latency`,
 1 AS `io_write_requests`,
 1 AS `io_write`,
 1 AS `io_write_latency`,
 1 AS `io_misc_requests`,
 1 AS `io_misc_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_table_statistics_with_buffer`
--

DROP TABLE IF EXISTS `schema_table_statistics_with_buffer`;
/*!50001 DROP VIEW IF EXISTS `schema_table_statistics_with_buffer`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_table_statistics_with_buffer` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `rows_fetched`,
 1 AS `fetch_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`,
 1 AS `io_read_requests`,
 1 AS `io_read`,
 1 AS `io_read_latency`,
 1 AS `io_write_requests`,
 1 AS `io_write`,
 1 AS `io_write_latency`,
 1 AS `io_misc_requests`,
 1 AS `io_misc_latency`,
 1 AS `innodb_buffer_allocated`,
 1 AS `innodb_buffer_data`,
 1 AS `innodb_buffer_free`,
 1 AS `innodb_buffer_pages`,
 1 AS `innodb_buffer_pages_hashed`,
 1 AS `innodb_buffer_pages_old`,
 1 AS `innodb_buffer_rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_tables_with_full_table_scans`
--

DROP TABLE IF EXISTS `schema_tables_with_full_table_scans`;
/*!50001 DROP VIEW IF EXISTS `schema_tables_with_full_table_scans`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_tables_with_full_table_scans` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `rows_full_scanned`,
 1 AS `latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_unused_indexes`
--

DROP TABLE IF EXISTS `schema_unused_indexes`;
/*!50001 DROP VIEW IF EXISTS `schema_unused_indexes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_unused_indexes` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `index_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `session`
--

DROP TABLE IF EXISTS `session`;
/*!50001 DROP VIEW IF EXISTS `session`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `session` AS SELECT 
 1 AS `thd_id`,
 1 AS `conn_id`,
 1 AS `user`,
 1 AS `db`,
 1 AS `command`,
 1 AS `state`,
 1 AS `time`,
 1 AS `current_statement`,
 1 AS `execution_engine`,
 1 AS `statement_latency`,
 1 AS `progress`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_examined`,
 1 AS `rows_sent`,
 1 AS `rows_affected`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `full_scan`,
 1 AS `last_statement`,
 1 AS `last_statement_latency`,
 1 AS `current_memory`,
 1 AS `last_wait`,
 1 AS `last_wait_latency`,
 1 AS `source`,
 1 AS `trx_latency`,
 1 AS `trx_state`,
 1 AS `trx_autocommit`,
 1 AS `pid`,
 1 AS `program_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `session_ssl_status`
--

DROP TABLE IF EXISTS `session_ssl_status`;
/*!50001 DROP VIEW IF EXISTS `session_ssl_status`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `session_ssl_status` AS SELECT 
 1 AS `thread_id`,
 1 AS `ssl_version`,
 1 AS `ssl_cipher`,
 1 AS `ssl_sessions_reused`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statement_analysis`
--

DROP TABLE IF EXISTS `statement_analysis`;
/*!50001 DROP VIEW IF EXISTS `statement_analysis`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `statement_analysis` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `full_scan`,
 1 AS `exec_count`,
 1 AS `err_count`,
 1 AS `warn_count`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `avg_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined`,
 1 AS `rows_examined_avg`,
 1 AS `rows_affected`,
 1 AS `rows_affected_avg`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `rows_sorted`,
 1 AS `sort_merge_passes`,
 1 AS `max_controlled_memory`,
 1 AS `max_total_memory`,
 1 AS `digest`,
 1 AS `first_seen`,
 1 AS `last_seen`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_errors_or_warnings`
--

DROP TABLE IF EXISTS `statements_with_errors_or_warnings`;
/*!50001 DROP VIEW IF EXISTS `statements_with_errors_or_warnings`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `statements_with_errors_or_warnings` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `errors`,
 1 AS `error_pct`,
 1 AS `warnings`,
 1 AS `warning_pct`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_full_table_scans`
--

DROP TABLE IF EXISTS `statements_with_full_table_scans`;
/*!50001 DROP VIEW IF EXISTS `statements_with_full_table_scans`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `statements_with_full_table_scans` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `no_index_used_count`,
 1 AS `no_good_index_used_count`,
 1 AS `no_index_used_pct`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined_avg`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_runtimes_in_95th_percentile`
--

DROP TABLE IF EXISTS `statements_with_runtimes_in_95th_percentile`;
/*!50001 DROP VIEW IF EXISTS `statements_with_runtimes_in_95th_percentile`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `statements_with_runtimes_in_95th_percentile` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `full_scan`,
 1 AS `exec_count`,
 1 AS `err_count`,
 1 AS `warn_count`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `avg_latency`,
 1 AS `rows_sent`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined`,
 1 AS `rows_examined_avg`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_sorting`
--

DROP TABLE IF EXISTS `statements_with_sorting`;
/*!50001 DROP VIEW IF EXISTS `statements_with_sorting`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `statements_with_sorting` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `sort_merge_passes`,
 1 AS `avg_sort_merges`,
 1 AS `sorts_using_scans`,
 1 AS `sort_using_range`,
 1 AS `rows_sorted`,
 1 AS `avg_rows_sorted`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_temp_tables`
--

DROP TABLE IF EXISTS `statements_with_temp_tables`;
/*!50001 DROP VIEW IF EXISTS `statements_with_temp_tables`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `statements_with_temp_tables` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `memory_tmp_tables`,
 1 AS `disk_tmp_tables`,
 1 AS `avg_tmp_tables_per_query`,
 1 AS `tmp_tables_to_disk_pct`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_config` (
  `variable` varchar(128) NOT NULL,
  `value` varchar(128) DEFAULT NULL,
  `set_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `set_by` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`variable`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` VALUES ('diagnostics.allow_i_s_tables','OFF','2025-05-09 17:18:11',NULL),('diagnostics.include_raw','OFF','2025-05-09 17:18:11',NULL),('ps_thread_trx_info.max_length','65535','2025-05-09 17:18:11',NULL),('statement_performance_analyzer.limit','100','2025-05-09 17:18:11',NULL),('statement_performance_analyzer.view',NULL,'2025-05-09 17:18:11',NULL),('statement_truncate_len','64','2025-05-09 17:18:11',NULL);
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`mysql.sys`@`localhost`*/ /*!50003 TRIGGER `sys_config_insert_set_user` BEFORE INSERT ON `sys_config` FOR EACH ROW BEGIN
    IF @sys.ignore_sys_config_triggers != true AND NEW.set_by IS NULL THEN
        SET NEW.set_by = USER();
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`mysql.sys`@`localhost`*/ /*!50003 TRIGGER `sys_config_update_set_user` BEFORE UPDATE ON `sys_config` FOR EACH ROW BEGIN
    IF @sys.ignore_sys_config_triggers != true AND NEW.set_by IS NULL THEN
        SET NEW.set_by = USER();
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `user_summary`
--

DROP TABLE IF EXISTS `user_summary`;
/*!50001 DROP VIEW IF EXISTS `user_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_summary` AS SELECT 
 1 AS `user`,
 1 AS `statements`,
 1 AS `statement_latency`,
 1 AS `statement_avg_latency`,
 1 AS `table_scans`,
 1 AS `file_ios`,
 1 AS `file_io_latency`,
 1 AS `current_connections`,
 1 AS `total_connections`,
 1 AS `unique_hosts`,
 1 AS `current_memory`,
 1 AS `total_memory_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_file_io`
--

DROP TABLE IF EXISTS `user_summary_by_file_io`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_summary_by_file_io` AS SELECT 
 1 AS `user`,
 1 AS `ios`,
 1 AS `io_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `user_summary_by_file_io_type`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_file_io_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_summary_by_file_io_type` AS SELECT 
 1 AS `user`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_stages`
--

DROP TABLE IF EXISTS `user_summary_by_stages`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_stages`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_summary_by_stages` AS SELECT 
 1 AS `user`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `user_summary_by_statement_latency`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_statement_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_summary_by_statement_latency` AS SELECT 
 1 AS `user`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_statement_type`
--

DROP TABLE IF EXISTS `user_summary_by_statement_type`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_statement_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_summary_by_statement_type` AS SELECT 
 1 AS `user`,
 1 AS `statement`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `version`
--

DROP TABLE IF EXISTS `version`;
/*!50001 DROP VIEW IF EXISTS `version`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `version` AS SELECT 
 1 AS `sys_version`,
 1 AS `mysql_version`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `wait_classes_global_by_avg_latency`
--

DROP TABLE IF EXISTS `wait_classes_global_by_avg_latency`;
/*!50001 DROP VIEW IF EXISTS `wait_classes_global_by_avg_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `wait_classes_global_by_avg_latency` AS SELECT 
 1 AS `event_class`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `wait_classes_global_by_latency`
--

DROP TABLE IF EXISTS `wait_classes_global_by_latency`;
/*!50001 DROP VIEW IF EXISTS `wait_classes_global_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `wait_classes_global_by_latency` AS SELECT 
 1 AS `event_class`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `waits_by_host_by_latency`
--

DROP TABLE IF EXISTS `waits_by_host_by_latency`;
/*!50001 DROP VIEW IF EXISTS `waits_by_host_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `waits_by_host_by_latency` AS SELECT 
 1 AS `host`,
 1 AS `event`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `waits_by_user_by_latency`
--

DROP TABLE IF EXISTS `waits_by_user_by_latency`;
/*!50001 DROP VIEW IF EXISTS `waits_by_user_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `waits_by_user_by_latency` AS SELECT 
 1 AS `user`,
 1 AS `event`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `waits_global_by_latency`
--

DROP TABLE IF EXISTS `waits_global_by_latency`;
/*!50001 DROP VIEW IF EXISTS `waits_global_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `waits_global_by_latency` AS SELECT 
 1 AS `events`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary`
--

DROP TABLE IF EXISTS `x$host_summary`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$host_summary` AS SELECT 
 1 AS `host`,
 1 AS `statements`,
 1 AS `statement_latency`,
 1 AS `statement_avg_latency`,
 1 AS `table_scans`,
 1 AS `file_ios`,
 1 AS `file_io_latency`,
 1 AS `current_connections`,
 1 AS `total_connections`,
 1 AS `unique_users`,
 1 AS `current_memory`,
 1 AS `total_memory_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_file_io`
--

DROP TABLE IF EXISTS `x$host_summary_by_file_io`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$host_summary_by_file_io` AS SELECT 
 1 AS `host`,
 1 AS `ios`,
 1 AS `io_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `x$host_summary_by_file_io_type`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_file_io_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$host_summary_by_file_io_type` AS SELECT 
 1 AS `host`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_stages`
--

DROP TABLE IF EXISTS `x$host_summary_by_stages`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_stages`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$host_summary_by_stages` AS SELECT 
 1 AS `host`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `x$host_summary_by_statement_latency`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_statement_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$host_summary_by_statement_latency` AS SELECT 
 1 AS `host`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_statement_type`
--

DROP TABLE IF EXISTS `x$host_summary_by_statement_type`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_statement_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$host_summary_by_statement_type` AS SELECT 
 1 AS `host`,
 1 AS `statement`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$innodb_buffer_stats_by_schema`
--

DROP TABLE IF EXISTS `x$innodb_buffer_stats_by_schema`;
/*!50001 DROP VIEW IF EXISTS `x$innodb_buffer_stats_by_schema`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$innodb_buffer_stats_by_schema` AS SELECT 
 1 AS `object_schema`,
 1 AS `allocated`,
 1 AS `data`,
 1 AS `pages`,
 1 AS `pages_hashed`,
 1 AS `pages_old`,
 1 AS `rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$innodb_buffer_stats_by_table`
--

DROP TABLE IF EXISTS `x$innodb_buffer_stats_by_table`;
/*!50001 DROP VIEW IF EXISTS `x$innodb_buffer_stats_by_table`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$innodb_buffer_stats_by_table` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `allocated`,
 1 AS `data`,
 1 AS `pages`,
 1 AS `pages_hashed`,
 1 AS `pages_old`,
 1 AS `rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$innodb_lock_waits`
--

DROP TABLE IF EXISTS `x$innodb_lock_waits`;
/*!50001 DROP VIEW IF EXISTS `x$innodb_lock_waits`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$innodb_lock_waits` AS SELECT 
 1 AS `wait_started`,
 1 AS `wait_age`,
 1 AS `wait_age_secs`,
 1 AS `locked_table`,
 1 AS `locked_table_schema`,
 1 AS `locked_table_name`,
 1 AS `locked_table_partition`,
 1 AS `locked_table_subpartition`,
 1 AS `locked_index`,
 1 AS `locked_type`,
 1 AS `waiting_trx_id`,
 1 AS `waiting_trx_started`,
 1 AS `waiting_trx_age`,
 1 AS `waiting_trx_rows_locked`,
 1 AS `waiting_trx_rows_modified`,
 1 AS `waiting_pid`,
 1 AS `waiting_query`,
 1 AS `waiting_lock_id`,
 1 AS `waiting_lock_mode`,
 1 AS `blocking_trx_id`,
 1 AS `blocking_pid`,
 1 AS `blocking_query`,
 1 AS `blocking_lock_id`,
 1 AS `blocking_lock_mode`,
 1 AS `blocking_trx_started`,
 1 AS `blocking_trx_age`,
 1 AS `blocking_trx_rows_locked`,
 1 AS `blocking_trx_rows_modified`,
 1 AS `sql_kill_blocking_query`,
 1 AS `sql_kill_blocking_connection`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_by_thread_by_latency`
--

DROP TABLE IF EXISTS `x$io_by_thread_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$io_by_thread_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$io_by_thread_by_latency` AS SELECT 
 1 AS `user`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `thread_id`,
 1 AS `processlist_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_global_by_file_by_bytes`
--

DROP TABLE IF EXISTS `x$io_global_by_file_by_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_file_by_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$io_global_by_file_by_bytes` AS SELECT 
 1 AS `file`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_write`,
 1 AS `total`,
 1 AS `write_pct`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_global_by_file_by_latency`
--

DROP TABLE IF EXISTS `x$io_global_by_file_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_file_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$io_global_by_file_by_latency` AS SELECT 
 1 AS `file`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `count_read`,
 1 AS `read_latency`,
 1 AS `count_write`,
 1 AS `write_latency`,
 1 AS `count_misc`,
 1 AS `misc_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_global_by_wait_by_bytes`
--

DROP TABLE IF EXISTS `x$io_global_by_wait_by_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_wait_by_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$io_global_by_wait_by_bytes` AS SELECT 
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_written`,
 1 AS `total_requested`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_global_by_wait_by_latency`
--

DROP TABLE IF EXISTS `x$io_global_by_wait_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_wait_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$io_global_by_wait_by_latency` AS SELECT 
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `read_latency`,
 1 AS `write_latency`,
 1 AS `misc_latency`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_written`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$latest_file_io`
--

DROP TABLE IF EXISTS `x$latest_file_io`;
/*!50001 DROP VIEW IF EXISTS `x$latest_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$latest_file_io` AS SELECT 
 1 AS `thread`,
 1 AS `file`,
 1 AS `latency`,
 1 AS `operation`,
 1 AS `requested`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_by_host_by_current_bytes`
--

DROP TABLE IF EXISTS `x$memory_by_host_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$memory_by_host_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$memory_by_host_by_current_bytes` AS SELECT 
 1 AS `host`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_by_thread_by_current_bytes`
--

DROP TABLE IF EXISTS `x$memory_by_thread_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$memory_by_thread_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$memory_by_thread_by_current_bytes` AS SELECT 
 1 AS `thread_id`,
 1 AS `user`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_by_user_by_current_bytes`
--

DROP TABLE IF EXISTS `x$memory_by_user_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$memory_by_user_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$memory_by_user_by_current_bytes` AS SELECT 
 1 AS `user`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_global_by_current_bytes`
--

DROP TABLE IF EXISTS `x$memory_global_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$memory_global_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$memory_global_by_current_bytes` AS SELECT 
 1 AS `event_name`,
 1 AS `current_count`,
 1 AS `current_alloc`,
 1 AS `current_avg_alloc`,
 1 AS `high_count`,
 1 AS `high_alloc`,
 1 AS `high_avg_alloc`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_global_total`
--

DROP TABLE IF EXISTS `x$memory_global_total`;
/*!50001 DROP VIEW IF EXISTS `x$memory_global_total`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$memory_global_total` AS SELECT 
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$processlist`
--

DROP TABLE IF EXISTS `x$processlist`;
/*!50001 DROP VIEW IF EXISTS `x$processlist`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$processlist` AS SELECT 
 1 AS `thd_id`,
 1 AS `conn_id`,
 1 AS `user`,
 1 AS `db`,
 1 AS `command`,
 1 AS `state`,
 1 AS `time`,
 1 AS `current_statement`,
 1 AS `execution_engine`,
 1 AS `statement_latency`,
 1 AS `progress`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_examined`,
 1 AS `rows_sent`,
 1 AS `rows_affected`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `full_scan`,
 1 AS `last_statement`,
 1 AS `last_statement_latency`,
 1 AS `current_memory`,
 1 AS `last_wait`,
 1 AS `last_wait_latency`,
 1 AS `source`,
 1 AS `trx_latency`,
 1 AS `trx_state`,
 1 AS `trx_autocommit`,
 1 AS `pid`,
 1 AS `program_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$ps_digest_95th_percentile_by_avg_us`
--

DROP TABLE IF EXISTS `x$ps_digest_95th_percentile_by_avg_us`;
/*!50001 DROP VIEW IF EXISTS `x$ps_digest_95th_percentile_by_avg_us`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$ps_digest_95th_percentile_by_avg_us` AS SELECT 
 1 AS `avg_us`,
 1 AS `percentile`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$ps_digest_avg_latency_distribution`
--

DROP TABLE IF EXISTS `x$ps_digest_avg_latency_distribution`;
/*!50001 DROP VIEW IF EXISTS `x$ps_digest_avg_latency_distribution`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$ps_digest_avg_latency_distribution` AS SELECT 
 1 AS `cnt`,
 1 AS `avg_us`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$ps_schema_table_statistics_io`
--

DROP TABLE IF EXISTS `x$ps_schema_table_statistics_io`;
/*!50001 DROP VIEW IF EXISTS `x$ps_schema_table_statistics_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$ps_schema_table_statistics_io` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `count_read`,
 1 AS `sum_number_of_bytes_read`,
 1 AS `sum_timer_read`,
 1 AS `count_write`,
 1 AS `sum_number_of_bytes_write`,
 1 AS `sum_timer_write`,
 1 AS `count_misc`,
 1 AS `sum_timer_misc`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_flattened_keys`
--

DROP TABLE IF EXISTS `x$schema_flattened_keys`;
/*!50001 DROP VIEW IF EXISTS `x$schema_flattened_keys`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$schema_flattened_keys` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `index_name`,
 1 AS `non_unique`,
 1 AS `subpart_exists`,
 1 AS `index_columns`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_index_statistics`
--

DROP TABLE IF EXISTS `x$schema_index_statistics`;
/*!50001 DROP VIEW IF EXISTS `x$schema_index_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$schema_index_statistics` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `index_name`,
 1 AS `rows_selected`,
 1 AS `select_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_table_lock_waits`
--

DROP TABLE IF EXISTS `x$schema_table_lock_waits`;
/*!50001 DROP VIEW IF EXISTS `x$schema_table_lock_waits`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$schema_table_lock_waits` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `waiting_thread_id`,
 1 AS `waiting_pid`,
 1 AS `waiting_account`,
 1 AS `waiting_lock_type`,
 1 AS `waiting_lock_duration`,
 1 AS `waiting_query`,
 1 AS `waiting_query_secs`,
 1 AS `waiting_query_rows_affected`,
 1 AS `waiting_query_rows_examined`,
 1 AS `blocking_thread_id`,
 1 AS `blocking_pid`,
 1 AS `blocking_account`,
 1 AS `blocking_lock_type`,
 1 AS `blocking_lock_duration`,
 1 AS `sql_kill_blocking_query`,
 1 AS `sql_kill_blocking_connection`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_table_statistics`
--

DROP TABLE IF EXISTS `x$schema_table_statistics`;
/*!50001 DROP VIEW IF EXISTS `x$schema_table_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$schema_table_statistics` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `total_latency`,
 1 AS `rows_fetched`,
 1 AS `fetch_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`,
 1 AS `io_read_requests`,
 1 AS `io_read`,
 1 AS `io_read_latency`,
 1 AS `io_write_requests`,
 1 AS `io_write`,
 1 AS `io_write_latency`,
 1 AS `io_misc_requests`,
 1 AS `io_misc_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_table_statistics_with_buffer`
--

DROP TABLE IF EXISTS `x$schema_table_statistics_with_buffer`;
/*!50001 DROP VIEW IF EXISTS `x$schema_table_statistics_with_buffer`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$schema_table_statistics_with_buffer` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `rows_fetched`,
 1 AS `fetch_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`,
 1 AS `io_read_requests`,
 1 AS `io_read`,
 1 AS `io_read_latency`,
 1 AS `io_write_requests`,
 1 AS `io_write`,
 1 AS `io_write_latency`,
 1 AS `io_misc_requests`,
 1 AS `io_misc_latency`,
 1 AS `innodb_buffer_allocated`,
 1 AS `innodb_buffer_data`,
 1 AS `innodb_buffer_free`,
 1 AS `innodb_buffer_pages`,
 1 AS `innodb_buffer_pages_hashed`,
 1 AS `innodb_buffer_pages_old`,
 1 AS `innodb_buffer_rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_tables_with_full_table_scans`
--

DROP TABLE IF EXISTS `x$schema_tables_with_full_table_scans`;
/*!50001 DROP VIEW IF EXISTS `x$schema_tables_with_full_table_scans`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$schema_tables_with_full_table_scans` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `rows_full_scanned`,
 1 AS `latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$session`
--

DROP TABLE IF EXISTS `x$session`;
/*!50001 DROP VIEW IF EXISTS `x$session`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$session` AS SELECT 
 1 AS `thd_id`,
 1 AS `conn_id`,
 1 AS `user`,
 1 AS `db`,
 1 AS `command`,
 1 AS `state`,
 1 AS `time`,
 1 AS `current_statement`,
 1 AS `execution_engine`,
 1 AS `statement_latency`,
 1 AS `progress`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_examined`,
 1 AS `rows_sent`,
 1 AS `rows_affected`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `full_scan`,
 1 AS `last_statement`,
 1 AS `last_statement_latency`,
 1 AS `current_memory`,
 1 AS `last_wait`,
 1 AS `last_wait_latency`,
 1 AS `source`,
 1 AS `trx_latency`,
 1 AS `trx_state`,
 1 AS `trx_autocommit`,
 1 AS `pid`,
 1 AS `program_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statement_analysis`
--

DROP TABLE IF EXISTS `x$statement_analysis`;
/*!50001 DROP VIEW IF EXISTS `x$statement_analysis`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$statement_analysis` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `full_scan`,
 1 AS `exec_count`,
 1 AS `exec_secondary_count`,
 1 AS `err_count`,
 1 AS `warn_count`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `avg_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined`,
 1 AS `rows_examined_avg`,
 1 AS `rows_affected`,
 1 AS `rows_affected_avg`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `rows_sorted`,
 1 AS `sort_merge_passes`,
 1 AS `max_controlled_memory`,
 1 AS `max_total_memory`,
 1 AS `digest`,
 1 AS `first_seen`,
 1 AS `last_seen`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_errors_or_warnings`
--

DROP TABLE IF EXISTS `x$statements_with_errors_or_warnings`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_errors_or_warnings`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$statements_with_errors_or_warnings` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `errors`,
 1 AS `error_pct`,
 1 AS `warnings`,
 1 AS `warning_pct`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_full_table_scans`
--

DROP TABLE IF EXISTS `x$statements_with_full_table_scans`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_full_table_scans`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$statements_with_full_table_scans` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `no_index_used_count`,
 1 AS `no_good_index_used_count`,
 1 AS `no_index_used_pct`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined_avg`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_runtimes_in_95th_percentile`
--

DROP TABLE IF EXISTS `x$statements_with_runtimes_in_95th_percentile`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_runtimes_in_95th_percentile`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$statements_with_runtimes_in_95th_percentile` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `full_scan`,
 1 AS `exec_count`,
 1 AS `err_count`,
 1 AS `warn_count`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `avg_latency`,
 1 AS `rows_sent`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined`,
 1 AS `rows_examined_avg`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_sorting`
--

DROP TABLE IF EXISTS `x$statements_with_sorting`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_sorting`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$statements_with_sorting` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `sort_merge_passes`,
 1 AS `avg_sort_merges`,
 1 AS `sorts_using_scans`,
 1 AS `sort_using_range`,
 1 AS `rows_sorted`,
 1 AS `avg_rows_sorted`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_temp_tables`
--

DROP TABLE IF EXISTS `x$statements_with_temp_tables`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_temp_tables`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$statements_with_temp_tables` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `memory_tmp_tables`,
 1 AS `disk_tmp_tables`,
 1 AS `avg_tmp_tables_per_query`,
 1 AS `tmp_tables_to_disk_pct`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary`
--

DROP TABLE IF EXISTS `x$user_summary`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$user_summary` AS SELECT 
 1 AS `user`,
 1 AS `statements`,
 1 AS `statement_latency`,
 1 AS `statement_avg_latency`,
 1 AS `table_scans`,
 1 AS `file_ios`,
 1 AS `file_io_latency`,
 1 AS `current_connections`,
 1 AS `total_connections`,
 1 AS `unique_hosts`,
 1 AS `current_memory`,
 1 AS `total_memory_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_file_io`
--

DROP TABLE IF EXISTS `x$user_summary_by_file_io`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$user_summary_by_file_io` AS SELECT 
 1 AS `user`,
 1 AS `ios`,
 1 AS `io_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `x$user_summary_by_file_io_type`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_file_io_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$user_summary_by_file_io_type` AS SELECT 
 1 AS `user`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_stages`
--

DROP TABLE IF EXISTS `x$user_summary_by_stages`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_stages`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$user_summary_by_stages` AS SELECT 
 1 AS `user`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `x$user_summary_by_statement_latency`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_statement_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$user_summary_by_statement_latency` AS SELECT 
 1 AS `user`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_statement_type`
--

DROP TABLE IF EXISTS `x$user_summary_by_statement_type`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_statement_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$user_summary_by_statement_type` AS SELECT 
 1 AS `user`,
 1 AS `statement`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$wait_classes_global_by_avg_latency`
--

DROP TABLE IF EXISTS `x$wait_classes_global_by_avg_latency`;
/*!50001 DROP VIEW IF EXISTS `x$wait_classes_global_by_avg_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$wait_classes_global_by_avg_latency` AS SELECT 
 1 AS `event_class`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$wait_classes_global_by_latency`
--

DROP TABLE IF EXISTS `x$wait_classes_global_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$wait_classes_global_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$wait_classes_global_by_latency` AS SELECT 
 1 AS `event_class`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$waits_by_host_by_latency`
--

DROP TABLE IF EXISTS `x$waits_by_host_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$waits_by_host_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$waits_by_host_by_latency` AS SELECT 
 1 AS `host`,
 1 AS `event`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$waits_by_user_by_latency`
--

DROP TABLE IF EXISTS `x$waits_by_user_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$waits_by_user_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$waits_by_user_by_latency` AS SELECT 
 1 AS `user`,
 1 AS `event`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$waits_global_by_latency`
--

DROP TABLE IF EXISTS `x$waits_global_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$waits_global_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$waits_global_by_latency` AS SELECT 
 1 AS `events`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `host_summary`
--

/*!50001 DROP VIEW IF EXISTS `host_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary` (`host`,`statements`,`statement_latency`,`statement_avg_latency`,`table_scans`,`file_ios`,`file_io_latency`,`current_connections`,`total_connections`,`unique_users`,`current_memory`,`total_memory_allocated`) AS select if((`performance_schema`.`accounts`.`HOST` is null),'background',`performance_schema`.`accounts`.`HOST`) AS `host`,sum(`stmt`.`total`) AS `statements`,format_pico_time(sum(`stmt`.`total_latency`)) AS `statement_latency`,format_pico_time(ifnull((sum(`stmt`.`total_latency`) / nullif(sum(`stmt`.`total`),0)),0)) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,format_pico_time(sum(`io`.`io_latency`)) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`USER`) AS `unique_users`,format_bytes(sum(`mem`.`current_allocated`)) AS `current_memory`,format_bytes(sum(`mem`.`total_allocated`)) AS `total_memory_allocated` from (((`performance_schema`.`accounts` join `x$host_summary_by_statement_latency` `stmt` on((`performance_schema`.`accounts`.`HOST` = `stmt`.`host`))) join `x$host_summary_by_file_io` `io` on((`performance_schema`.`accounts`.`HOST` = `io`.`host`))) join `x$memory_by_host_by_current_bytes` `mem` on((`performance_schema`.`accounts`.`HOST` = `mem`.`host`))) group by if((`performance_schema`.`accounts`.`HOST` is null),'background',`performance_schema`.`accounts`.`HOST`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_file_io`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_file_io` (`host`,`ios`,`io_latency`) AS select if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR`) AS `ios`,format_pico_time(sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`)) AS `io_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') group by if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_file_io_type`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_file_io_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_file_io_type` (`host`,`event_name`,`total`,`total_latency`,`max_latency`) AS select if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where ((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file%') and (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` > 0)) order by if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_stages`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_stages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_stages` (`host`,`event_name`,`total`,`total_latency`,`avg_latency`) AS select if((`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency` from `performance_schema`.`events_stages_summary_by_host_by_event_name` where (`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if((`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_statement_latency`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_statement_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_statement_latency` (`host`,`total`,`total_latency`,`max_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_examined`,`rows_affected`,`full_scans`) AS select if((`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR`) AS `total`,format_pico_time(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,format_pico_time(max(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency`,format_pico_time(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME`)) AS `lock_latency`,format_pico_time(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_CPU_TIME`)) AS `cpu_latency`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED`)) AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` group by if((`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_statement_type`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_statement_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_statement_type` (`host`,`statement`,`total`,`total_latency`,`max_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_examined`,`rows_affected`,`full_scans`) AS select if((`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,substring_index(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`EVENT_NAME`,'/',-(1)) AS `statement`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_CPU_TIME`) AS `cpu_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` where (`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if((`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `innodb_buffer_stats_by_schema`
--

/*!50001 DROP VIEW IF EXISTS `innodb_buffer_stats_by_schema`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `innodb_buffer_stats_by_schema` (`object_schema`,`allocated`,`data`,`pages`,`pages_hashed`,`pages_old`,`rows_cached`) AS select if((locate('.',`ibp`.`TABLE_NAME`) = 0),'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,format_bytes(sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`))) AS `allocated`,format_bytes(sum(`ibp`.`DATA_SIZE`)) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if((`ibp`.`IS_HASHED` = 'YES'),1,NULL)) AS `pages_hashed`,count(if((`ibp`.`IS_OLD` = 'YES'),1,NULL)) AS `pages_old`,round((sum(`ibp`.`NUMBER_RECORDS`) / count(distinct `ibp`.`INDEX_NAME`)),0) AS `rows_cached` from `information_schema`.`INNODB_BUFFER_PAGE` `ibp` where (`ibp`.`TABLE_NAME` is not null) group by `object_schema` order by sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `innodb_buffer_stats_by_table`
--

/*!50001 DROP VIEW IF EXISTS `innodb_buffer_stats_by_table`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `innodb_buffer_stats_by_table` (`object_schema`,`object_name`,`allocated`,`data`,`pages`,`pages_hashed`,`pages_old`,`rows_cached`) AS select if((locate('.',`ibp`.`TABLE_NAME`) = 0),'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,replace(substring_index(`ibp`.`TABLE_NAME`,'.',-(1)),'`','') AS `object_name`,format_bytes(sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`))) AS `allocated`,format_bytes(sum(`ibp`.`DATA_SIZE`)) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if((`ibp`.`IS_HASHED` = 'YES'),1,NULL)) AS `pages_hashed`,count(if((`ibp`.`IS_OLD` = 'YES'),1,NULL)) AS `pages_old`,round((sum(`ibp`.`NUMBER_RECORDS`) / count(distinct `ibp`.`INDEX_NAME`)),0) AS `rows_cached` from `information_schema`.`INNODB_BUFFER_PAGE` `ibp` where (`ibp`.`TABLE_NAME` is not null) group by `object_schema`,`object_name` order by sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `innodb_lock_waits`
--

/*!50001 DROP VIEW IF EXISTS `innodb_lock_waits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `innodb_lock_waits` (`wait_started`,`wait_age`,`wait_age_secs`,`locked_table`,`locked_table_schema`,`locked_table_name`,`locked_table_partition`,`locked_table_subpartition`,`locked_index`,`locked_type`,`waiting_trx_id`,`waiting_trx_started`,`waiting_trx_age`,`waiting_trx_rows_locked`,`waiting_trx_rows_modified`,`waiting_pid`,`waiting_query`,`waiting_lock_id`,`waiting_lock_mode`,`blocking_trx_id`,`blocking_pid`,`blocking_query`,`blocking_lock_id`,`blocking_lock_mode`,`blocking_trx_started`,`blocking_trx_age`,`blocking_trx_rows_locked`,`blocking_trx_rows_modified`,`sql_kill_blocking_query`,`sql_kill_blocking_connection`) AS select `r`.`trx_wait_started` AS `wait_started`,timediff(now(),`r`.`trx_wait_started`) AS `wait_age`,timestampdiff(SECOND,`r`.`trx_wait_started`,now()) AS `wait_age_secs`,concat(`sys`.`quote_identifier`(`rl`.`OBJECT_SCHEMA`),'.',`sys`.`quote_identifier`(`rl`.`OBJECT_NAME`)) AS `locked_table`,`rl`.`OBJECT_SCHEMA` AS `locked_table_schema`,`rl`.`OBJECT_NAME` AS `locked_table_name`,`rl`.`PARTITION_NAME` AS `locked_table_partition`,`rl`.`SUBPARTITION_NAME` AS `locked_table_subpartition`,`rl`.`INDEX_NAME` AS `locked_index`,`rl`.`LOCK_TYPE` AS `locked_type`,`r`.`trx_id` AS `waiting_trx_id`,`r`.`trx_started` AS `waiting_trx_started`,timediff(now(),`r`.`trx_started`) AS `waiting_trx_age`,`r`.`trx_rows_locked` AS `waiting_trx_rows_locked`,`r`.`trx_rows_modified` AS `waiting_trx_rows_modified`,`r`.`trx_mysql_thread_id` AS `waiting_pid`,`sys`.`format_statement`(`r`.`trx_query`) AS `waiting_query`,`rl`.`ENGINE_LOCK_ID` AS `waiting_lock_id`,`rl`.`LOCK_MODE` AS `waiting_lock_mode`,`b`.`trx_id` AS `blocking_trx_id`,`b`.`trx_mysql_thread_id` AS `blocking_pid`,`sys`.`format_statement`(`b`.`trx_query`) AS `blocking_query`,`bl`.`ENGINE_LOCK_ID` AS `blocking_lock_id`,`bl`.`LOCK_MODE` AS `blocking_lock_mode`,`b`.`trx_started` AS `blocking_trx_started`,timediff(now(),`b`.`trx_started`) AS `blocking_trx_age`,`b`.`trx_rows_locked` AS `blocking_trx_rows_locked`,`b`.`trx_rows_modified` AS `blocking_trx_rows_modified`,concat('KILL QUERY ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_query`,concat('KILL ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_connection` from ((((`performance_schema`.`data_lock_waits` `w` join `information_schema`.`INNODB_TRX` `b` on((`b`.`trx_id` = cast(`w`.`BLOCKING_ENGINE_TRANSACTION_ID` as char charset utf8mb4)))) join `information_schema`.`INNODB_TRX` `r` on((`r`.`trx_id` = cast(`w`.`REQUESTING_ENGINE_TRANSACTION_ID` as char charset utf8mb4)))) join `performance_schema`.`data_locks` `bl` on(((`bl`.`ENGINE_LOCK_ID` = `w`.`BLOCKING_ENGINE_LOCK_ID`) and (`bl`.`ENGINE` = `w`.`ENGINE`)))) join `performance_schema`.`data_locks` `rl` on(((`rl`.`ENGINE_LOCK_ID` = `w`.`REQUESTING_ENGINE_LOCK_ID`) and (`rl`.`ENGINE` = `w`.`ENGINE`)))) order by `r`.`trx_wait_started` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_by_thread_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `io_by_thread_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_by_thread_by_latency` (`user`,`total`,`total_latency`,`min_latency`,`avg_latency`,`max_latency`,`thread_id`,`processlist_id`) AS select if((`performance_schema`.`threads`.`PROCESSLIST_ID` is null),substring_index(`performance_schema`.`threads`.`NAME`,'/',-(1)),concat(`performance_schema`.`threads`.`PROCESSLIST_USER`,'@',convert(`performance_schema`.`threads`.`PROCESSLIST_HOST` using utf8mb4))) AS `user`,sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`COUNT_STAR`) AS `total`,format_pico_time(sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,format_pico_time(min(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MIN_TIMER_WAIT`)) AS `min_latency`,format_pico_time(avg(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`AVG_TIMER_WAIT`)) AS `avg_latency`,format_pico_time(max(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency`,`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` AS `thread_id`,`performance_schema`.`threads`.`PROCESSLIST_ID` AS `processlist_id` from (`performance_schema`.`events_waits_summary_by_thread_by_event_name` left join `performance_schema`.`threads` on((`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`))) where ((`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT` > 0)) group by `performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID`,`performance_schema`.`threads`.`PROCESSLIST_ID`,`user` order by sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_global_by_file_by_bytes`
--

/*!50001 DROP VIEW IF EXISTS `io_global_by_file_by_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_global_by_file_by_bytes` (`file`,`count_read`,`total_read`,`avg_read`,`count_write`,`total_written`,`avg_write`,`total`,`write_pct`) AS select `sys`.`format_path`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,format_bytes(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_read`,format_bytes(ifnull((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_READ`,0)),0)) AS `avg_read`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,format_bytes(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total_written`,format_bytes(ifnull((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE`,0)),0.00)) AS `avg_write`,format_bytes((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`)) AS `total`,ifnull(round((100 - ((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`),0)) * 100)),2),0.00) AS `write_pct` from `performance_schema`.`file_summary_by_instance` order by (`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_global_by_file_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `io_global_by_file_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_global_by_file_by_latency` (`file`,`total`,`total_latency`,`count_read`,`read_latency`,`count_write`,`write_latency`,`count_misc`,`misc_latency`) AS select `sys`.`format_path`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,format_pico_time(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_READ`) AS `read_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,format_pico_time(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WRITE`) AS `write_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_MISC` AS `count_misc`,format_pico_time(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_MISC`) AS `misc_latency` from `performance_schema`.`file_summary_by_instance` order by `performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_global_by_wait_by_bytes`
--

/*!50001 DROP VIEW IF EXISTS `io_global_by_wait_by_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_global_by_wait_by_bytes` (`event_name`,`total`,`total_latency`,`min_latency`,`avg_latency`,`max_latency`,`count_read`,`total_read`,`avg_read`,`count_write`,`total_written`,`avg_written`,`total_requested`) AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-(2)) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,format_bytes(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_read`,format_bytes(ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0)),0)) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,format_bytes(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total_written`,format_bytes(ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0)),0)) AS `avg_written`,format_bytes((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`)) AS `total_requested` from `performance_schema`.`file_summary_by_event_name` where ((`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0)) order by (`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_global_by_wait_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `io_global_by_wait_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_global_by_wait_by_latency` (`event_name`,`total`,`total_latency`,`avg_latency`,`max_latency`,`read_latency`,`write_latency`,`misc_latency`,`count_read`,`total_read`,`avg_read`,`count_write`,`total_written`,`avg_written`) AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-(2)) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_READ`) AS `read_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WRITE`) AS `write_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_MISC`) AS `misc_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,format_bytes(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_read`,format_bytes(ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0)),0)) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,format_bytes(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total_written`,format_bytes(ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0)),0)) AS `avg_written` from `performance_schema`.`file_summary_by_event_name` where ((`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0)) order by `performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `latest_file_io`
--

/*!50001 DROP VIEW IF EXISTS `latest_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `latest_file_io` (`thread`,`file`,`latency`,`operation`,`requested`) AS select if((`information_schema`.`processlist`.`ID` is null),concat(substring_index(`performance_schema`.`threads`.`NAME`,'/',-(1)),':',`performance_schema`.`events_waits_history_long`.`THREAD_ID`),convert(concat(`information_schema`.`processlist`.`USER`,'@',`information_schema`.`processlist`.`HOST`,':',`information_schema`.`processlist`.`ID`) using utf8mb4)) AS `thread`,`sys`.`format_path`(`performance_schema`.`events_waits_history_long`.`OBJECT_NAME`) AS `file`,format_pico_time(`performance_schema`.`events_waits_history_long`.`TIMER_WAIT`) AS `latency`,`performance_schema`.`events_waits_history_long`.`OPERATION` AS `operation`,format_bytes(`performance_schema`.`events_waits_history_long`.`NUMBER_OF_BYTES`) AS `requested` from ((`performance_schema`.`events_waits_history_long` join `performance_schema`.`threads` on((`performance_schema`.`events_waits_history_long`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`))) left join `information_schema`.`PROCESSLIST` on((`performance_schema`.`threads`.`PROCESSLIST_ID` = `information_schema`.`processlist`.`ID`))) where ((`performance_schema`.`events_waits_history_long`.`OBJECT_NAME` is not null) and (`performance_schema`.`events_waits_history_long`.`EVENT_NAME` like 'wait/io/file/%')) order by `performance_schema`.`events_waits_history_long`.`TIMER_START` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_by_host_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `memory_by_host_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_by_host_by_current_bytes` (`host`,`current_count_used`,`current_allocated`,`current_avg_alloc`,`current_max_alloc`,`total_allocated`) AS select if((`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,format_bytes(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_allocated`,format_bytes(ifnull((sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`),0)),0)) AS `current_avg_alloc`,format_bytes(max(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_max_alloc`,format_bytes(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`)) AS `total_allocated` from `performance_schema`.`memory_summary_by_host_by_event_name` group by if((`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_by_thread_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `memory_by_thread_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_by_thread_by_current_bytes` (`thread_id`,`user`,`current_count_used`,`current_allocated`,`current_avg_alloc`,`current_max_alloc`,`total_allocated`) AS select `mt`.`THREAD_ID` AS `thread_id`,if((`t`.`NAME` = 'thread/sql/one_connection'),concat(`t`.`PROCESSLIST_USER`,'@',convert(`t`.`PROCESSLIST_HOST` using utf8mb4)),replace(`t`.`NAME`,'thread/','')) AS `user`,sum(`mt`.`CURRENT_COUNT_USED`) AS `current_count_used`,format_bytes(sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_allocated`,format_bytes(ifnull((sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`mt`.`CURRENT_COUNT_USED`),0)),0)) AS `current_avg_alloc`,format_bytes(max(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_max_alloc`,format_bytes(sum(`mt`.`SUM_NUMBER_OF_BYTES_ALLOC`)) AS `total_allocated` from (`performance_schema`.`memory_summary_by_thread_by_event_name` `mt` join `performance_schema`.`threads` `t` on((`mt`.`THREAD_ID` = `t`.`THREAD_ID`))) group by `mt`.`THREAD_ID`,if((`t`.`NAME` = 'thread/sql/one_connection'),concat(`t`.`PROCESSLIST_USER`,'@',convert(`t`.`PROCESSLIST_HOST` using utf8mb4)),replace(`t`.`NAME`,'thread/','')) order by sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_by_user_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `memory_by_user_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_by_user_by_current_bytes` (`user`,`current_count_used`,`current_allocated`,`current_avg_alloc`,`current_max_alloc`,`total_allocated`) AS select if((`performance_schema`.`memory_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,format_bytes(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_allocated`,format_bytes(ifnull((sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`),0)),0)) AS `current_avg_alloc`,format_bytes(max(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_max_alloc`,format_bytes(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`)) AS `total_allocated` from `performance_schema`.`memory_summary_by_user_by_event_name` group by if((`performance_schema`.`memory_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_global_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `memory_global_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_global_by_current_bytes` (`event_name`,`current_count`,`current_alloc`,`current_avg_alloc`,`high_count`,`high_alloc`,`high_avg_alloc`) AS select `performance_schema`.`memory_summary_global_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED` AS `current_count`,format_bytes(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_alloc`,format_bytes(ifnull((`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED`,0)),0)) AS `current_avg_alloc`,`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED` AS `high_count`,format_bytes(`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED`) AS `high_alloc`,format_bytes(ifnull((`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED`,0)),0)) AS `high_avg_alloc` from `performance_schema`.`memory_summary_global_by_event_name` where (`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` > 0) order by `performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_global_total`
--

/*!50001 DROP VIEW IF EXISTS `memory_global_total`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_global_total` (`total_allocated`) AS select format_bytes(sum(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `total_allocated` from `performance_schema`.`memory_summary_global_by_event_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `metrics`
--

/*!50001 DROP VIEW IF EXISTS `metrics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `metrics` (`Variable_name`,`Variable_value`,`Type`,`Enabled`) AS select lower(`performance_schema`.`global_status`.`VARIABLE_NAME`) AS `Variable_name`,`performance_schema`.`global_status`.`VARIABLE_VALUE` AS `Variable_value`,'Global Status' AS `Type`,'YES' AS `Enabled` from `performance_schema`.`global_status` union all select `information_schema`.`innodb_metrics`.`NAME` AS `Variable_name`,`information_schema`.`innodb_metrics`.`COUNT` AS `Variable_value`,concat('InnoDB Metrics - ',`information_schema`.`innodb_metrics`.`SUBSYSTEM`) AS `Type`,if((`information_schema`.`innodb_metrics`.`STATUS` = 'enabled'),'YES','NO') AS `Enabled` from `information_schema`.`INNODB_METRICS` where (`information_schema`.`innodb_metrics`.`NAME` not in ('lock_row_lock_time','lock_row_lock_time_avg','lock_row_lock_time_max','lock_row_lock_waits','buffer_pool_reads','buffer_pool_read_requests','buffer_pool_write_requests','buffer_pool_wait_free','buffer_pool_read_ahead','buffer_pool_read_ahead_evicted','buffer_pool_pages_total','buffer_pool_pages_misc','buffer_pool_pages_data','buffer_pool_bytes_data','buffer_pool_pages_dirty','buffer_pool_bytes_dirty','buffer_pool_pages_free','buffer_pages_created','buffer_pages_written','buffer_pages_read','buffer_data_reads','buffer_data_written','file_num_open_files','os_log_bytes_written','os_log_fsyncs','os_log_pending_fsyncs','os_log_pending_writes','log_waits','log_write_requests','log_writes','innodb_dblwr_writes','innodb_dblwr_pages_written','innodb_page_size')) union all select 'memory_current_allocated' AS `Variable_name`,sum(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `Variable_value`,'Performance Schema' AS `Type`,if(((select count(0) from `performance_schema`.`setup_instruments` where ((`performance_schema`.`setup_instruments`.`NAME` like 'memory/%') and (`performance_schema`.`setup_instruments`.`ENABLED` = 'YES'))) = 0),'NO',if(((select count(0) from `performance_schema`.`setup_instruments` where ((`performance_schema`.`setup_instruments`.`NAME` like 'memory/%') and (`performance_schema`.`setup_instruments`.`ENABLED` = 'NO'))) = 0),'YES','PARTIAL')) AS `Enabled` from `performance_schema`.`memory_summary_global_by_event_name` union all select 'memory_total_allocated' AS `Variable_name`,sum(`performance_schema`.`memory_summary_global_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`) AS `Variable_value`,'Performance Schema' AS `Type`,if(((select count(0) from `performance_schema`.`setup_instruments` where ((`performance_schema`.`setup_instruments`.`NAME` like 'memory/%') and (`performance_schema`.`setup_instruments`.`ENABLED` = 'YES'))) = 0),'NO',if(((select count(0) from `performance_schema`.`setup_instruments` where ((`performance_schema`.`setup_instruments`.`NAME` like 'memory/%') and (`performance_schema`.`setup_instruments`.`ENABLED` = 'NO'))) = 0),'YES','PARTIAL')) AS `Enabled` from `performance_schema`.`memory_summary_global_by_event_name` union all select 'NOW()' AS `Variable_name`,now(3) AS `Variable_value`,'System Time' AS `Type`,'YES' AS `Enabled` union all select 'UNIX_TIMESTAMP()' AS `Variable_name`,round(unix_timestamp(now(3)),3) AS `Variable_value`,'System Time' AS `Type`,'YES' AS `Enabled` order by `Type`,`Variable_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `processlist`
--

/*!50001 DROP VIEW IF EXISTS `processlist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `processlist` (`thd_id`,`conn_id`,`user`,`db`,`command`,`state`,`time`,`current_statement`,`execution_engine`,`statement_latency`,`progress`,`lock_latency`,`cpu_latency`,`rows_examined`,`rows_sent`,`rows_affected`,`tmp_tables`,`tmp_disk_tables`,`full_scan`,`last_statement`,`last_statement_latency`,`current_memory`,`last_wait`,`last_wait_latency`,`source`,`trx_latency`,`trx_state`,`trx_autocommit`,`pid`,`program_name`) AS select `pps`.`THREAD_ID` AS `thd_id`,`pps`.`PROCESSLIST_ID` AS `conn_id`,if((`pps`.`NAME` in ('thread/sql/one_connection','thread/thread_pool/tp_one_connection')),concat(`pps`.`PROCESSLIST_USER`,'@',convert(`pps`.`PROCESSLIST_HOST` using utf8mb4)),replace(`pps`.`NAME`,'thread/','')) AS `user`,`pps`.`PROCESSLIST_DB` AS `db`,`pps`.`PROCESSLIST_COMMAND` AS `command`,`pps`.`PROCESSLIST_STATE` AS `state`,`pps`.`PROCESSLIST_TIME` AS `time`,`sys`.`format_statement`(`pps`.`PROCESSLIST_INFO`) AS `current_statement`,`pps`.`EXECUTION_ENGINE` AS `execution_engine`,if((`esc`.`END_EVENT_ID` is null),format_pico_time(`esc`.`TIMER_WAIT`),NULL) AS `statement_latency`,if((`esc`.`END_EVENT_ID` is null),round((100 * (`estc`.`WORK_COMPLETED` / `estc`.`WORK_ESTIMATED`)),2),NULL) AS `progress`,format_pico_time(`esc`.`LOCK_TIME`) AS `lock_latency`,format_pico_time(`esc`.`CPU_TIME`) AS `cpu_latency`,`esc`.`ROWS_EXAMINED` AS `rows_examined`,`esc`.`ROWS_SENT` AS `rows_sent`,`esc`.`ROWS_AFFECTED` AS `rows_affected`,`esc`.`CREATED_TMP_TABLES` AS `tmp_tables`,`esc`.`CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,if(((`esc`.`NO_GOOD_INDEX_USED` > 0) or (`esc`.`NO_INDEX_USED` > 0)),'YES','NO') AS `full_scan`,if((`esc`.`END_EVENT_ID` is not null),`sys`.`format_statement`(`esc`.`SQL_TEXT`),NULL) AS `last_statement`,if((`esc`.`END_EVENT_ID` is not null),format_pico_time(`esc`.`TIMER_WAIT`),NULL) AS `last_statement_latency`,format_bytes(`mem`.`current_allocated`) AS `current_memory`,`ewc`.`EVENT_NAME` AS `last_wait`,if(((`ewc`.`END_EVENT_ID` is null) and (`ewc`.`EVENT_NAME` is not null)),'Still Waiting',convert(format_pico_time(`ewc`.`TIMER_WAIT`) using utf8mb4)) AS `last_wait_latency`,`ewc`.`SOURCE` AS `source`,format_pico_time(`etc`.`TIMER_WAIT`) AS `trx_latency`,`etc`.`STATE` AS `trx_state`,`etc`.`AUTOCOMMIT` AS `trx_autocommit`,`conattr_pid`.`ATTR_VALUE` AS `pid`,`conattr_progname`.`ATTR_VALUE` AS `program_name` from (((((((`performance_schema`.`threads` `pps` left join `performance_schema`.`events_waits_current` `ewc` on((`pps`.`THREAD_ID` = `ewc`.`THREAD_ID`))) left join `performance_schema`.`events_stages_current` `estc` on((`pps`.`THREAD_ID` = `estc`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `esc` on((`pps`.`THREAD_ID` = `esc`.`THREAD_ID`))) left join `performance_schema`.`events_transactions_current` `etc` on((`pps`.`THREAD_ID` = `etc`.`THREAD_ID`))) left join `x$memory_by_thread_by_current_bytes` `mem` on((`pps`.`THREAD_ID` = `mem`.`thread_id`))) left join `performance_schema`.`session_connect_attrs` `conattr_pid` on(((`conattr_pid`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID`) and (`conattr_pid`.`ATTR_NAME` = '_pid')))) left join `performance_schema`.`session_connect_attrs` `conattr_progname` on(((`conattr_progname`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID`) and (`conattr_progname`.`ATTR_NAME` = 'program_name')))) order by `pps`.`PROCESSLIST_TIME` desc,`last_wait_latency` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ps_check_lost_instrumentation`
--

/*!50001 DROP VIEW IF EXISTS `ps_check_lost_instrumentation`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `ps_check_lost_instrumentation` (`variable_name`,`variable_value`) AS select `performance_schema`.`global_status`.`VARIABLE_NAME` AS `variable_name`,`performance_schema`.`global_status`.`VARIABLE_VALUE` AS `variable_value` from `performance_schema`.`global_status` where ((`performance_schema`.`global_status`.`VARIABLE_NAME` like 'perf%lost') and (`performance_schema`.`global_status`.`VARIABLE_VALUE` > 0)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_auto_increment_columns`
--

/*!50001 DROP VIEW IF EXISTS `schema_auto_increment_columns`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_auto_increment_columns` (`table_schema`,`table_name`,`column_name`,`data_type`,`column_type`,`is_signed`,`is_unsigned`,`max_value`,`auto_increment`,`auto_increment_ratio`) AS select `information_schema`.`columns`.`TABLE_SCHEMA` AS `TABLE_SCHEMA`,`information_schema`.`columns`.`TABLE_NAME` AS `TABLE_NAME`,`information_schema`.`columns`.`COLUMN_NAME` AS `COLUMN_NAME`,`information_schema`.`columns`.`DATA_TYPE` AS `DATA_TYPE`,`information_schema`.`columns`.`COLUMN_TYPE` AS `COLUMN_TYPE`,(locate('unsigned',`information_schema`.`columns`.`COLUMN_TYPE`) = 0) AS `is_signed`,(locate('unsigned',`information_schema`.`columns`.`COLUMN_TYPE`) > 0) AS `is_unsigned`,((case `information_schema`.`columns`.`DATA_TYPE` when 'tinyint' then 255 when 'smallint' then 65535 when 'mediumint' then 16777215 when 'int' then 4294967295 when 'bigint' then 18446744073709551615 end) >> if((locate('unsigned',`information_schema`.`columns`.`COLUMN_TYPE`) > 0),0,1)) AS `max_value`,`information_schema`.`tables`.`AUTO_INCREMENT` AS `AUTO_INCREMENT`,(`information_schema`.`tables`.`AUTO_INCREMENT` / ((case `information_schema`.`columns`.`DATA_TYPE` when 'tinyint' then 255 when 'smallint' then 65535 when 'mediumint' then 16777215 when 'int' then 4294967295 when 'bigint' then 18446744073709551615 end) >> if((locate('unsigned',`information_schema`.`columns`.`COLUMN_TYPE`) > 0),0,1))) AS `auto_increment_ratio` from (`information_schema`.`COLUMNS` join `information_schema`.`TABLES` on(((`information_schema`.`columns`.`TABLE_SCHEMA` = `information_schema`.`tables`.`TABLE_SCHEMA`) and (`information_schema`.`columns`.`TABLE_NAME` = `information_schema`.`tables`.`TABLE_NAME`)))) where ((`information_schema`.`columns`.`TABLE_SCHEMA` not in ('mysql','sys','INFORMATION_SCHEMA','performance_schema')) and (`information_schema`.`tables`.`TABLE_TYPE` = 'BASE TABLE') and (`information_schema`.`columns`.`EXTRA` = 'auto_increment')) order by (`information_schema`.`tables`.`AUTO_INCREMENT` / ((case `information_schema`.`columns`.`DATA_TYPE` when 'tinyint' then 255 when 'smallint' then 65535 when 'mediumint' then 16777215 when 'int' then 4294967295 when 'bigint' then 18446744073709551615 end) >> if((locate('unsigned',`information_schema`.`columns`.`COLUMN_TYPE`) > 0),0,1))) desc,((case `information_schema`.`columns`.`DATA_TYPE` when 'tinyint' then 255 when 'smallint' then 65535 when 'mediumint' then 16777215 when 'int' then 4294967295 when 'bigint' then 18446744073709551615 end) >> if((locate('unsigned',`information_schema`.`columns`.`COLUMN_TYPE`) > 0),0,1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_index_statistics`
--

/*!50001 DROP VIEW IF EXISTS `schema_index_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_index_statistics` (`table_schema`,`table_name`,`index_name`,`rows_selected`,`select_latency`,`rows_inserted`,`insert_latency`,`rows_updated`,`update_latency`,`rows_deleted`,`delete_latency`) AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `table_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `table_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` AS `index_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_FETCH` AS `rows_selected`,format_pico_time(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_FETCH`) AS `select_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_INSERT` AS `rows_inserted`,format_pico_time(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_INSERT`) AS `insert_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_UPDATE` AS `rows_updated`,format_pico_time(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_UPDATE`) AS `update_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_DELETE` AS `rows_deleted`,format_pico_time(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_DELETE`) AS `delete_latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where (`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` is not null) order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_object_overview`
--

/*!50001 DROP VIEW IF EXISTS `schema_object_overview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_object_overview` (`db`,`object_type`,`count`) AS select `information_schema`.`routines`.`ROUTINE_SCHEMA` AS `db`,`information_schema`.`routines`.`ROUTINE_TYPE` AS `object_type`,count(0) AS `count` from `information_schema`.`ROUTINES` group by `information_schema`.`routines`.`ROUTINE_SCHEMA`,`information_schema`.`routines`.`ROUTINE_TYPE` union select `information_schema`.`tables`.`TABLE_SCHEMA` AS `TABLE_SCHEMA`,`information_schema`.`tables`.`TABLE_TYPE` AS `TABLE_TYPE`,count(0) AS `COUNT(*)` from `information_schema`.`TABLES` group by `information_schema`.`tables`.`TABLE_SCHEMA`,`information_schema`.`tables`.`TABLE_TYPE` union select `information_schema`.`statistics`.`TABLE_SCHEMA` AS `TABLE_SCHEMA`,concat('INDEX (',`information_schema`.`statistics`.`INDEX_TYPE`,')') AS `CONCAT('INDEX (', INDEX_TYPE, ')')`,count(0) AS `COUNT(*)` from `information_schema`.`STATISTICS` group by `information_schema`.`statistics`.`TABLE_SCHEMA`,`information_schema`.`statistics`.`INDEX_TYPE` union select `information_schema`.`triggers`.`TRIGGER_SCHEMA` AS `TRIGGER_SCHEMA`,'TRIGGER' AS `TRIGGER`,count(0) AS `COUNT(*)` from `information_schema`.`TRIGGERS` group by `information_schema`.`triggers`.`TRIGGER_SCHEMA` union select `information_schema`.`events`.`EVENT_SCHEMA` AS `EVENT_SCHEMA`,'EVENT' AS `EVENT`,count(0) AS `COUNT(*)` from `information_schema`.`EVENTS` group by `information_schema`.`events`.`EVENT_SCHEMA` order by `db`,`object_type` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_redundant_indexes`
--

/*!50001 DROP VIEW IF EXISTS `schema_redundant_indexes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_redundant_indexes` (`table_schema`,`table_name`,`redundant_index_name`,`redundant_index_columns`,`redundant_index_non_unique`,`dominant_index_name`,`dominant_index_columns`,`dominant_index_non_unique`,`subpart_exists`,`sql_drop_index`) AS select `redundant_keys`.`table_schema` AS `table_schema`,`redundant_keys`.`table_name` AS `table_name`,`redundant_keys`.`index_name` AS `redundant_index_name`,`redundant_keys`.`index_columns` AS `redundant_index_columns`,`redundant_keys`.`non_unique` AS `redundant_index_non_unique`,`dominant_keys`.`index_name` AS `dominant_index_name`,`dominant_keys`.`index_columns` AS `dominant_index_columns`,`dominant_keys`.`non_unique` AS `dominant_index_non_unique`,if(((0 <> `redundant_keys`.`subpart_exists`) or (0 <> `dominant_keys`.`subpart_exists`)),1,0) AS `subpart_exists`,concat('ALTER TABLE `',`redundant_keys`.`table_schema`,'`.`',`redundant_keys`.`table_name`,'` DROP INDEX `',`redundant_keys`.`index_name`,'`') AS `sql_drop_index` from (`x$schema_flattened_keys` `redundant_keys` join `x$schema_flattened_keys` `dominant_keys` on(((`redundant_keys`.`table_schema` = `dominant_keys`.`table_schema`) and (`redundant_keys`.`table_name` = `dominant_keys`.`table_name`)))) where ((`redundant_keys`.`index_name` <> `dominant_keys`.`index_name`) and (((`redundant_keys`.`index_columns` = `dominant_keys`.`index_columns`) and ((`redundant_keys`.`non_unique` > `dominant_keys`.`non_unique`) or ((`redundant_keys`.`non_unique` = `dominant_keys`.`non_unique`) and (if((`redundant_keys`.`index_name` = 'PRIMARY'),'',`redundant_keys`.`index_name`) > if((`dominant_keys`.`index_name` = 'PRIMARY'),'',`dominant_keys`.`index_name`))))) or ((locate(concat(`redundant_keys`.`index_columns`,','),`dominant_keys`.`index_columns`) = 1) and (`redundant_keys`.`non_unique` = 1)) or ((locate(concat(`dominant_keys`.`index_columns`,','),`redundant_keys`.`index_columns`) = 1) and (`dominant_keys`.`non_unique` = 0)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_table_lock_waits`
--

/*!50001 DROP VIEW IF EXISTS `schema_table_lock_waits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_table_lock_waits` (`object_schema`,`object_name`,`waiting_thread_id`,`waiting_pid`,`waiting_account`,`waiting_lock_type`,`waiting_lock_duration`,`waiting_query`,`waiting_query_secs`,`waiting_query_rows_affected`,`waiting_query_rows_examined`,`blocking_thread_id`,`blocking_pid`,`blocking_account`,`blocking_lock_type`,`blocking_lock_duration`,`sql_kill_blocking_query`,`sql_kill_blocking_connection`) AS select `g`.`OBJECT_SCHEMA` AS `object_schema`,`g`.`OBJECT_NAME` AS `object_name`,`pt`.`THREAD_ID` AS `waiting_thread_id`,`pt`.`PROCESSLIST_ID` AS `waiting_pid`,`sys`.`ps_thread_account`(`p`.`OWNER_THREAD_ID`) AS `waiting_account`,`p`.`LOCK_TYPE` AS `waiting_lock_type`,`p`.`LOCK_DURATION` AS `waiting_lock_duration`,`sys`.`format_statement`(`pt`.`PROCESSLIST_INFO`) AS `waiting_query`,`pt`.`PROCESSLIST_TIME` AS `waiting_query_secs`,`ps`.`ROWS_AFFECTED` AS `waiting_query_rows_affected`,`ps`.`ROWS_EXAMINED` AS `waiting_query_rows_examined`,`gt`.`THREAD_ID` AS `blocking_thread_id`,`gt`.`PROCESSLIST_ID` AS `blocking_pid`,`sys`.`ps_thread_account`(`g`.`OWNER_THREAD_ID`) AS `blocking_account`,`g`.`LOCK_TYPE` AS `blocking_lock_type`,`g`.`LOCK_DURATION` AS `blocking_lock_duration`,concat('KILL QUERY ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_query`,concat('KILL ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_connection` from (((((`performance_schema`.`metadata_locks` `g` join `performance_schema`.`metadata_locks` `p` on(((`g`.`OBJECT_TYPE` = `p`.`OBJECT_TYPE`) and (`g`.`OBJECT_SCHEMA` = `p`.`OBJECT_SCHEMA`) and (`g`.`OBJECT_NAME` = `p`.`OBJECT_NAME`) and (`g`.`LOCK_STATUS` = 'GRANTED') and (`p`.`LOCK_STATUS` = 'PENDING')))) join `performance_schema`.`threads` `gt` on((`g`.`OWNER_THREAD_ID` = `gt`.`THREAD_ID`))) join `performance_schema`.`threads` `pt` on((`p`.`OWNER_THREAD_ID` = `pt`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `gs` on((`g`.`OWNER_THREAD_ID` = `gs`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `ps` on((`p`.`OWNER_THREAD_ID` = `ps`.`THREAD_ID`))) where (`g`.`OBJECT_TYPE` = 'TABLE') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_table_statistics`
--

/*!50001 DROP VIEW IF EXISTS `schema_table_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_table_statistics` (`table_schema`,`table_name`,`total_latency`,`rows_fetched`,`fetch_latency`,`rows_inserted`,`insert_latency`,`rows_updated`,`update_latency`,`rows_deleted`,`delete_latency`,`io_read_requests`,`io_read`,`io_read_latency`,`io_write_requests`,`io_write`,`io_write_latency`,`io_misc_requests`,`io_misc_latency`) AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,format_pico_time(`pst`.`SUM_TIMER_WAIT`) AS `total_latency`,`pst`.`COUNT_FETCH` AS `rows_fetched`,format_pico_time(`pst`.`SUM_TIMER_FETCH`) AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,format_pico_time(`pst`.`SUM_TIMER_INSERT`) AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,format_pico_time(`pst`.`SUM_TIMER_UPDATE`) AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,format_pico_time(`pst`.`SUM_TIMER_DELETE`) AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,format_bytes(`fsbi`.`sum_number_of_bytes_read`) AS `io_read`,format_pico_time(`fsbi`.`sum_timer_read`) AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,format_bytes(`fsbi`.`sum_number_of_bytes_write`) AS `io_write`,format_pico_time(`fsbi`.`sum_timer_write`) AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,format_pico_time(`fsbi`.`sum_timer_misc`) AS `io_misc_latency` from (`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `x$ps_schema_table_statistics_io` `fsbi` on(((`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema`) and (`pst`.`OBJECT_NAME` = `fsbi`.`table_name`)))) order by `pst`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_table_statistics_with_buffer`
--

/*!50001 DROP VIEW IF EXISTS `schema_table_statistics_with_buffer`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_table_statistics_with_buffer` (`table_schema`,`table_name`,`rows_fetched`,`fetch_latency`,`rows_inserted`,`insert_latency`,`rows_updated`,`update_latency`,`rows_deleted`,`delete_latency`,`io_read_requests`,`io_read`,`io_read_latency`,`io_write_requests`,`io_write`,`io_write_latency`,`io_misc_requests`,`io_misc_latency`,`innodb_buffer_allocated`,`innodb_buffer_data`,`innodb_buffer_free`,`innodb_buffer_pages`,`innodb_buffer_pages_hashed`,`innodb_buffer_pages_old`,`innodb_buffer_rows_cached`) AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,`pst`.`COUNT_FETCH` AS `rows_fetched`,format_pico_time(`pst`.`SUM_TIMER_FETCH`) AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,format_pico_time(`pst`.`SUM_TIMER_INSERT`) AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,format_pico_time(`pst`.`SUM_TIMER_UPDATE`) AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,format_pico_time(`pst`.`SUM_TIMER_DELETE`) AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,format_bytes(`fsbi`.`sum_number_of_bytes_read`) AS `io_read`,format_pico_time(`fsbi`.`sum_timer_read`) AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,format_bytes(`fsbi`.`sum_number_of_bytes_write`) AS `io_write`,format_pico_time(`fsbi`.`sum_timer_write`) AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,format_pico_time(`fsbi`.`sum_timer_misc`) AS `io_misc_latency`,format_bytes(`ibp`.`allocated`) AS `innodb_buffer_allocated`,format_bytes(`ibp`.`data`) AS `innodb_buffer_data`,format_bytes((`ibp`.`allocated` - `ibp`.`data`)) AS `innodb_buffer_free`,`ibp`.`pages` AS `innodb_buffer_pages`,`ibp`.`pages_hashed` AS `innodb_buffer_pages_hashed`,`ibp`.`pages_old` AS `innodb_buffer_pages_old`,`ibp`.`rows_cached` AS `innodb_buffer_rows_cached` from ((`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `x$ps_schema_table_statistics_io` `fsbi` on(((`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema`) and (`pst`.`OBJECT_NAME` = `fsbi`.`table_name`)))) left join `x$innodb_buffer_stats_by_table` `ibp` on(((`pst`.`OBJECT_SCHEMA` = `ibp`.`object_schema`) and (`pst`.`OBJECT_NAME` = `ibp`.`object_name`)))) order by `pst`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_tables_with_full_table_scans`
--

/*!50001 DROP VIEW IF EXISTS `schema_tables_with_full_table_scans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_tables_with_full_table_scans` (`object_schema`,`object_name`,`rows_full_scanned`,`latency`) AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `object_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `object_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` AS `rows_full_scanned`,format_pico_time(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT`) AS `latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where ((`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` is null) and (`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` > 0)) order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_unused_indexes`
--

/*!50001 DROP VIEW IF EXISTS `schema_unused_indexes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_unused_indexes` (`object_schema`,`object_name`,`index_name`) AS select `t`.`OBJECT_SCHEMA` AS `object_schema`,`t`.`OBJECT_NAME` AS `object_name`,`t`.`INDEX_NAME` AS `index_name` from (`performance_schema`.`table_io_waits_summary_by_index_usage` `t` join `information_schema`.`STATISTICS` `s` on(((`t`.`OBJECT_SCHEMA` = `information_schema`.`s`.`TABLE_SCHEMA`) and (`t`.`OBJECT_NAME` = `information_schema`.`s`.`TABLE_NAME`) and (`t`.`INDEX_NAME` = `information_schema`.`s`.`INDEX_NAME`)))) where ((`t`.`INDEX_NAME` is not null) and (`t`.`COUNT_STAR` = 0) and (`t`.`OBJECT_SCHEMA` <> 'mysql') and (`t`.`INDEX_NAME` <> 'PRIMARY') and (`information_schema`.`s`.`NON_UNIQUE` = 1) and (`information_schema`.`s`.`SEQ_IN_INDEX` = 1)) order by `t`.`OBJECT_SCHEMA`,`t`.`OBJECT_NAME` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `session`
--

/*!50001 DROP VIEW IF EXISTS `session`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `session` AS select `processlist`.`thd_id` AS `thd_id`,`processlist`.`conn_id` AS `conn_id`,`processlist`.`user` AS `user`,`processlist`.`db` AS `db`,`processlist`.`command` AS `command`,`processlist`.`state` AS `state`,`processlist`.`time` AS `time`,`processlist`.`current_statement` AS `current_statement`,`processlist`.`execution_engine` AS `execution_engine`,`processlist`.`statement_latency` AS `statement_latency`,`processlist`.`progress` AS `progress`,`processlist`.`lock_latency` AS `lock_latency`,`processlist`.`cpu_latency` AS `cpu_latency`,`processlist`.`rows_examined` AS `rows_examined`,`processlist`.`rows_sent` AS `rows_sent`,`processlist`.`rows_affected` AS `rows_affected`,`processlist`.`tmp_tables` AS `tmp_tables`,`processlist`.`tmp_disk_tables` AS `tmp_disk_tables`,`processlist`.`full_scan` AS `full_scan`,`processlist`.`last_statement` AS `last_statement`,`processlist`.`last_statement_latency` AS `last_statement_latency`,`processlist`.`current_memory` AS `current_memory`,`processlist`.`last_wait` AS `last_wait`,`processlist`.`last_wait_latency` AS `last_wait_latency`,`processlist`.`source` AS `source`,`processlist`.`trx_latency` AS `trx_latency`,`processlist`.`trx_state` AS `trx_state`,`processlist`.`trx_autocommit` AS `trx_autocommit`,`processlist`.`pid` AS `pid`,`processlist`.`program_name` AS `program_name` from `processlist` where ((`processlist`.`conn_id` is not null) and (`processlist`.`command` <> 'Daemon')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `session_ssl_status`
--

/*!50001 DROP VIEW IF EXISTS `session_ssl_status`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `session_ssl_status` (`thread_id`,`ssl_version`,`ssl_cipher`,`ssl_sessions_reused`) AS select `sslver`.`THREAD_ID` AS `thread_id`,`sslver`.`VARIABLE_VALUE` AS `ssl_version`,`sslcip`.`VARIABLE_VALUE` AS `ssl_cipher`,`sslreuse`.`VARIABLE_VALUE` AS `ssl_sessions_reused` from ((`performance_schema`.`status_by_thread` `sslver` left join `performance_schema`.`status_by_thread` `sslcip` on(((`sslcip`.`THREAD_ID` = `sslver`.`THREAD_ID`) and (`sslcip`.`VARIABLE_NAME` = 'Ssl_cipher')))) left join `performance_schema`.`status_by_thread` `sslreuse` on(((`sslreuse`.`THREAD_ID` = `sslver`.`THREAD_ID`) and (`sslreuse`.`VARIABLE_NAME` = 'Ssl_sessions_reused')))) where (`sslver`.`VARIABLE_NAME` = 'Ssl_version') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statement_analysis`
--

/*!50001 DROP VIEW IF EXISTS `statement_analysis`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statement_analysis` (`query`,`db`,`full_scan`,`exec_count`,`err_count`,`warn_count`,`total_latency`,`max_latency`,`avg_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_sent_avg`,`rows_examined`,`rows_examined_avg`,`rows_affected`,`rows_affected_avg`,`tmp_tables`,`tmp_disk_tables`,`rows_sorted`,`sort_merge_passes`,`max_controlled_memory`,`max_total_memory`,`digest`,`first_seen`,`last_seen`) AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,if(((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0)),'*','') AS `full_scan`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `err_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warn_count`,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`MAX_TIMER_WAIT`) AS `max_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`AVG_TIMER_WAIT`) AS `avg_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`SUM_LOCK_TIME`) AS `lock_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`SUM_CPU_TIME`) AS `cpu_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_sent_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` AS `rows_affected`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_affected_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,format_bytes(`performance_schema`.`events_statements_summary_by_digest`.`MAX_CONTROLLED_MEMORY`) AS `max_controlled_memory`,format_bytes(`performance_schema`.`events_statements_summary_by_digest`.`MAX_TOTAL_MEMORY`) AS `max_total_memory`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen` from `performance_schema`.`events_statements_summary_by_digest` order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_errors_or_warnings`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_errors_or_warnings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_errors_or_warnings` (`query`,`db`,`exec_count`,`errors`,`error_pct`,`warnings`,`warning_pct`,`first_seen`,`last_seen`,`digest`) AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `errors`,(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100) AS `error_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warnings`,(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100) AS `warning_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where ((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` > 0)) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_full_table_scans`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_full_table_scans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_full_table_scans` (`query`,`db`,`exec_count`,`total_latency`,`no_index_used_count`,`no_good_index_used_count`,`no_index_used_pct`,`rows_sent`,`rows_examined`,`rows_sent_avg`,`rows_examined_avg`,`first_seen`,`last_seen`,`digest`) AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` AS `no_index_used_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` AS `no_good_index_used_count`,round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100),0) AS `no_index_used_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`),0) AS `rows_sent_avg`,round((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`),0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0)) and (not((`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` like 'SHOW%')))) order by round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100),0) desc,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_runtimes_in_95th_percentile`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_runtimes_in_95th_percentile`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_runtimes_in_95th_percentile` (`query`,`db`,`full_scan`,`exec_count`,`err_count`,`warn_count`,`total_latency`,`max_latency`,`avg_latency`,`rows_sent`,`rows_sent_avg`,`rows_examined`,`rows_examined_avg`,`first_seen`,`last_seen`,`digest`) AS select `sys`.`format_statement`(`stmts`.`DIGEST_TEXT`) AS `query`,`stmts`.`SCHEMA_NAME` AS `db`,if(((`stmts`.`SUM_NO_GOOD_INDEX_USED` > 0) or (`stmts`.`SUM_NO_INDEX_USED` > 0)),'*','') AS `full_scan`,`stmts`.`COUNT_STAR` AS `exec_count`,`stmts`.`SUM_ERRORS` AS `err_count`,`stmts`.`SUM_WARNINGS` AS `warn_count`,format_pico_time(`stmts`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`stmts`.`MAX_TIMER_WAIT`) AS `max_latency`,format_pico_time(`stmts`.`AVG_TIMER_WAIT`) AS `avg_latency`,`stmts`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull((`stmts`.`SUM_ROWS_SENT` / nullif(`stmts`.`COUNT_STAR`,0)),0),0) AS `rows_sent_avg`,`stmts`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull((`stmts`.`SUM_ROWS_EXAMINED` / nullif(`stmts`.`COUNT_STAR`,0)),0),0) AS `rows_examined_avg`,`stmts`.`FIRST_SEEN` AS `first_seen`,`stmts`.`LAST_SEEN` AS `last_seen`,`stmts`.`DIGEST` AS `digest` from (`performance_schema`.`events_statements_summary_by_digest` `stmts` join `x$ps_digest_95th_percentile_by_avg_us` `top_percentile` on((round((`stmts`.`AVG_TIMER_WAIT` / 1000000),0) >= `top_percentile`.`avg_us`))) order by `stmts`.`AVG_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_sorting`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_sorting`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_sorting` (`query`,`db`,`exec_count`,`total_latency`,`sort_merge_passes`,`avg_sort_merges`,`sorts_using_scans`,`sort_using_range`,`rows_sorted`,`avg_rows_sorted`,`first_seen`,`last_seen`,`digest`) AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_sort_merges`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_SCAN` AS `sorts_using_scans`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_RANGE` AS `sort_using_range`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` > 0) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_temp_tables`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_temp_tables`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_temp_tables` (`query`,`db`,`exec_count`,`total_latency`,`memory_tmp_tables`,`disk_tmp_tables`,`avg_tmp_tables_per_query`,`tmp_tables_to_disk_pct`,`first_seen`,`last_seen`,`digest`) AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `memory_tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `disk_tmp_tables`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_tmp_tables_per_query`,round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES`,0)),0) * 100),0) AS `tmp_tables_to_disk_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` > 0) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary`
--

/*!50001 DROP VIEW IF EXISTS `user_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary` (`user`,`statements`,`statement_latency`,`statement_avg_latency`,`table_scans`,`file_ios`,`file_io_latency`,`current_connections`,`total_connections`,`unique_hosts`,`current_memory`,`total_memory_allocated`) AS select if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) AS `user`,sum(`stmt`.`total`) AS `statements`,format_pico_time(sum(`stmt`.`total_latency`)) AS `statement_latency`,format_pico_time(ifnull((sum(`stmt`.`total_latency`) / nullif(sum(`stmt`.`total`),0)),0)) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,format_pico_time(sum(`io`.`io_latency`)) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`HOST`) AS `unique_hosts`,format_bytes(sum(`mem`.`current_allocated`)) AS `current_memory`,format_bytes(sum(`mem`.`total_allocated`)) AS `total_memory_allocated` from (((`performance_schema`.`accounts` left join `x$user_summary_by_statement_latency` `stmt` on((if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) = `stmt`.`user`))) left join `x$user_summary_by_file_io` `io` on((if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) = `io`.`user`))) left join `x$memory_by_user_by_current_bytes` `mem` on((if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) = `mem`.`user`))) group by if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) order by sum(`stmt`.`total_latency`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_file_io`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_file_io` (`user`,`ios`,`io_latency`) AS select if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR`) AS `ios`,format_pico_time(sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`)) AS `io_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') group by if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_file_io_type`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_file_io_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_file_io_type` (`user`,`event_name`,`total`,`latency`,`max_latency`) AS select if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `latency`,format_pico_time(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where ((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file%') and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` > 0)) order by if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_stages`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_stages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_stages` (`user`,`event_name`,`total`,`total_latency`,`avg_latency`) AS select if((`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency` from `performance_schema`.`events_stages_summary_by_user_by_event_name` where (`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if((`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_statement_latency`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_statement_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_statement_latency` (`user`,`total`,`total_latency`,`max_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_examined`,`rows_affected`,`full_scans`) AS select if((`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR`) AS `total`,format_pico_time(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,format_pico_time(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency`,format_pico_time(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME`)) AS `lock_latency`,format_pico_time(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_CPU_TIME`)) AS `cpu_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED`)) AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` group by if((`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_statement_type`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_statement_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_statement_type` (`user`,`statement`,`total`,`total_latency`,`max_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_examined`,`rows_affected`,`full_scans`) AS select if((`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,substring_index(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`EVENT_NAME`,'/',-(1)) AS `statement`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_CPU_TIME`) AS `cpu_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` where (`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if((`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `version`
--

/*!50001 DROP VIEW IF EXISTS `version`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `version` (`sys_version`,`mysql_version`) AS select '2.1.3' AS `sys_version`,version() AS `mysql_version` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `wait_classes_global_by_avg_latency`
--

/*!50001 DROP VIEW IF EXISTS `wait_classes_global_by_avg_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `wait_classes_global_by_avg_latency` (`event_class`,`total`,`total_latency`,`min_latency`,`avg_latency`,`max_latency`) AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,format_pico_time(cast(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) as unsigned)) AS `total_latency`,format_pico_time(min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`)) AS `min_latency`,format_pico_time(ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0)) AS `avg_latency`,format_pico_time(cast(max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) as unsigned)) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0) and (`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle')) group by `event_class` order by ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `wait_classes_global_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `wait_classes_global_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `wait_classes_global_by_latency` (`event_class`,`total`,`total_latency`,`min_latency`,`avg_latency`,`max_latency`) AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,format_pico_time(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,format_pico_time(min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`)) AS `min_latency`,format_pico_time(ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0)) AS `avg_latency`,format_pico_time(max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0) and (`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle')) group by substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) order by sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `waits_by_host_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `waits_by_host_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `waits_by_host_by_latency` (`host`,`event`,`total`,`total_latency`,`avg_latency`,`max_latency`) AS select if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,format_pico_time(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where ((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `waits_by_user_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `waits_by_user_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `waits_by_user_by_latency` (`user`,`event`,`total`,`total_latency`,`avg_latency`,`max_latency`) AS select if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,format_pico_time(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where ((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is not null) and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `waits_global_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `waits_global_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `waits_global_by_latency` (`events`,`total`,`total_latency`,`avg_latency`,`max_latency`) AS select `performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_waits_summary_global_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,format_pico_time(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by `performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary` (`host`,`statements`,`statement_latency`,`statement_avg_latency`,`table_scans`,`file_ios`,`file_io_latency`,`current_connections`,`total_connections`,`unique_users`,`current_memory`,`total_memory_allocated`) AS select if((`performance_schema`.`accounts`.`HOST` is null),'background',`performance_schema`.`accounts`.`HOST`) AS `host`,sum(`stmt`.`total`) AS `statements`,sum(`stmt`.`total_latency`) AS `statement_latency`,(sum(`stmt`.`total_latency`) / sum(`stmt`.`total`)) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,sum(`io`.`io_latency`) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`USER`) AS `unique_users`,sum(`mem`.`current_allocated`) AS `current_memory`,sum(`mem`.`total_allocated`) AS `total_memory_allocated` from (((`performance_schema`.`accounts` join `x$host_summary_by_statement_latency` `stmt` on((`performance_schema`.`accounts`.`HOST` = `stmt`.`host`))) join `x$host_summary_by_file_io` `io` on((`performance_schema`.`accounts`.`HOST` = `io`.`host`))) join `x$memory_by_host_by_current_bytes` `mem` on((`performance_schema`.`accounts`.`HOST` = `mem`.`host`))) group by if((`performance_schema`.`accounts`.`HOST` is null),'background',`performance_schema`.`accounts`.`HOST`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_file_io`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_file_io` (`host`,`ios`,`io_latency`) AS select if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR`) AS `ios`,sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `io_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') group by if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_file_io_type`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_file_io_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_file_io_type` (`host`,`event_name`,`total`,`total_latency`,`max_latency`) AS select if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where ((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file%') and (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` > 0)) order by if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_stages`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_stages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_stages` (`host`,`event_name`,`total`,`total_latency`,`avg_latency`) AS select if((`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency` from `performance_schema`.`events_stages_summary_by_host_by_event_name` where (`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if((`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_statement_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_statement_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_statement_latency` (`host`,`total`,`total_latency`,`max_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_examined`,`rows_affected`,`full_scans`) AS select if((`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,max(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_CPU_TIME`) AS `cpu_latency`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED`)) AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` group by if((`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_statement_type`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_statement_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_statement_type` (`host`,`statement`,`total`,`total_latency`,`max_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_examined`,`rows_affected`,`full_scans`) AS select if((`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,substring_index(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`EVENT_NAME`,'/',-(1)) AS `statement`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME` AS `lock_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_CPU_TIME` AS `cpu_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` where (`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if((`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$innodb_buffer_stats_by_schema`
--

/*!50001 DROP VIEW IF EXISTS `x$innodb_buffer_stats_by_schema`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$innodb_buffer_stats_by_schema` (`object_schema`,`allocated`,`data`,`pages`,`pages_hashed`,`pages_old`,`rows_cached`) AS select if((locate('.',`ibp`.`TABLE_NAME`) = 0),'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) AS `allocated`,sum(`ibp`.`DATA_SIZE`) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if((`ibp`.`IS_HASHED` = 'YES'),1,NULL)) AS `pages_hashed`,count(if((`ibp`.`IS_OLD` = 'YES'),1,NULL)) AS `pages_old`,round(ifnull((sum(`ibp`.`NUMBER_RECORDS`) / nullif(count(distinct `ibp`.`INDEX_NAME`),0)),0),0) AS `rows_cached` from `information_schema`.`INNODB_BUFFER_PAGE` `ibp` where (`ibp`.`TABLE_NAME` is not null) group by `object_schema` order by sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$innodb_buffer_stats_by_table`
--

/*!50001 DROP VIEW IF EXISTS `x$innodb_buffer_stats_by_table`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$innodb_buffer_stats_by_table` (`object_schema`,`object_name`,`allocated`,`data`,`pages`,`pages_hashed`,`pages_old`,`rows_cached`) AS select if((locate('.',`ibp`.`TABLE_NAME`) = 0),'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,replace(substring_index(`ibp`.`TABLE_NAME`,'.',-(1)),'`','') AS `object_name`,sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) AS `allocated`,sum(`ibp`.`DATA_SIZE`) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if((`ibp`.`IS_HASHED` = 'YES'),1,NULL)) AS `pages_hashed`,count(if((`ibp`.`IS_OLD` = 'YES'),1,NULL)) AS `pages_old`,round(ifnull((sum(`ibp`.`NUMBER_RECORDS`) / nullif(count(distinct `ibp`.`INDEX_NAME`),0)),0),0) AS `rows_cached` from `information_schema`.`INNODB_BUFFER_PAGE` `ibp` where (`ibp`.`TABLE_NAME` is not null) group by `object_schema`,`object_name` order by sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$innodb_lock_waits`
--

/*!50001 DROP VIEW IF EXISTS `x$innodb_lock_waits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$innodb_lock_waits` (`wait_started`,`wait_age`,`wait_age_secs`,`locked_table`,`locked_table_schema`,`locked_table_name`,`locked_table_partition`,`locked_table_subpartition`,`locked_index`,`locked_type`,`waiting_trx_id`,`waiting_trx_started`,`waiting_trx_age`,`waiting_trx_rows_locked`,`waiting_trx_rows_modified`,`waiting_pid`,`waiting_query`,`waiting_lock_id`,`waiting_lock_mode`,`blocking_trx_id`,`blocking_pid`,`blocking_query`,`blocking_lock_id`,`blocking_lock_mode`,`blocking_trx_started`,`blocking_trx_age`,`blocking_trx_rows_locked`,`blocking_trx_rows_modified`,`sql_kill_blocking_query`,`sql_kill_blocking_connection`) AS select `r`.`trx_wait_started` AS `wait_started`,timediff(now(),`r`.`trx_wait_started`) AS `wait_age`,timestampdiff(SECOND,`r`.`trx_wait_started`,now()) AS `wait_age_secs`,concat(`sys`.`quote_identifier`(`rl`.`OBJECT_SCHEMA`),'.',`sys`.`quote_identifier`(`rl`.`OBJECT_NAME`)) AS `locked_table`,`rl`.`OBJECT_SCHEMA` AS `locked_table_schema`,`rl`.`OBJECT_NAME` AS `locked_table_name`,`rl`.`PARTITION_NAME` AS `locked_table_partition`,`rl`.`SUBPARTITION_NAME` AS `locked_table_subpartition`,`rl`.`INDEX_NAME` AS `locked_index`,`rl`.`LOCK_TYPE` AS `locked_type`,`r`.`trx_id` AS `waiting_trx_id`,`r`.`trx_started` AS `waiting_trx_started`,timediff(now(),`r`.`trx_started`) AS `waiting_trx_age`,`r`.`trx_rows_locked` AS `waiting_trx_rows_locked`,`r`.`trx_rows_modified` AS `waiting_trx_rows_modified`,`r`.`trx_mysql_thread_id` AS `waiting_pid`,`r`.`trx_query` AS `waiting_query`,`rl`.`ENGINE_LOCK_ID` AS `waiting_lock_id`,`rl`.`LOCK_MODE` AS `waiting_lock_mode`,`b`.`trx_id` AS `blocking_trx_id`,`b`.`trx_mysql_thread_id` AS `blocking_pid`,`b`.`trx_query` AS `blocking_query`,`bl`.`ENGINE_LOCK_ID` AS `blocking_lock_id`,`bl`.`LOCK_MODE` AS `blocking_lock_mode`,`b`.`trx_started` AS `blocking_trx_started`,timediff(now(),`b`.`trx_started`) AS `blocking_trx_age`,`b`.`trx_rows_locked` AS `blocking_trx_rows_locked`,`b`.`trx_rows_modified` AS `blocking_trx_rows_modified`,concat('KILL QUERY ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_query`,concat('KILL ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_connection` from ((((`performance_schema`.`data_lock_waits` `w` join `information_schema`.`INNODB_TRX` `b` on((`b`.`trx_id` = cast(`w`.`BLOCKING_ENGINE_TRANSACTION_ID` as char charset utf8mb4)))) join `information_schema`.`INNODB_TRX` `r` on((`r`.`trx_id` = cast(`w`.`REQUESTING_ENGINE_TRANSACTION_ID` as char charset utf8mb4)))) join `performance_schema`.`data_locks` `bl` on(((`bl`.`ENGINE_LOCK_ID` = `w`.`BLOCKING_ENGINE_LOCK_ID`) and (`bl`.`ENGINE` = `w`.`ENGINE`)))) join `performance_schema`.`data_locks` `rl` on(((`rl`.`ENGINE_LOCK_ID` = `w`.`REQUESTING_ENGINE_LOCK_ID`) and (`rl`.`ENGINE` = `w`.`ENGINE`)))) order by `r`.`trx_wait_started` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_by_thread_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$io_by_thread_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_by_thread_by_latency` (`user`,`total`,`total_latency`,`min_latency`,`avg_latency`,`max_latency`,`thread_id`,`processlist_id`) AS select if((`performance_schema`.`threads`.`PROCESSLIST_ID` is null),substring_index(`performance_schema`.`threads`.`NAME`,'/',-(1)),concat(`performance_schema`.`threads`.`PROCESSLIST_USER`,'@',convert(`performance_schema`.`threads`.`PROCESSLIST_HOST` using utf8mb4))) AS `user`,sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,min(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,avg(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,max(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` AS `thread_id`,`performance_schema`.`threads`.`PROCESSLIST_ID` AS `processlist_id` from (`performance_schema`.`events_waits_summary_by_thread_by_event_name` left join `performance_schema`.`threads` on((`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`))) where ((`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT` > 0)) group by `performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID`,`performance_schema`.`threads`.`PROCESSLIST_ID`,`user` order by sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_global_by_file_by_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$io_global_by_file_by_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_global_by_file_by_bytes` (`file`,`count_read`,`total_read`,`avg_read`,`count_write`,`total_written`,`avg_write`,`total`,`write_pct`) AS select `performance_schema`.`file_summary_by_instance`.`FILE_NAME` AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` AS `total_read`,ifnull((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_READ`,0)),0) AS `avg_read`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE` AS `total_written`,ifnull((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE`,0)),0.00) AS `avg_write`,(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total`,ifnull(round((100 - ((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`),0)) * 100)),2),0.00) AS `write_pct` from `performance_schema`.`file_summary_by_instance` order by (`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_global_by_file_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$io_global_by_file_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_global_by_file_by_latency` (`file`,`total`,`total_latency`,`count_read`,`read_latency`,`count_write`,`write_latency`,`count_misc`,`misc_latency`) AS select `performance_schema`.`file_summary_by_instance`.`FILE_NAME` AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_STAR` AS `total`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_READ` AS `read_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WRITE` AS `write_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_MISC` AS `count_misc`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_MISC` AS `misc_latency` from `performance_schema`.`file_summary_by_instance` order by `performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_global_by_wait_by_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$io_global_by_wait_by_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_global_by_wait_by_bytes` (`event_name`,`total`,`total_latency`,`min_latency`,`avg_latency`,`max_latency`,`count_read`,`total_read`,`avg_read`,`count_write`,`total_written`,`avg_written`,`total_requested`) AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-(2)) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`file_summary_by_event_name`.`MIN_TIMER_WAIT` AS `min_latency`,`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` AS `total_read`,ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0)),0) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` AS `total_written`,ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0)),0) AS `avg_written`,(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_requested` from `performance_schema`.`file_summary_by_event_name` where ((`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0)) order by (`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_global_by_wait_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$io_global_by_wait_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_global_by_wait_by_latency` (`event_name`,`total`,`total_latency`,`avg_latency`,`max_latency`,`read_latency`,`write_latency`,`misc_latency`,`count_read`,`total_read`,`avg_read`,`count_write`,`total_written`,`avg_written`) AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-(2)) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_READ` AS `read_latency`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WRITE` AS `write_latency`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_MISC` AS `misc_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` AS `total_read`,ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0)),0) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` AS `total_written`,ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0)),0) AS `avg_written` from `performance_schema`.`file_summary_by_event_name` where ((`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0)) order by `performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$latest_file_io`
--

/*!50001 DROP VIEW IF EXISTS `x$latest_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$latest_file_io` (`thread`,`file`,`latency`,`operation`,`requested`) AS select if((`information_schema`.`processlist`.`ID` is null),concat(substring_index(`performance_schema`.`threads`.`NAME`,'/',-(1)),':',`performance_schema`.`events_waits_history_long`.`THREAD_ID`),convert(concat(`information_schema`.`processlist`.`USER`,'@',`information_schema`.`processlist`.`HOST`,':',`information_schema`.`processlist`.`ID`) using utf8mb4)) AS `thread`,`performance_schema`.`events_waits_history_long`.`OBJECT_NAME` AS `file`,`performance_schema`.`events_waits_history_long`.`TIMER_WAIT` AS `latency`,`performance_schema`.`events_waits_history_long`.`OPERATION` AS `operation`,`performance_schema`.`events_waits_history_long`.`NUMBER_OF_BYTES` AS `requested` from ((`performance_schema`.`events_waits_history_long` join `performance_schema`.`threads` on((`performance_schema`.`events_waits_history_long`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`))) left join `information_schema`.`PROCESSLIST` on((`performance_schema`.`threads`.`PROCESSLIST_ID` = `information_schema`.`processlist`.`ID`))) where ((`performance_schema`.`events_waits_history_long`.`OBJECT_NAME` is not null) and (`performance_schema`.`events_waits_history_long`.`EVENT_NAME` like 'wait/io/file/%')) order by `performance_schema`.`events_waits_history_long`.`TIMER_START` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_by_host_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_by_host_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_by_host_by_current_bytes` (`host`,`current_count_used`,`current_allocated`,`current_avg_alloc`,`current_max_alloc`,`total_allocated`) AS select if((`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_allocated`,ifnull((sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`),0)),0) AS `current_avg_alloc`,max(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_max_alloc`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`) AS `total_allocated` from `performance_schema`.`memory_summary_by_host_by_event_name` group by if((`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_by_thread_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_by_thread_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_by_thread_by_current_bytes` (`thread_id`,`user`,`current_count_used`,`current_allocated`,`current_avg_alloc`,`current_max_alloc`,`total_allocated`) AS select `t`.`THREAD_ID` AS `thread_id`,if((`t`.`NAME` = 'thread/sql/one_connection'),concat(`t`.`PROCESSLIST_USER`,'@',convert(`t`.`PROCESSLIST_HOST` using utf8mb4)),replace(`t`.`NAME`,'thread/','')) AS `user`,sum(`mt`.`CURRENT_COUNT_USED`) AS `current_count_used`,sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_allocated`,ifnull((sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`mt`.`CURRENT_COUNT_USED`),0)),0) AS `current_avg_alloc`,max(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_max_alloc`,sum(`mt`.`SUM_NUMBER_OF_BYTES_ALLOC`) AS `total_allocated` from (`performance_schema`.`memory_summary_by_thread_by_event_name` `mt` join `performance_schema`.`threads` `t` on((`mt`.`THREAD_ID` = `t`.`THREAD_ID`))) group by `t`.`THREAD_ID`,if((`t`.`NAME` = 'thread/sql/one_connection'),concat(`t`.`PROCESSLIST_USER`,'@',convert(`t`.`PROCESSLIST_HOST` using utf8mb4)),replace(`t`.`NAME`,'thread/','')) order by sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_by_user_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_by_user_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_by_user_by_current_bytes` (`user`,`current_count_used`,`current_allocated`,`current_avg_alloc`,`current_max_alloc`,`total_allocated`) AS select if((`performance_schema`.`memory_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_allocated`,ifnull((sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`),0)),0) AS `current_avg_alloc`,max(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_max_alloc`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`) AS `total_allocated` from `performance_schema`.`memory_summary_by_user_by_event_name` group by if((`performance_schema`.`memory_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_global_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_global_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_global_by_current_bytes` (`event_name`,`current_count`,`current_alloc`,`current_avg_alloc`,`high_count`,`high_alloc`,`high_avg_alloc`) AS select `performance_schema`.`memory_summary_global_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED` AS `current_count`,`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` AS `current_alloc`,ifnull((`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED`,0)),0) AS `current_avg_alloc`,`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED` AS `high_count`,`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED` AS `high_alloc`,ifnull((`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED`,0)),0) AS `high_avg_alloc` from `performance_schema`.`memory_summary_global_by_event_name` where (`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` > 0) order by `performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_global_total`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_global_total`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_global_total` (`total_allocated`) AS select sum(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `total_allocated` from `performance_schema`.`memory_summary_global_by_event_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$processlist`
--

/*!50001 DROP VIEW IF EXISTS `x$processlist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$processlist` (`thd_id`,`conn_id`,`user`,`db`,`command`,`state`,`time`,`current_statement`,`execution_engine`,`statement_latency`,`progress`,`lock_latency`,`cpu_latency`,`rows_examined`,`rows_sent`,`rows_affected`,`tmp_tables`,`tmp_disk_tables`,`full_scan`,`last_statement`,`last_statement_latency`,`current_memory`,`last_wait`,`last_wait_latency`,`source`,`trx_latency`,`trx_state`,`trx_autocommit`,`pid`,`program_name`) AS select `pps`.`THREAD_ID` AS `thd_id`,`pps`.`PROCESSLIST_ID` AS `conn_id`,if((`pps`.`NAME` in ('thread/sql/one_connection','thread/thread_pool/tp_one_connection')),concat(`pps`.`PROCESSLIST_USER`,'@',convert(`pps`.`PROCESSLIST_HOST` using utf8mb4)),replace(`pps`.`NAME`,'thread/','')) AS `user`,`pps`.`PROCESSLIST_DB` AS `db`,`pps`.`PROCESSLIST_COMMAND` AS `command`,`pps`.`PROCESSLIST_STATE` AS `state`,`pps`.`PROCESSLIST_TIME` AS `time`,`pps`.`PROCESSLIST_INFO` AS `current_statement`,`pps`.`EXECUTION_ENGINE` AS `execution_engine`,if((`esc`.`END_EVENT_ID` is null),`esc`.`TIMER_WAIT`,NULL) AS `statement_latency`,if((`esc`.`END_EVENT_ID` is null),round((100 * (`estc`.`WORK_COMPLETED` / `estc`.`WORK_ESTIMATED`)),2),NULL) AS `progress`,`esc`.`LOCK_TIME` AS `lock_latency`,`esc`.`CPU_TIME` AS `cpu_latency`,`esc`.`ROWS_EXAMINED` AS `rows_examined`,`esc`.`ROWS_SENT` AS `rows_sent`,`esc`.`ROWS_AFFECTED` AS `rows_affected`,`esc`.`CREATED_TMP_TABLES` AS `tmp_tables`,`esc`.`CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,if(((`esc`.`NO_GOOD_INDEX_USED` > 0) or (`esc`.`NO_INDEX_USED` > 0)),'YES','NO') AS `full_scan`,if((`esc`.`END_EVENT_ID` is not null),`esc`.`SQL_TEXT`,NULL) AS `last_statement`,if((`esc`.`END_EVENT_ID` is not null),`esc`.`TIMER_WAIT`,NULL) AS `last_statement_latency`,`mem`.`current_allocated` AS `current_memory`,`ewc`.`EVENT_NAME` AS `last_wait`,if(((`ewc`.`END_EVENT_ID` is null) and (`ewc`.`EVENT_NAME` is not null)),'Still Waiting',`ewc`.`TIMER_WAIT`) AS `last_wait_latency`,`ewc`.`SOURCE` AS `source`,`etc`.`TIMER_WAIT` AS `trx_latency`,`etc`.`STATE` AS `trx_state`,`etc`.`AUTOCOMMIT` AS `trx_autocommit`,`conattr_pid`.`ATTR_VALUE` AS `pid`,`conattr_progname`.`ATTR_VALUE` AS `program_name` from (((((((`performance_schema`.`threads` `pps` left join `performance_schema`.`events_waits_current` `ewc` on((`pps`.`THREAD_ID` = `ewc`.`THREAD_ID`))) left join `performance_schema`.`events_stages_current` `estc` on((`pps`.`THREAD_ID` = `estc`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `esc` on((`pps`.`THREAD_ID` = `esc`.`THREAD_ID`))) left join `performance_schema`.`events_transactions_current` `etc` on((`pps`.`THREAD_ID` = `etc`.`THREAD_ID`))) left join `x$memory_by_thread_by_current_bytes` `mem` on((`pps`.`THREAD_ID` = `mem`.`thread_id`))) left join `performance_schema`.`session_connect_attrs` `conattr_pid` on(((`conattr_pid`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID`) and (`conattr_pid`.`ATTR_NAME` = '_pid')))) left join `performance_schema`.`session_connect_attrs` `conattr_progname` on(((`conattr_progname`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID`) and (`conattr_progname`.`ATTR_NAME` = 'program_name')))) order by `pps`.`PROCESSLIST_TIME` desc,`last_wait_latency` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$ps_digest_95th_percentile_by_avg_us`
--

/*!50001 DROP VIEW IF EXISTS `x$ps_digest_95th_percentile_by_avg_us`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$ps_digest_95th_percentile_by_avg_us` (`avg_us`,`percentile`) AS select `s2`.`avg_us` AS `avg_us`,ifnull((sum(`s1`.`cnt`) / nullif((select count(0) from `performance_schema`.`events_statements_summary_by_digest`),0)),0) AS `percentile` from (`x$ps_digest_avg_latency_distribution` `s1` join `x$ps_digest_avg_latency_distribution` `s2` on((`s1`.`avg_us` <= `s2`.`avg_us`))) group by `s2`.`avg_us` having (ifnull((sum(`s1`.`cnt`) / nullif((select count(0) from `performance_schema`.`events_statements_summary_by_digest`),0)),0) > 0.95) order by `percentile` limit 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$ps_digest_avg_latency_distribution`
--

/*!50001 DROP VIEW IF EXISTS `x$ps_digest_avg_latency_distribution`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$ps_digest_avg_latency_distribution` (`cnt`,`avg_us`) AS select count(0) AS `cnt`,round((`performance_schema`.`events_statements_summary_by_digest`.`AVG_TIMER_WAIT` / 1000000),0) AS `avg_us` from `performance_schema`.`events_statements_summary_by_digest` group by `avg_us` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$ps_schema_table_statistics_io`
--

/*!50001 DROP VIEW IF EXISTS `x$ps_schema_table_statistics_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$ps_schema_table_statistics_io` (`table_schema`,`table_name`,`count_read`,`sum_number_of_bytes_read`,`sum_timer_read`,`count_write`,`sum_number_of_bytes_write`,`sum_timer_write`,`count_misc`,`sum_timer_misc`) AS select `extract_schema_from_file_name`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `table_schema`,`extract_table_from_file_name`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `table_name`,sum(`performance_schema`.`file_summary_by_instance`.`COUNT_READ`) AS `count_read`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ`) AS `sum_number_of_bytes_read`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_READ`) AS `sum_timer_read`,sum(`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE`) AS `count_write`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `sum_number_of_bytes_write`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WRITE`) AS `sum_timer_write`,sum(`performance_schema`.`file_summary_by_instance`.`COUNT_MISC`) AS `count_misc`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_MISC`) AS `sum_timer_misc` from `performance_schema`.`file_summary_by_instance` group by `table_schema`,`table_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_flattened_keys`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_flattened_keys`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_flattened_keys` (`table_schema`,`table_name`,`index_name`,`non_unique`,`subpart_exists`,`index_columns`) AS select `information_schema`.`statistics`.`TABLE_SCHEMA` AS `TABLE_SCHEMA`,`information_schema`.`statistics`.`TABLE_NAME` AS `TABLE_NAME`,`information_schema`.`statistics`.`INDEX_NAME` AS `INDEX_NAME`,max(`information_schema`.`statistics`.`NON_UNIQUE`) AS `non_unique`,max(if((`information_schema`.`statistics`.`SUB_PART` is null),0,1)) AS `subpart_exists`,group_concat(`information_schema`.`statistics`.`COLUMN_NAME` order by `information_schema`.`statistics`.`SEQ_IN_INDEX` ASC separator ',') AS `index_columns` from `information_schema`.`STATISTICS` where ((`information_schema`.`statistics`.`INDEX_TYPE` = 'BTREE') and (`information_schema`.`statistics`.`TABLE_SCHEMA` not in ('mysql','sys','INFORMATION_SCHEMA','PERFORMANCE_SCHEMA'))) group by `information_schema`.`statistics`.`TABLE_SCHEMA`,`information_schema`.`statistics`.`TABLE_NAME`,`information_schema`.`statistics`.`INDEX_NAME` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_index_statistics`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_index_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_index_statistics` (`table_schema`,`table_name`,`index_name`,`rows_selected`,`select_latency`,`rows_inserted`,`insert_latency`,`rows_updated`,`update_latency`,`rows_deleted`,`delete_latency`) AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `table_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `table_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` AS `index_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_FETCH` AS `rows_selected`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_FETCH` AS `select_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_INSERT` AS `rows_inserted`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_INSERT` AS `insert_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_UPDATE` AS `rows_updated`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_UPDATE` AS `update_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_DELETE` AS `rows_deleted`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_DELETE` AS `delete_latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where (`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` is not null) order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_table_lock_waits`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_table_lock_waits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_table_lock_waits` (`object_schema`,`object_name`,`waiting_thread_id`,`waiting_pid`,`waiting_account`,`waiting_lock_type`,`waiting_lock_duration`,`waiting_query`,`waiting_query_secs`,`waiting_query_rows_affected`,`waiting_query_rows_examined`,`blocking_thread_id`,`blocking_pid`,`blocking_account`,`blocking_lock_type`,`blocking_lock_duration`,`sql_kill_blocking_query`,`sql_kill_blocking_connection`) AS select `g`.`OBJECT_SCHEMA` AS `object_schema`,`g`.`OBJECT_NAME` AS `object_name`,`pt`.`THREAD_ID` AS `waiting_thread_id`,`pt`.`PROCESSLIST_ID` AS `waiting_pid`,`sys`.`ps_thread_account`(`p`.`OWNER_THREAD_ID`) AS `waiting_account`,`p`.`LOCK_TYPE` AS `waiting_lock_type`,`p`.`LOCK_DURATION` AS `waiting_lock_duration`,`pt`.`PROCESSLIST_INFO` AS `waiting_query`,`pt`.`PROCESSLIST_TIME` AS `waiting_query_secs`,`ps`.`ROWS_AFFECTED` AS `waiting_query_rows_affected`,`ps`.`ROWS_EXAMINED` AS `waiting_query_rows_examined`,`gt`.`THREAD_ID` AS `blocking_thread_id`,`gt`.`PROCESSLIST_ID` AS `blocking_pid`,`sys`.`ps_thread_account`(`g`.`OWNER_THREAD_ID`) AS `blocking_account`,`g`.`LOCK_TYPE` AS `blocking_lock_type`,`g`.`LOCK_DURATION` AS `blocking_lock_duration`,concat('KILL QUERY ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_query`,concat('KILL ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_connection` from (((((`performance_schema`.`metadata_locks` `g` join `performance_schema`.`metadata_locks` `p` on(((`g`.`OBJECT_TYPE` = `p`.`OBJECT_TYPE`) and (`g`.`OBJECT_SCHEMA` = `p`.`OBJECT_SCHEMA`) and (`g`.`OBJECT_NAME` = `p`.`OBJECT_NAME`) and (`g`.`LOCK_STATUS` = 'GRANTED') and (`p`.`LOCK_STATUS` = 'PENDING')))) join `performance_schema`.`threads` `gt` on((`g`.`OWNER_THREAD_ID` = `gt`.`THREAD_ID`))) join `performance_schema`.`threads` `pt` on((`p`.`OWNER_THREAD_ID` = `pt`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `gs` on((`g`.`OWNER_THREAD_ID` = `gs`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `ps` on((`p`.`OWNER_THREAD_ID` = `ps`.`THREAD_ID`))) where (`g`.`OBJECT_TYPE` = 'TABLE') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_table_statistics`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_table_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_table_statistics` (`table_schema`,`table_name`,`total_latency`,`rows_fetched`,`fetch_latency`,`rows_inserted`,`insert_latency`,`rows_updated`,`update_latency`,`rows_deleted`,`delete_latency`,`io_read_requests`,`io_read`,`io_read_latency`,`io_write_requests`,`io_write`,`io_write_latency`,`io_misc_requests`,`io_misc_latency`) AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,`pst`.`SUM_TIMER_WAIT` AS `total_latency`,`pst`.`COUNT_FETCH` AS `rows_fetched`,`pst`.`SUM_TIMER_FETCH` AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,`pst`.`SUM_TIMER_INSERT` AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,`pst`.`SUM_TIMER_UPDATE` AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,`pst`.`SUM_TIMER_DELETE` AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,`fsbi`.`sum_number_of_bytes_read` AS `io_read`,`fsbi`.`sum_timer_read` AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,`fsbi`.`sum_number_of_bytes_write` AS `io_write`,`fsbi`.`sum_timer_write` AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,`fsbi`.`sum_timer_misc` AS `io_misc_latency` from (`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `x$ps_schema_table_statistics_io` `fsbi` on(((`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema`) and (`pst`.`OBJECT_NAME` = `fsbi`.`table_name`)))) order by `pst`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_table_statistics_with_buffer`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_table_statistics_with_buffer`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_table_statistics_with_buffer` (`table_schema`,`table_name`,`rows_fetched`,`fetch_latency`,`rows_inserted`,`insert_latency`,`rows_updated`,`update_latency`,`rows_deleted`,`delete_latency`,`io_read_requests`,`io_read`,`io_read_latency`,`io_write_requests`,`io_write`,`io_write_latency`,`io_misc_requests`,`io_misc_latency`,`innodb_buffer_allocated`,`innodb_buffer_data`,`innodb_buffer_free`,`innodb_buffer_pages`,`innodb_buffer_pages_hashed`,`innodb_buffer_pages_old`,`innodb_buffer_rows_cached`) AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,`pst`.`COUNT_FETCH` AS `rows_fetched`,`pst`.`SUM_TIMER_FETCH` AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,`pst`.`SUM_TIMER_INSERT` AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,`pst`.`SUM_TIMER_UPDATE` AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,`pst`.`SUM_TIMER_DELETE` AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,`fsbi`.`sum_number_of_bytes_read` AS `io_read`,`fsbi`.`sum_timer_read` AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,`fsbi`.`sum_number_of_bytes_write` AS `io_write`,`fsbi`.`sum_timer_write` AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,`fsbi`.`sum_timer_misc` AS `io_misc_latency`,`ibp`.`allocated` AS `innodb_buffer_allocated`,`ibp`.`data` AS `innodb_buffer_data`,(`ibp`.`allocated` - `ibp`.`data`) AS `innodb_buffer_free`,`ibp`.`pages` AS `innodb_buffer_pages`,`ibp`.`pages_hashed` AS `innodb_buffer_pages_hashed`,`ibp`.`pages_old` AS `innodb_buffer_pages_old`,`ibp`.`rows_cached` AS `innodb_buffer_rows_cached` from ((`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `x$ps_schema_table_statistics_io` `fsbi` on(((`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema`) and (`pst`.`OBJECT_NAME` = `fsbi`.`table_name`)))) left join `x$innodb_buffer_stats_by_table` `ibp` on(((`pst`.`OBJECT_SCHEMA` = `ibp`.`object_schema`) and (`pst`.`OBJECT_NAME` = `ibp`.`object_name`)))) order by `pst`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_tables_with_full_table_scans`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_tables_with_full_table_scans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_tables_with_full_table_scans` (`object_schema`,`object_name`,`rows_full_scanned`,`latency`) AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `object_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `object_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` AS `rows_full_scanned`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT` AS `latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where ((`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` is null) and (`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` > 0)) order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$session`
--

/*!50001 DROP VIEW IF EXISTS `x$session`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$session` AS select `x$processlist`.`thd_id` AS `thd_id`,`x$processlist`.`conn_id` AS `conn_id`,`x$processlist`.`user` AS `user`,`x$processlist`.`db` AS `db`,`x$processlist`.`command` AS `command`,`x$processlist`.`state` AS `state`,`x$processlist`.`time` AS `time`,`x$processlist`.`current_statement` AS `current_statement`,`x$processlist`.`execution_engine` AS `execution_engine`,`x$processlist`.`statement_latency` AS `statement_latency`,`x$processlist`.`progress` AS `progress`,`x$processlist`.`lock_latency` AS `lock_latency`,`x$processlist`.`cpu_latency` AS `cpu_latency`,`x$processlist`.`rows_examined` AS `rows_examined`,`x$processlist`.`rows_sent` AS `rows_sent`,`x$processlist`.`rows_affected` AS `rows_affected`,`x$processlist`.`tmp_tables` AS `tmp_tables`,`x$processlist`.`tmp_disk_tables` AS `tmp_disk_tables`,`x$processlist`.`full_scan` AS `full_scan`,`x$processlist`.`last_statement` AS `last_statement`,`x$processlist`.`last_statement_latency` AS `last_statement_latency`,`x$processlist`.`current_memory` AS `current_memory`,`x$processlist`.`last_wait` AS `last_wait`,`x$processlist`.`last_wait_latency` AS `last_wait_latency`,`x$processlist`.`source` AS `source`,`x$processlist`.`trx_latency` AS `trx_latency`,`x$processlist`.`trx_state` AS `trx_state`,`x$processlist`.`trx_autocommit` AS `trx_autocommit`,`x$processlist`.`pid` AS `pid`,`x$processlist`.`program_name` AS `program_name` from `x$processlist` where ((`x$processlist`.`conn_id` is not null) and (`x$processlist`.`command` <> 'Daemon')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statement_analysis`
--

/*!50001 DROP VIEW IF EXISTS `x$statement_analysis`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statement_analysis` (`query`,`db`,`full_scan`,`exec_count`,`exec_secondary_count`,`err_count`,`warn_count`,`total_latency`,`max_latency`,`avg_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_sent_avg`,`rows_examined`,`rows_examined_avg`,`rows_affected`,`rows_affected_avg`,`tmp_tables`,`tmp_disk_tables`,`rows_sorted`,`sort_merge_passes`,`max_controlled_memory`,`max_total_memory`,`digest`,`first_seen`,`last_seen`) AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,if(((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0)),'*','') AS `full_scan`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_SECONDARY` AS `exec_secondary_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `err_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warn_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`events_statements_summary_by_digest`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_LOCK_TIME` AS `lock_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CPU_TIME` AS `cpu_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_sent_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` AS `rows_affected`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_affected_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,`performance_schema`.`events_statements_summary_by_digest`.`MAX_CONTROLLED_MEMORY` AS `max_controlled_memory`,`performance_schema`.`events_statements_summary_by_digest`.`MAX_TOTAL_MEMORY` AS `max_total_memory`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen` from `performance_schema`.`events_statements_summary_by_digest` order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_errors_or_warnings`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_errors_or_warnings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_errors_or_warnings` (`query`,`db`,`exec_count`,`errors`,`error_pct`,`warnings`,`warning_pct`,`first_seen`,`last_seen`,`digest`) AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `errors`,(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100) AS `error_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warnings`,(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100) AS `warning_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where ((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` > 0)) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_full_table_scans`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_full_table_scans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_full_table_scans` (`query`,`db`,`exec_count`,`total_latency`,`no_index_used_count`,`no_good_index_used_count`,`no_index_used_pct`,`rows_sent`,`rows_examined`,`rows_sent_avg`,`rows_examined_avg`,`first_seen`,`last_seen`,`digest`) AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` AS `no_index_used_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` AS `no_good_index_used_count`,round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100),0) AS `no_index_used_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`),0) AS `rows_sent_avg`,round((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`),0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0)) and (not((`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` like 'SHOW%')))) order by round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100),0) desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_runtimes_in_95th_percentile`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_runtimes_in_95th_percentile`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_runtimes_in_95th_percentile` (`query`,`db`,`full_scan`,`exec_count`,`err_count`,`warn_count`,`total_latency`,`max_latency`,`avg_latency`,`rows_sent`,`rows_sent_avg`,`rows_examined`,`rows_examined_avg`,`first_seen`,`last_seen`,`digest`) AS select `stmts`.`DIGEST_TEXT` AS `query`,`stmts`.`SCHEMA_NAME` AS `db`,if(((`stmts`.`SUM_NO_GOOD_INDEX_USED` > 0) or (`stmts`.`SUM_NO_INDEX_USED` > 0)),'*','') AS `full_scan`,`stmts`.`COUNT_STAR` AS `exec_count`,`stmts`.`SUM_ERRORS` AS `err_count`,`stmts`.`SUM_WARNINGS` AS `warn_count`,`stmts`.`SUM_TIMER_WAIT` AS `total_latency`,`stmts`.`MAX_TIMER_WAIT` AS `max_latency`,`stmts`.`AVG_TIMER_WAIT` AS `avg_latency`,`stmts`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull((`stmts`.`SUM_ROWS_SENT` / nullif(`stmts`.`COUNT_STAR`,0)),0),0) AS `rows_sent_avg`,`stmts`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull((`stmts`.`SUM_ROWS_EXAMINED` / nullif(`stmts`.`COUNT_STAR`,0)),0),0) AS `rows_examined_avg`,`stmts`.`FIRST_SEEN` AS `first_seen`,`stmts`.`LAST_SEEN` AS `last_seen`,`stmts`.`DIGEST` AS `digest` from (`performance_schema`.`events_statements_summary_by_digest` `stmts` join `x$ps_digest_95th_percentile_by_avg_us` `top_percentile` on((round((`stmts`.`AVG_TIMER_WAIT` / 1000000),0) >= `top_percentile`.`avg_us`))) order by `stmts`.`AVG_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_sorting`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_sorting`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_sorting` (`query`,`db`,`exec_count`,`total_latency`,`sort_merge_passes`,`avg_sort_merges`,`sorts_using_scans`,`sort_using_range`,`rows_sorted`,`avg_rows_sorted`,`first_seen`,`last_seen`,`digest`) AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_sort_merges`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_SCAN` AS `sorts_using_scans`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_RANGE` AS `sort_using_range`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` > 0) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_temp_tables`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_temp_tables`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_temp_tables` (`query`,`db`,`exec_count`,`total_latency`,`memory_tmp_tables`,`disk_tmp_tables`,`avg_tmp_tables_per_query`,`tmp_tables_to_disk_pct`,`first_seen`,`last_seen`,`digest`) AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `memory_tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `disk_tmp_tables`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_tmp_tables_per_query`,round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES`,0)),0) * 100),0) AS `tmp_tables_to_disk_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` > 0) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary` (`user`,`statements`,`statement_latency`,`statement_avg_latency`,`table_scans`,`file_ios`,`file_io_latency`,`current_connections`,`total_connections`,`unique_hosts`,`current_memory`,`total_memory_allocated`) AS select if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) AS `user`,sum(`stmt`.`total`) AS `statements`,sum(`stmt`.`total_latency`) AS `statement_latency`,ifnull((sum(`stmt`.`total_latency`) / nullif(sum(`stmt`.`total`),0)),0) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,sum(`io`.`io_latency`) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`HOST`) AS `unique_hosts`,sum(`mem`.`current_allocated`) AS `current_memory`,sum(`mem`.`total_allocated`) AS `total_memory_allocated` from (((`performance_schema`.`accounts` left join `x$user_summary_by_statement_latency` `stmt` on((if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) = `stmt`.`user`))) left join `x$user_summary_by_file_io` `io` on((if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) = `io`.`user`))) left join `x$memory_by_user_by_current_bytes` `mem` on((if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) = `mem`.`user`))) group by if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) order by sum(`stmt`.`total_latency`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_file_io`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_file_io` (`user`,`ios`,`io_latency`) AS select if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR`) AS `ios`,sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `io_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') group by if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_file_io_type`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_file_io_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_file_io_type` (`user`,`event_name`,`total`,`latency`,`max_latency`) AS select if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `latency`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where ((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file%') and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` > 0)) order by if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_stages`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_stages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_stages` (`user`,`event_name`,`total`,`total_latency`,`avg_latency`) AS select if((`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency` from `performance_schema`.`events_stages_summary_by_user_by_event_name` where (`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if((`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_statement_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_statement_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_statement_latency` (`user`,`total`,`total_latency`,`max_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_examined`,`rows_affected`,`full_scans`) AS select if((`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_CPU_TIME`) AS `cpu_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED`)) AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` group by if((`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_statement_type`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_statement_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_statement_type` (`user`,`statement`,`total`,`total_latency`,`max_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_examined`,`rows_affected`,`full_scans`) AS select if((`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,substring_index(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`EVENT_NAME`,'/',-(1)) AS `statement`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME` AS `lock_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_CPU_TIME` AS `cpu_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` where (`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if((`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$wait_classes_global_by_avg_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$wait_classes_global_by_avg_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$wait_classes_global_by_avg_latency` (`event_class`,`total`,`total_latency`,`min_latency`,`avg_latency`,`max_latency`) AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0) AS `avg_latency`,max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0) and (`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle')) group by `event_class` order by ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$wait_classes_global_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$wait_classes_global_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$wait_classes_global_by_latency` (`event_class`,`total`,`total_latency`,`min_latency`,`avg_latency`,`max_latency`) AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0) AS `avg_latency`,max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0) and (`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle')) group by substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) order by sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$waits_by_host_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$waits_by_host_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$waits_by_host_by_latency` (`host`,`event`,`total`,`total_latency`,`avg_latency`,`max_latency`) AS select if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where ((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$waits_by_user_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$waits_by_user_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$waits_by_user_by_latency` (`user`,`event`,`total`,`total_latency`,`avg_latency`,`max_latency`) AS select if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where ((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is not null) and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$waits_global_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$waits_global_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$waits_global_by_latency` (`events`,`total`,`total_latency`,`avg_latency`,`max_latency`) AS select `performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_global_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by `performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-16 17:03:09
