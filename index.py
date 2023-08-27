from tkinter import *
import subprocess


#==========window========== 
root = Tk()
root.geometry("700x600")
root.title('Hack Visa Card { Black Crow }')
root.resizable(False,False)
# button_click=Button(text='Click Me!',command=lambda:print('You clicked me!'),bg='#3695e7',fg="#ffffff").place(relwidth=.5, relheight=.5)#relative width and height of the button
root.iconbitmap("img/new_logo.ico")
root.configure(bg='black')

#=========elements============
name_var=StringVar()
# passw_var=StringVar()
 
  
# defining a function that will
# get the name and password and
# print them on the screen
def submit():
 
    name=name_var.get()
    subprocess.call(["ruby", "test.rb", name])
    # password=passw_var.get()
     
    print("The name is : " + name)
    # print("The password is : " + password)
     
    name_var.set("")
    # passw_var.set("")
     
     
# creating a label for
# name using widget Label
name_label = Label(root, text = 'Username', font=('calibre',10, 'bold'))
  
# creating a entry for input
# name using widget Entry
name_entry = Entry(root,textvariable = name_var, font=('calibre',10,'normal'))
  
# creating a label for password
# passw_label = Label(root, text = 'Password', font = ('calibre',10,'bold'))
  
# creating a entry for password
# passw_entry=Entry(root, textvariable = passw_var, font = ('calibre',10,'normal'), show = '*')
  
# creating a button using the widget
# Button that will call the submit function
sub_btn=Button(root,text = 'Submit', command = submit)
  
# placing the label and entry in
# the required position using grid
# method
name_label.grid(row=0,column=0)
name_entry.grid(row=0,column=1)
# passw_label.grid(row=1,column=0)
# passw_entry.grid(row=1,column=1)
sub_btn.grid(row=2,column=1)










#==========funcation======================




#=============run==========


root.mainloop()