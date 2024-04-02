from customtkinter import CTk, CTkToplevel

class Window:
    def __init__(self, title: str, width: int, height: int, root: CTk | CTkToplevel):
        self.title = title
        self.width = width
        self.height = height
        self.root = root


        self.center_window(root, width, height)

    def __create_window__(self):
        window = CTkToplevel(self.root)

        window.title(self.title)

        window.configure(background="lightblue")

        self.center_window(window, self.width, self.height)

         # Obsługa zdarzenia zamknięcia okna
        window.protocol("WM_DELETE_WINDOW", lambda: self.root.destroy())

        self.window = window     
    
    @staticmethod
    def center_window(root: CTk | CTkToplevel, width: int, height: int):
        screen_width = root.winfo_screenwidth()
        screen_height = root.winfo_screenheight()
        
        # Oblicz współrzędne X i Y dla ustawienia okna na środku ekranu
        x = (screen_width // 2) - (width // 2)
        y = (screen_height // 2) - (height // 2)

        # Ustawienie geometrii okna
        root.geometry(f'{width}x{height}+{x}+{y}')

    def on_closing(self): 
        self.window.destroy()
        
    def open_window(self):
        self.__create_window__()
        self.root.withdraw()

    def __go_back__(self):
        self.root.deiconify()
        self.window.destroy()