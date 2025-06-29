# Tokenizer

Ce projet 42 a pour but d'apprendre les bases du web3. Je dois créer mon propre jeton personnel !

Le Web3, aussi appelé web décentralisé ou Web 3.0, est la prochaine génération d'Internet, qui vise à créer un réseau décentralisé et distribué, basé sur la technologie de la blockchain.

Le Web3 se distingue du Web 2.0 actuel, qui est dominé par des plateformes centralisées telles que Google, Facebook et Amazon, qui contrôlent les données et les interactions des utilisateurs. Dans le Web 3, les utilisateurs possèdent leurs données et peuvent interagir directement les uns avec les autres sans intermédiaires.

Le Web3 est basé sur des protocoles décentralisés, tels que la blockchain, les réseaux peer-to-peer et les systèmes de stockage distribués, qui permettent la création d'applications (dApps) et de services décentralisés qui ne sont pas contrôlés par une seule entité. Les dApps peuvent être utilisées pour une grande variété de cas d'usage, tels que la finance décentralisée (DeFi), les marchés prédictifs, les réseaux sociaux décentralisés, et bien plus encore.

Globalement, le Web3 vise à créer un Internet plus ouvert, transparent et équitable, où les utilisateurs ont un plus grand contrôle sur leurs données et leur vie privée, et où les applications et les services sont plus résistants à la censure et aux pannes.

## Structure des fichiers

```bash
tokenizer
├── code
│   └── 42FDS.sol
├── deployment
│   └── DEPLOYMENT.md
├── documentation
│   └── DOCUMENTATION.md
└── README.md
```

## Contenu des fichiers

* ***42FDS.sol*** : Ce fichier contient le code Solidity pour le jeton ERC20.

* ***DEPLOYMENT.md*** : Ce fichier contient les prérequis nécessaires pour déployer le jeton ERC20 sur le testnet Sepolia en utilisant l'IDE Remix, le portefeuille MetaMask et l'explorateur de blockchain Etherscan.

* ***DOCUMENTATION.md*** : Ce fichier contient la documentation du jeton ERC20, y compris le nom du jeton, le symbole, l'offre totale et d'autres détails, ainsi que les instructions pour déployer le jeton ERC20 sur le testnet Sepolia en utilisant l'IDE Remix.

* ***README.md*** : Ce fichier contient l'introduction au projet et les choix d'implémentation.

# Introduction

## Qu'est-ce qu'une Cryptomonnaie ?

Les cryptomonnaies sont des monnaies numériques qui utilisent la cryptographie pour sécuriser les transactions et contrôler la création de nouvelles unités.

Elles sont décentralisées et fonctionnent sur une technologie appelée blockchain, qui est essentiellement un registre public de toutes les transactions effectuées.

## Qu'est-ce que la cryptographie ?

La cryptographie est une méthode de protection des informations et des communications à l'aide de clés de chiffrement : elle consiste à cacher des informations sauf pour les personnes disposant de cette clé qui leur permettrait de les déchiffrer.

Dans le contexte de l'informatique, la cryptographie fait référence à des techniques d'information et de communication sécurisées dérivées d'algorithmes utilisés pour chiffrer un message et le rendre ainsi très difficile, voire impossible, à déchiffrer.

Cette cryptographie moderne repose sur quatre piliers principaux qui sont respectivement :

* **Confidentialité** : L'information ne peut être comprise que par la personne à qui elle est destinée.

* **Intégrité** : L'information ne peut être altérée ou modifiée pendant son stockage ou son transit entre l'expéditeur et le destinataire sans que cette altération soit détectée.

* **Non-répudiation** : Le destinataire ou l'expéditeur de l'information ne peut nier ses intentions après avoir transmis ou envoyé l'information.

* **Authentification** : L'expéditeur et le destinataire peuvent confirmer l'identité de l'autre ainsi que l'origine/destination de l'information.

## Jeton (Token) vs Pièce (Coin)

Il existe deux principaux types de cryptomonnaies :

* Les **pièces** (coins) comme le Bitcoin (BTC) ou l'Ethereum (ETH), qui ont leur propre blockchain indépendante.

* Les **jetons** (tokens), en revanche, dépendent de la blockchain d'une autre cryptomonnaie.

Par exemple, les jetons ERC-20 dépendent de la blockchain Ethereum, les jetons SLP de la blockchain Solana, etc.

Les cryptos sont utilisées pour payer les transactions, interagir avec les smarts contracts ou même récompenser les mineurs ou les validateurs qui sécurisent le réseau et vérifient les transactions.

## Qu'est-ce que la Blockchain ?

Une blockchain est une technologie de stockage et de transmission d'informations décentralisée et sécurisée, qui fonctionne sans organe central de contrôle.

Dans une blockchain, les données sont stockées sous forme de blocs qui sont liés les uns aux autres de manière cryptographique, formant ainsi une chaîne de blocs. Chaque bloc contient des informations sur les transactions effectuées sur le réseau, ainsi qu'un code unique appelé "hash" qui identifie le bloc et le relie au bloc précédent.

La sécurité de la blockchain est assurée par des mécanismes cryptographiques et un réseau de nœuds qui valident les transactions et les ajoutent à la blockchain. Une fois qu'un bloc a été ajouté à la chaîne, il ne peut plus être modifié, ce qui garantit l'intégrité et la transparence des données stockées sur la blockchain.

La blockchain a été initialement conçue pour le Bitcoin, mais a depuis été adaptée pour de nombreuses autres applications, telles que les smarts contracts, la chaîne d'approvisionnement, le vote électronique, et bien plus encore.

## Qu'est-ce qu'un Smart Contract ?

Les smarts contracts sont des programmes informatiques qui s'exécutent automatiquement sur une blockchain lorsque certaines conditions sont remplies.
Ils permettent de créer des applications décentralisées (dApps) et de nombreuses autres fonctionnalités avancées.
Cependant, pour prendre en charge des smarts contracts complexes, une blockchain doit être capable de traiter des opérations plus complexes et de stocker plus de données que ce que la blockchain de Bitcoin peut actuellement gérer.

# Choix d'implémentation

## Pourquoi j'ai choisi Ethereum plutôt que d'autres plateformes blockchain

* Ethereum est la ***plateforme blockchain la plus populaire*** pour la création de smarts contracts et d'applications décentralisées.

* Ethereum dispose d'une communauté de développeurs vaste et active, ce qui facilite la recherche de ressources et de soutien pour la création de smarts contracts et d'applications décentralisées.

## Pourquoi j'ai choisi ERC20 plutôt que d'autres standards de jetons

* ERC20 est une interface standard pour les jetons fongibles, ce qui signifie que chaque jeton est identique à tous les autres. ***C'est le type de jeton le plus courant sur le réseau Ethereum.***

* D'autres standards de jetons, tels que ERC721 et ERC1155, sont utilisés pour les jetons non fongibles, qui sont des jetons uniques et indivisibles (NFT).

* Les jetons ERC20 sont pris en charge par la plupart des plateformes d'échange et des portefeuilles, ce qui les rend ***faciles à intégrer.***

* Les jetons ERC20 sont ***faciles à créer et à déployer***, et ils peuvent être utilisés pour un large éventail d'applications, des simples transferts de jetons aux applications décentralisées complexes.

* Les jetons ERC20 sont ***interopérables***, ce qui signifie qu'ils peuvent être utilisés avec d'autres smarts contracts et applications décentralisées sur le réseau Ethereum.

* Les jetons ERC20 sont ***sécurisés et fiables***, car ils sont basés sur le réseau Ethereum, qui est l'un des réseaux blockchain les plus sécurisés et fiables au monde.

* Les jetons ERC20 sont ***transparents et auditables***, car toutes les transactions sont enregistrées sur la blockchain Ethereum et peuvent être facilement vérifiées par n'importe qui.

## Pourquoi j'ai choisi Solidity comme langage de programmation

* Solidity est un ***langage de haut niveau orienté contrat pour la mise en œuvre de smarts contracts*** qui est spécifiquement conçu pour l'écriture de smarts contracts sur le réseau Ethereum. Il a été influencé par C++, Python et JavaScript et est conçu pour cibler la Machine Virtuelle Ethereum (EVM).

Solidity est statiquement typé, prend en charge l'héritage, les bibliothèques et les types complexes définis par l'utilisateur, entre autres fonctionnalités.

## Pourquoi j'ai choisi de déployer avec l'IDE Remix

* L'IDE Remix est un ***environnement de développement en ligne*** qui permet d'écrire, de tester et de déployer des smarts contracts sur le réseau Ethereum.

* L'IDE Remix est ***facile à utiliser***, avec une interface simple et intuitive qui facilite l'écriture et le déploiement de smarts contracts.

## Pourquoi j'ai choisi de déployer sur le testnet Sepolia

* Le testnet Sepolia est un ***réseau de test public*** conçu pour tester les smarts contracts et les applications décentralisées avant de les déployer sur le mainnet Ethereum.

* Le testnet Sepolia est ***rapide et fiable***, avec des frais de transaction bas et un débit élevé, ce qui le rend idéal pour tester et de déployer des smarts contracts.

## Pourquoi j'ai choisi d'utiliser le portefeuille MetaMask

* MetaMask est un ***portefeuille Ethereum populaire*** qui permet de stocker, d'envoyer et de recevoir des jetons ERC20 et d'autres cryptomonnaies.

* MetaMask est ***facile à utiliser***, avec une interface simple et intuitive qui facilite la gestion de vos jetons et l'interaction avec les applications décentralisées.

## Pourquoi j'ai choisi d'utiliser l'explorateur de blockchain Etherscan

* Etherscan est un ***explorateur de blockchain*** qui permet de visualiser et de vérifier les transactions sur le réseau Ethereum.

* Etherscan est ***facile à utiliser***, avec une interface simple et intuitive qui facilite la recherche de transactions et la consultation d'informations détaillées sur les smarts contracts et les applications décentralisées.

## Conclusion

En conclusion, j'ai choisi de créer un jeton ***ERC20*** en utilisant l'***IDE Remix***, de le déployer sur le testnet ***Sepolia***, et d'interagir avec lui en utilisant le portefeuille ***MetaMask*** et l'explorateur de blockchain ***Etherscan*** parce que ce sont tous des outils faciles à utiliser, fiables et sécurisés qui facilitent la création, le déploiement et l'interaction avec les smarts contracts sur le réseau Ethereum.
