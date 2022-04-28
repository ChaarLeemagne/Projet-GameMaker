from tkinter import *
from subprocess import Popen
# Création de la fenêtre
def finish():
    
    p = Popen("start.bat", cwd=r"./")
    stdout, stderr = p.communicate()
    
window = Tk()

# Assigne un nom à la fenêtre
window.title("Bienvenue")
# Taille de la fenêtre
window.geometry('1080x720')
window.minsize(1080,720)
# FavIcon + Background
window.iconbitmap("icon.ico")
window.config(background="#FFAC33")
# Mise en place d'une box avec du text
frame = Frame(window, bg="#FFAC33")
label_title = Label(frame, text="Bienvenue sur Crazy Games", font=("Ubuntu",40), bg="#FFAC33")
label_title.pack(expand=YES)
label_subtitle = Label(frame, text="Amusez-vous bien ;)", font=("Ubuntu",35), bg="#FFAC33")
label_subtitle.pack(expand=YES)
frame.pack(expand=YES)
# Bouton
Bouton1 = Button(window, text = "Quitter", font=("Ubuntu",20), bg="white", fg="#FFAC33", command = quit )
Bouton1.pack(pady= 25, fill=X)
Bouton2 = Button(frame, text = "Lancez l'application", font=("Ubuntu",20), bg="white", fg="#FFAC33", command = finish)
Bouton2.pack(pady= 25, fill=X)
#affichage
window.mainloop()