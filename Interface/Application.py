from tkinter import *
# Création de la fenêtre
window = Tk()

# Assigne un nom à la fenêtre 
window.title("CrazyGames")
# Taille de la fenêtre
window.geometry('1080x720')
window.minsize(1080,720)
# FavIcon + Background
window.iconbitmap("icon.ico")
window.config(background="#FFAC33")
# Mise en place d'une box avec du text
#création d'image
frame = Frame(window, bg="#FFAC33")
width = 50
height = 50

image = PhotoImage(file = "jeux1.png").zoom(2).subsample(5)
canvas = Canvas (frame, width=width, height = height, bg="#FFAC33", bd=0, highlightthickness=0)
canvas.create_image(width/2,height/2, image=image)
canvas.pack(expand=YES)

label_title = Label(frame, text="SpaceInvador", font=("Ubuntu",40), bg="#FFAC33")
label_title.pack(expand=YES)

frame.pack(expand=YES)

# Bouton
Bouton1 = Button(window, text = "Quitter", font=("Ubuntu",20), bg="white", fg="#FFAC33", command = quit)
Bouton1.pack(pady= 25, fill=X)

#affichage
window.mainloop()
