## Déploiement

### Prérequis

-   [Wallet MetaMask](https://metamask.io/)

##

### Comment déployer le contrat depuis Remix IDE pour la première fois

1. Ouvrez le Remix IDE (https://remix.ethereum.org/) et créez un nouveau fichier nommé `42FDS.sol`.

2. Copiez le code du fichier `FDS42.sol` du dossier `contracts` de ce dépôt et collez-le dans Remix IDE.

3. Allez dans l'onglet `Solidity compiler` et compilez le contrat en cliquant sur le bouton `Compile contract/42FDS.sol` à gauche de l'IDE.

4. Déployez le contrat en cliquant sur l'onglet `Deploy & run transactions` à gauche de l'IDE.

5. Sélectionnez l'environnement `Injected Provider - MetaMask` pour connecter votre portefeuille MetaMask et le compte depuis lequel vous souhaitez déployer le contrat dans la section `Deploy`.

6. Cliquez sur le bouton `Deploy`.

7. Confirmez la transaction dans votre portefeuille.

8. Le contrat est maintenant déployé et vous pouvez interagir avec lui dans la section `Deployed/Unpinned Contracts` de l'IDE.

##

### Interagir avec le contrat s'il a déjà été déployé une fois

1. Ouvrez Remix IDE et allez dans l'onglet `Solidity compiler` puis compilez le contrat en cliquant sur le bouton `Compile contract/42FDS.sol` à gauche de l'IDE.

2. Allez dans l'onglet `Deploy & run transactions` à gauche de l'IDE.

3. Sélectionnez l'environnement `Injected Provider - MetaMask` pour connecter votre portefeuille MetaMask et le compte depuis lequel vous souhaitez interagir avec le contrat dans la section `Deploy`.

4. Dans le champ `At Address`, saisissez l'adresse du contrat, puis cliquez sur le bouton `At Address`.

5. Le contrat est maintenant accessible et vous pouvez interagir avec lui dans la section `Deployed/Unpinned Contracts` de l'IDE.