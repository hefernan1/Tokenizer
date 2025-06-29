### Présentation

Le smart contract FDS est un token conforme à la norme ERC-20 avec des fonctionnalités supplémentaires de mint (création) et de burn (destruction). 
Ce contrat permet au propriétaire de créer de nouveaux tokens et offre les opérations standards des tokens, y compris le transfert et la destruction de tokens.
Le contrat repose sur les bibliothèques robustes et sécurisées d'OpenZeppelin, garantissant fiabilité et sécurité dans son implémentation.

### Détails du contrat

    Nom du contrat : FDS
    Nom du token : 42FDS
    Symbole du token : 42FDS
    Décimales : 18 (par défaut pour les tokens ERC-20)
    Contract address: `0x6707d28f275b44F7248410CeB7C8535451A18FE5`  (https://sepolia.etherscan.io/address/0x6707d28f275b44F7248410CeB7C8535451A18FE5)

### Fonctionnalités principales

    Standard ERC-20 : Implémente les fonctionnalités de base d'un token ERC-20, incluant transfer, approve et transferFrom.
    Fonction de mint : Le propriétaire du contrat peut créer de nouveaux tokens et les attribuer à n'importe quelle adresse.
    Burnable : Les détenteurs de tokens peuvent détruire leurs tokens pour réduire l'offre totale.
    Contrôle de propriété : Le contrat possède un propriétaire qui peut minter des tokens et gérer les fonctionnalités liées à la propriété.

### Héritage

Le contrat FDS hérite des contrats OpenZeppelin suivants :

    ERC20 : Fournit les fonctionnalités standard d'un token ERC-20.
    ERC20Burnable : Ajoute la possibilité pour les détenteurs de tokens de les brûler.
    Ownable : Ajoute des fonctionnalités de contrôle de propriété.

### Structure du code

Voici une présentation du code et de ses composants :

```solidity
// SPDX-License-Identifier: MIT
// Cet identifiant de licence est un commentaire obligatoire pour spécifier la licence sous laquelle ce contrat est publié.

// Compatible avec OpenZeppelin Contracts ^5.0.0
// Indique que ce contrat est compatible avec OpenZeppelin Contracts version 5.0.0 et supérieures.

pragma solidity ^0.8.20;
// Spécifie la version de Solidity requise pour ce contrat. Cela garantit la compatibilité avec Solidity 0.8.20 et supérieures.

// Importe l'implémentation standard ERC20 de la bibliothèque OpenZeppelin.
import "@openzeppelin/contracts@5.0.2/token/ERC20/ERC20.sol";

// Importe l'extension ERC20Burnable, qui ajoute la fonctionnalité de burn au token ERC20.
import "@openzeppelin/contracts@5.0.2/token/ERC20/extensions/ERC20Burnable.sol";

// Importe le contrat Ownable d'OpenZeppelin, qui fournit des fonctions de contrôle d'autorisation de base.
import "@openzeppelin/contracts@5.0.2/access/Ownable.sol";

// Le contrat FDS hérite de ERC20, ERC20Burnable et Ownable.
contract FDS is ERC20, ERC20Burnable, Ownable {
    /**
     * @dev Constructeur qui initialise le token ERC20 avec un nom et un symbole,
     * et définit le propriétaire initial du contrat.
     * @param initialOwner L'adresse qui sera définie comme propriétaire initial du contrat.
     */
    constructor(address initialOwner)
        ERC20("42FDS", "42FDS") // Initialise le token avec le nom "42FDS" et le symbole "42FDS".
        Ownable(initialOwner) // Définit le propriétaire initial du contrat à l'adresse fournie.
    {}

    /**
     * @dev Fonction pour minter de nouveaux tokens.
     * Ne peut être appelée que par le propriétaire du contrat.
     * @param to L'adresse qui recevra les tokens mintés.
     * @param amount Le montant de tokens à minter.
     */
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount); // Appelle la fonction interne _mint pour créer de nouveaux tokens et les attribuer à l'adresse 'to'.
    }
}
```

### Fonctionnalités

#### 1. Constructeur

```solidity
constructor(address initialOwner)
    ERC20("42FDS", "42FDS")
    Ownable(initialOwner)
{}
```

-   **But :** Initialise le contrat avec un nom et un symbole pour le token et définit le propriétaire initial du contrat.
-   **Paramètres :** `initialOwner` - Adresse qui sera assignée comme propriétaire du contrat.

#### 2. Fonction de mint

```solidity
function mint(address to, uint256 amount) public onlyOwner {
    _mint(to, amount);
}
```

-   **But :** Permet au propriétaire du contrat de créer de nouveaux tokens et de les attribuer à une adresse spécifiée.

-   **Contrôle d'accès :** `onlyOwner` - Restreint l'appel de la fonction de mint uniquement au propriétaire du contrat.

-   **Paramètres :**
    -   `to` - Adresse qui recevra les tokens créés.
    -   `amount` - Nombre de tokens à créer.

### Fonctionnalités héritées

Le contrat FDS hérite des fonctionnalités suivantes des contrats OpenZeppelin :

#### Standard ERC20

-   **Transfer :** Permet aux détenteurs de tokens de transférer des tokens à d'autres adresses.
-   **Approve :** Permet aux détenteurs de tokens d'autoriser une autre adresse à dépenser des tokens en leur nom.
-   **TransferFrom :** Permet aux adresses autorisées de transférer des tokens au nom des détenteurs.
-   **Allowance :** Retourne le montant de tokens qu'une adresse est autorisée à dépenser pour le compte d'une autre adresse.
-   **BalanceOf :** Retourne le solde de tokens d'une adresse spécifique.
-   **TotalSupply :** Retourne l'offre totale du token.
-   **Decimals :** Retourne le nombre de décimales utilisées pour le token.
-   **Name :** Retourne le nom du token.
-   **Symbol :** Retourne le symbole du token.

##

## Déploiement

-   Voir [deployment/DEPLOYMENT.md]

##

## Liste des Utilisations possible

#### Approve

Avant de transférer des tokens, le détenteur doit autoriser le contrat à dépenser ses tokens en son nom. Cela se fait en appelant la fonction `approve` avec l'adresse du contrat et le montant à autoriser.

```solidity
approve(address spender, uint256 amount)
// Exemple : Autoriser le contrat à dépenser 100 tokens pour le détenteur.
approve(contractAddress, 100);
```

#### Burn

Les détenteurs peuvent brûler leurs tokens en appelant la fonction `burn` avec le montant de tokens à brûler.

```solidity
burn(uint256 amount)
// Exemple : Brûler 50 tokens du solde du détenteur.
burn(50);
```

#### Burn From

Si un détenteur a autorisé une autre adresse à dépenser ses tokens, l'adresse autorisée peut brûler des tokens au nom du détenteur en appelant la fonction `burnFrom`.

```solidity
burnFrom(address account, uint256 amount)
// Exemple : Brûler 30 tokens du solde du détenteur au nom de l'adresse autorisée.
burnFrom(tokenHolder, 30);
```

#### Mint

Pour créer de nouveaux tokens, le propriétaire du contrat peut appeler la fonction `mint` avec l'adresse du destinataire et le montant à créer.
Le modificateur `onlyOwner` restreint cette fonction au propriétaire du contrat.
Les tokens ont 18 décimales par défaut.
Si vous souhaitez minter 100 tokens, vous devez passer la valeur `100000000000000000000` comme montant.

```solidity
mint(address to, uint256 amount)
// Exemple : Minter 100 tokens et les attribuer à l'adresse du destinataire.
mint(recipientAddress, 100000000000000000000);
```

#### Renoncer à la propriété

Le propriétaire du contrat peut renoncer à la propriété en appelant la fonction `renounceOwnership`. Cela supprimera les privilèges du propriétaire et le contrat n'aura plus de propriétaire.

```solidity
renounceOwnership()
```

#### Transfert

Les détenteurs peuvent transférer des tokens à d'autres adresses en utilisant la fonction standard ERC-20 `transfer`.

```solidity
transfer(address recipient, uint256 amount)
// Exemple : Transférer 50 tokens à l'adresse du destinataire.
transfer(recipientAddress, 50);
```

#### Transfer From

Si un détenteur a autorisé une autre adresse à dépenser ses tokens, l'adresse autorisée peut transférer des tokens au nom du détenteur en appelant la fonction `transferFrom`.

```solidity
transferFrom(address sender, address recipient, uint256 amount)
// Exemple : Transférer 30 tokens de l'adresse de l'expéditeur à celle du destinataire.
transferFrom(senderAddress, recipientAddress, 30);
```

#### Transférer la propriété

Le propriétaire du contrat peut transférer la propriété à une autre adresse en appelant la fonction `transferOwnership` avec la nouvelle adresse du propriétaire.

```solidity
transferOwnership(address newOwner)
```

#### Allowance

La fonction `allowance` permet de vérifier le montant de tokens qu'une adresse est autorisée à dépenser pour le compte d'une autre adresse.

```solidity
allowance(address owner, address spender)
```

#### Balance Of

La fonction `balanceOf` permet de vérifier le solde de tokens d'une adresse spécifique.

```solidity
balanceOf(address account)
```

#### Decimals

La fonction `decimals` retourne le nombre de décimales utilisées pour le token.

```solidity
decimals()
```

#### Name

La fonction `name` retourne le nom du token.

```solidity
name()
```

#### Owner

La fonction `owner` retourne l'adresse du propriétaire du contrat.

```solidity
owner()
```

#### Symbol

La fonction `symbol` retourne le symbole du token.

```solidity
symbol()
```

#### Total Supply

La fonction `totalSupply` retourne l'offre totale du token.

```solidity
totalSupply()
```