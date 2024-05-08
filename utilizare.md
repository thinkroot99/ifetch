# Utilizare

Pentru a face scriptul să poată fi instalat și utilizat, trebuie să creezi un fișier binar executabil și să-l plasezi într-un director care este inclus în variabila de mediu PATH. Acest lucru îți va permite să rulezi scriptul din orice locație din terminal, fără a specifica calea completă către script.

**Iată pașii pe care îi poți urma:**

1. **Modificarea scriptului**: Asigură-te că scriptul are extensia ".sh" și că are permisiunile adecvate de execuție folosind comanda `chmod +x ifetch.sh`.

2. **Creează un director pentru script**: Poți crea un director special pentru script. De exemplu, poți crea un director numit „.bin” în directorul home al utilizatorului tău:
   ```bash
   mkdir ~/.bin
   ```

3. **Mută scriptul în moul director**: Mută scriptul în directorul pe care l-ai creat:
   ```bash
   mv ifetch.sh ~/.bin
   ```

4. **Adaugă directorul în variabila PATH**: Deschide fișierul de configurare a shell-ului tău (de obicei `.bashrc`, `.bash_profile`, `.zshrc`, etc.) și adaugă următoarea linie la sfârșitul fișierului:
   ```bash
   export PATH="$HOME/.bin:$PATH"
   ```

5. **Reîncarcă configurația shell-ului**: Pentru a aplica modificările, reîncarcă configurația shell-ului tău folosind comanda:
   ```bash
   source ~/.bashrc
   ```

După acești pași, poți să rulezi scriptul din orice locație din terminal, folosind doar numele său. De exemplu:
```bash
ifetch.sh
```