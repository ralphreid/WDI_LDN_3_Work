library = Library.create(name: 'Islington Public Library', address: 'Old Street')

bookshelf1 = Bookshelf.create(category: 'Fiction')
bookshelf2 = Bookshelf.create(category: 'Non-Fiction')
bookshelf3 = Bookshelf.create(category: 'Recipies')
bookshelf4 = Bookshelf.create(category: 'Travel')

library.bookshelves = [bookshelf1, bookshelf2, bookshelf3, bookshelf4]


book1 = Book.create(title: "My Book", author: 'Bob Marley', pages: '300', year: '2001')
book2 = Book.create(title: "Jamaica", author: 'Bob Marley', pages: '300', year: '2001')
book3 = Book.create(title: "Costa Rica", author: 'Bob Marley', pages: '300', year: '2001')
book4 = Book.create(title: "Italy", author: 'Bob Marley', pages: '300', year: '2001')
book5 = Book.create(title: "Chicago", author: 'Bob Marley', pages: '300', year: '2001')
book6 = Book.create(title: "Joker", author: 'Bob Marley', pages: '300', year: '2001')
book7 = Book.create(title: "Gems", author: 'Bob Marley', pages: '300', year: '2001')
book8 = Book.create(title: "Ruby", author: 'Bob Marley', pages: '300', year: '2001')
book9 = Book.create(title: "Hip-Hop", author: 'Bob Marley', pages: '300', year: '2001')
book10 = Book.create(title: "Non-Stop", author: 'Bob Marley', pages: '300', year: '2001')

bookshelf1.books = [book1, book2, book9, book10]
bookshelf2.books = [book3, book4]
bookshelf4.books = [book5, book6]
bookshelf3.books = [book7, book8]
