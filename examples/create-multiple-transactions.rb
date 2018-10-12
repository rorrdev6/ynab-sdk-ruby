require 'date'
require 'ynab'

def create_multiple_transactions
  access_token = ENV['YNAB_ACCESS_TOKEN']
  ynab = YNAB::API.new(access_token)

  budget_id = ENV['YNAB_BUDGET_ID']
  account_id = 'f6fe07cb-c895-not-real-acfac0b7f026'
  category_id = 'a191ac84-de09-not-real-6c5ed8cfdabe'

  begin
    ynab.transactions.create_transaction(budget_id, {
      transactions: [
        {
          account_id: account_id,
          category_id: category_id,
          date: Date.today,
          payee_name: 'A Test Payee',
          memo: 'I was created through the API',
          cleared: 'Cleared',
          approved: true,
          flag_color: 'Blue',
          amount: 20000
       },
       {
          account_id: account_id,
          category_id: category_id,
          date: Date.today,
          payee_name: 'Another Test Payee',
          memo: 'I was also created through the API',
          cleared: 'Uncleared',
          approved: false,
          flag_color: 'Red',
          amount: 39453
       }
      ]
    })
  rescue => e
    puts "ERROR: id=#{e.id}; name=#{e.name}; detail: #{e.detail}"
  end
end

create_multiple_transactions
