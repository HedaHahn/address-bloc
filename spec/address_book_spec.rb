require_relative '../models/address_book'

RSpec.describe AddressBook do

  let(:book) {AddressBook.new}

  describe "attributes" do
    it "should respond to entries" do
      expect(book).to respond_to(:entries)
    end

    it "should initialize entries as an array" do
       expect(book.entries).to be_a(Array)
     end

     it "should initialize entries as empty" do
       expect(book.entries.size).to eq 0
     end
  end

  describe "#remove_entry" do
     it "removes an entry of name, phone_number, and email" do
       book = AddressBook.new_entry
       book.add_entry('Heda Hahn', '010.012.1819', 'heda@hedahahn.com')

       name = "Ada Lovelace"
       phone_number = "010.012.1815"
       email = "augusta.king@lovelace.com"
       book.add_entry(name, phone_number, email)

       expect (book.enteries.size).to_eq 2
       book.remove_entry(name, phone_number, email)
       expect(book.entries.size).to_eq 1
       expect(book.enteries.first.name).to_eq("Heda Hahn")
     end
   end

  describe "#add_entry" do
     it "adds only one entry to the address book" do
       book.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
       expect(book.entries.size).to eq 1
     end

     it "adds the correct information to entries" do
       book.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
       new_entry = book.entries[0]

       expect(new_entry.name).to eq('Ada Lovelace')
       expect(new_entry.phone_number).to eq('010.012.1815')
       expect(new_entry.email).to eq('augusta.king@lovelace.com')
     end
   end

   describe "#import_from_csv" do
        it "imports the correct number of entries" do
    # #3
          book.import_from_csv("entries.csv")
          book_size = book.entries.size

          # Check the size of the entries in AddressBook
          expect(book_size).to eq 5
        end

    end
end
