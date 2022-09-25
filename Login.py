# NAME OF CODE ARTIFACT - Login.py 
# BRIEF DESCRIPTION - This is the login page for the app where users will be prompt to enter their username and password along with the page to reset their passwords in the event of them forgetting the password 
#                     Username and password box are functional when the login button is pressed, the page navigates to a "login success" page.
#                     Forgot password is functional.
# PROGRAMMERS NAME - Jowaki Merani, Parveen Kaur, Jui Nagarkar, Eduardo Sanchez
# DATE CODE CREATED - Sept 21st 2022
# DATE REVISED - Sept 21st 2022
#                   Jowaki Merani - Created the base outline of the application including the initial signup page with the text boxes for inputting username and password
#                   Jui Nagarkar - Created the signin and forgot password buttons 
#                   Jui Nagarkar - Created the functionality of the signin button 
#                   Jowaki Merani - Created the functionality of the forgot password button 
#                Sept 24th 2022
#                   Eduardo Sanchez - Ensured that the username, password, dob, new password, confirm password values disapperared when started filling in the fields
#                   Parveen Kaur - Linked the finished password button and the login button to the respective pages 
#                   Parveen Kaur - Print image on the application window 
#               
# KNOWN FAULT - png and JPEG images are not generated. This could possiby be a location issue where the code is not finding it in the files.st 


#importing required libraries
from tkinter import* 
from tkinter import messagebox 

#creating a root to determine the base structure of the login page - this hold the information on the lable of the window and the size of the window
root=Tk()
root.title('Login')
root.geometry('925x500+300+200')#defining the dimensions of the window
root.config(bg="#1e90ff")#defining the background color of the window
root.resizable(False, False)

#this is the function that is called when the submit button is clicked - as of now it only checks if the admin is able to log in and a correct password is provided 
#if a correct password is provided a redirect to a new screen is created that indicates where the rest of teh app would begin
def signin():
    #this derives the user name from the input box of the username
    username=user.get()
    #this derives the password name from the input box of the password
    password=code.get()
    
    #checks for a hard coded admin username and a specific password of 123 - if this combination is found a redirect to a new page is created
    if username=='admin' and password=='123':
        #creating a new entity called screen - this creates the new screen where the application would start
        screen=Toplevel(root)
        screen.title("App")
        screen.geometry('925x500+300+200')#dimensions of the new screen 
        screen.config(bg="white")#background of the new screen 
        
        #prints the heading of the page 
        Label(screen, text='Sucessful login - App will start here ', bg='#fff', font=('Calibri(Body)', 50, 'bold')).place(x=10,y=10)
        
        #ensures a continuous loop of the page - so the page dosent disappear after a certain amt of time 
        screen.mainloop()
        
        
# when the forgot password button is selected, the user is redirected to another page where 
# this system collects the user's Username, data of birth, new password and confirmation of the new password.   
def forgotpass():
    #creating a new entity called screen - this creates the new screen where the application helps reset the password
    screen=Toplevel(root)
    screen.title('Forgot pass')
    screen.geometry('925x500+300+200')#dimensions of the new screen 
    screen.config(bg="#fff")#background of the new screen 
    
    #prints the heading of the page 
    Label(screen, text='Reset Password!', bg='#fff', font=('Calibri(Body)', 12, 'bold')).place(x=30,y=80)
    
    #creates a frame for the page - this hold all the attributes 
    frame = Frame(screen, width = 350, height=400, bg="white")
    frame.place(x=480, y=70)#dimensions of the frame
    
    #helps create the disappearing username text in the text box
    def on_enter(e):
        user1.delete(0, 'end')
    def on_leave(e):
        name=user1.get()
        if name==' ':
            user1.insert(0, 'Username')#default - show the username text
    user1 = Entry(frame, width=25, fg='black', border=0, bg="white", font = ('Microsoft YaHei UI Light',11))#display the text
    user1.place(x=30, y=80)
    user1.insert(0,'Username')
    Frame(frame, width=295, height=2, bg='black').place(x=25, y= 107)
    #defines when the text box should be in focus and when not
    user1.bind('<FocusIn>', on_enter)
    user1.bind('<FocusOut>', on_leave)
    
    #helps create the disappearing dob text in the text box
    def on_enter(e):
        dob.delete(0, 'end')
    def on_leave(e):
        name=dob.get()
        if name==' ':
            dob.insert(0, 'Date of Birth')#default - show the dob text
    dob = Entry(frame, width=25, fg='black', border=0, bg="white", font = ('Microsoft YaHei UI Light',11))#display the text
    dob.place(x=30, y=150)
    dob.insert(0,'Date of Birth')
    Frame(frame, width=295, height=2, bg='black').place(x=25, y= 177)
    #defines when the text box should be in focus and when not
    dob.bind('<FocusIn>', on_enter)
    dob.bind('<FocusOut>', on_leave)
    
    #helps create the disappearing new password text in the text box
    def on_enter(e):
        npass.delete(0, 'end')
    def on_leave(e):
        name=npass.get()
        if name==' ':
            npass.insert(0, 'New Password')#default - show the new password text
    npass = Entry(frame, width=25, fg='black', border=0, bg="white", font = ('Microsoft YaHei UI Light',11))#display the text
    npass.place(x=30, y=220)
    npass.insert(0,'New Password')
    Frame(frame, width=295, height=2, bg='black').place(x=25, y= 247)
    #defines when the text box should be in focus and when not
    npass.bind('<FocusIn>', on_enter)
    npass.bind('<FocusOut>', on_leave)
    
    #helps create the disappearing Confirm password text in the text box
    def on_enter(e):
        cpass.delete(0, 'end')
    def on_leave(e):
        name=cpass.get()
        if name==' ':
            user1.insert(0, 'Confirm Password')#default - show the Confirm password text
    cpass = Entry(frame, width=25, fg='black', border=0, bg="white", font = ('Microsoft YaHei UI Light',11))#display the text
    cpass.place(x=30, y=290)
    cpass.insert(0,'Confirm Password')
    Frame(frame, width=295, height=2, bg='black').place(x=25, y= 317)
    #defines when the text box should be in focus and when not
    cpass.bind('<FocusIn>', on_enter)
    cpass.bind('<FocusOut>', on_leave)
    
    #creates a button that submits the request to reset the password
    Button(frame, width=19, pady = 7, text ='Reset' , bg='#57a1f8', fg='white', border=0, command=signin).place(x=30,y=360)



# img = PhotoImage(photo = "brain.jpg")
# Label(root,image=img, bg = '#1e90ff').place(x=50, y=50)

# im = PIL.Image.open("icon.jpg")
# photo = PIL.ImageTk.PhotoImage(im)

# label = Label(root, image=photo)
# label.image = photo 

#creates a frame for the page - this hold all the attributes 
frame = Frame(root, width = 350, height=350, bg='#1e90ff')
frame.place(x=480, y=70)

#displays the main text - at the top of the page 
heading = Label(frame, text='Mindly Sign-in', fg = '#fff', bg='#1e90ff', font=('Calibri(Body)', 23, 'bold'))
heading.place(x=100, y=5)

#helps create the disappearing username text in the text box
def on_enter(e):
    user.delete(0, 'end')
def on_leave(e):
    name=user.get()
    if name==' ':
        user.insert(0, 'Username')#default - show the username text
    
user = Entry(frame, width=25, fg='#fff', border=0, bg="#1e90ff", font = ('Microsoft YaHei UI Light',11))#display the text
user.place(x=30, y=80)
user.insert(0,'Username')
#defines when the text box should be in focus and when not
user.bind('<FocusIn>', on_enter)
user.bind('<FocusOut>', on_leave)

Frame(frame, width=295, height=2, bg='#fff').place(x=25, y= 107)

#helps create the disappearing password text in the text box
def on_enter(e):
    code.delete(0, 'end')
def on_leave(e):
    name=code.get()
    if name==' ':
        user.insert(0, 'Password')#default - show the password text
        
code = Entry(frame, width=25, fg='#fff',show='*', border=0, bg="#1e90ff", font = ('Microsoft YaHei UI Light', 11))#display the text
code.place(x=30, y=150)
code.insert(0,'Password')
#defines when the text box should be in focus and when not
code.bind('<FocusIn>', on_enter)
code.bind('<FocusOut>', on_leave)

Frame(frame, width=295, height=2, bg='#fff').place(x=25, y= 177)

#creates a button to submit the login - credentials 
Button(frame, width=19, pady = 7, text ='Sign in' , bg='#fff', fg='#1e90ff', border=0, command=signin).place(x=35, y=204)
#crestes a button that helps redirect to the forgot password page 
Button(frame, width=19, pady = 7, text ='Forgot password?' , bg='#fff', fg='#1e90ff', border=0, command = forgotpass ).place(x=200, y=204)

#displays regular text 
label = Label(frame, text="Dont have an account?", fg='#fff', bg='#1e90ff', font=('Microsoft YaHei UI Light',9))
label.place(x=75, y=270)

#creates a button that should redirect to create a new user 
sign_up = Button(frame, width=6, text='Sign up', bg='#fff', border=0 ,cursor='hand2', fg='#1e90ff')
sign_up.place(x=215, y=270)

#main infinite loop 
root.mainloop()