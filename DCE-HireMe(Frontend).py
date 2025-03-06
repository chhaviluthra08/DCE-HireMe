import streamlit as st
import mysql.connector
from mysql.connector import Error

# Function to connect to MySQL database
def connectdb():
    try:
        conn = mysql.connector.connect(
            host="localhost",  # Change if your MySQL Workbench uses a different host
            user="root",  # Replace with your MySQL username
            password="Gunik@2109",  # Replace with your MySQL password
            database="DCE_Reports2"
        )
        return conn
    except Error as e:
        st.error(f"Error connecting to MySQL: {e}")
        return None

# Function to authenticate user
def authenticate(username, password):
    conn = connectdb()
    if conn:
        cursor = conn.cursor()
        cursor.execute('SELECT * FROM student WHERE name=%s AND password=%s', (username, password))
        user = cursor.fetchone()
        conn.close()
        return user
    return None

# Function to view upcoming on-campus placements
def view_upcoming_placements():
    conn = connectdb()
    if conn:
        cursor = conn.cursor()
        cursor.execute('SELECT * FROM OnCampusPlacement ORDER BY startDate')
        placements = cursor.fetchall()
        conn.close()
        return placements
    return []

# Function to view upcoming internships
def view_upcoming_internships():
    conn = connectdb()
    if conn:
        cursor = conn.cursor()
        cursor.execute('SELECT * FROM OffCampusInternship ORDER BY startDate')
        internships = cursor.fetchall()
        conn.close()
        return internships
    return []

# Streamlit app layout
st.title("Internship Manager Platform")

# Sign-in Form
username = st.text_input("Username")
password = st.text_input("Password", type="password")
if st.button("Sign In"):
    user = authenticate(username, password)
    if user:
        st.success(f"Welcome, {user[1]}")
        
        # Menu options
        menu = st.selectbox("Menu", ["View Upcoming Placements", "View Upcoming Internships"])
        
        if menu == "View Upcoming Placements":
            placements = view_upcoming_placements()
            if placements:
                for placement in placements:
                    st.write(f"### {placement[0]}")
                    st.write(f"Post: {placement[1]}")
                    st.write(f"Eligibility: {placement[2]}")
                    st.write(f"Start Date: {placement[3]}")
                    st.write(f"End Date: {placement[4]}")
                    st.write(f"Stipend: {placement[5]}")
            else:
                st.write("No upcoming placements.")
        
        if menu == "View Upcoming Internships":
            internships = view_upcoming_internships()
            if internships:
                for internship in internships:
                    st.write(f"### {internship[0]}")
                    st.write(f"Post: {internship[1]}")
                    st.write(f"Eligibility: {internship[2]}")
                    st.write(f"Start Date: {internship[3]}")
                    st.write(f"End Date: {internship[4]}")
                    st.write(f"Stipend: {internship[5]}")
            else:
                st.write("No upcoming internships.")
    else:
        st.error("Invalid username or password")
