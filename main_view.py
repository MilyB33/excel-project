from customtkinter import CTk, CTkFrame, CTkButton
from csv_view import CSV_WINDOW
from db_view import DB_WINDOW
from windows import Window
from constant import MIN_WINDOW_WIDTH, MIN_WINDOW_HEIGHT

class App(CTk):
    def __init__(self):
        super().__init__()

    def __open_csv_window__(self):
        csv_window = CSV_WINDOW(self)
        csv_window.open_window()

    def __open_database_window__(self):
        database_window = DB_WINDOW(self)
        database_window.open_window()

    def __create_main_window_layout__(self):
        frame = CTkFrame(self)
        frame.pack(expand=True)

        # Utwórz przyciski i dodaj do ramki
        csv_button = CTkButton(frame, text="Importuj CSV", command= self.__open_csv_window__)
        csv_button.grid(row=0, column=0, padx=10, pady=10)

        db_button = CTkButton(frame, text="Łączenie z bazą", command= self.__open_database_window__)
        db_button.grid(row=0, column=1, padx=10, pady=10)

    def create_main_window(self):  
        self.title("Główne Okno")

        # Ustawienie koloru tła okna
        self.configure(background="lightblue")

        # Ustawienie minimalnych wymiarów okna
        self.minsize(MIN_WINDOW_WIDTH, MIN_WINDOW_HEIGHT)

        # Ustawienie okna na środku ekranu
        Window.center_window(self, MIN_WINDOW_WIDTH, MIN_WINDOW_HEIGHT)

        # Utworzenie layoutu okna głównego
        self.__create_main_window_layout__()
        
        # Obsługa zdarzenia zamknięcia okna
        self.protocol("WM_DELETE_WINDOW", lambda: self.destroy())

        # Uruchomienie pętli głównej
        self.mainloop()