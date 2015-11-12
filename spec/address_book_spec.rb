require_relative '../models/address_book'

RSpec.describe AddressBook do
  describe "attributes" do
    it "should respond to entries" do
      book = AddressBook.new
      expect(book).to respond_to(:entries)
    end

    it "should initialize entries as an array" do
       book = AddressBook.new
       expect(book.entries).to be_a(Array)
     end

     it "should initialize entries as empty" do
       book = AddressBook.new
       expect(book.entries.size).to eq(0)
     end
  end

  describe "#remove_entry"
     it "removes an entry of name, phone_number, and email"
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
       book = AddressBook.new
       book.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')

       expect(book.entries.size).to eq(1)
     end

     it "adds the correct information to entries" do
       book = AddressBook.new
       book.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
       new_entry = book.entries[0]

       expect(new_entry.name).to eq('Ada Lovelace')
       expect(new_entry.phone_number).to eq('010.012.1815')
       expect(new_entry.email).to eq('augusta.king@lovelace.com')
     end
   end

end
