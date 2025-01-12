import sqlite3

conn = sqlite3.connect('university.db')
cursor = conn.cursor()

topic = input("Enter the course topic: ")
hours = float(input("Enter the number of hours: "))

cursor.execute("INSERT INTO course (topic, hours) VALUES (Mate, ?)", (topic, hours))
conn.commit()

print(f"Course '{topic}' with {hours} hours has been added successfully.")

conn.close()