
Books(BookID PK, Title, Author)
Members(MemberID PK, Name)
Loans(LoanID PK, BookID FK, MemberID FK, LoanDate)

SELECT Members.Name, Books.Title
FROM Loans
JOIN Members ON Loans.MemberID = Members.MemberID
JOIN Books ON Loans.BookID = Books.BookID;
