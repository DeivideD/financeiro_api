namespace :dev do

  desc 'Configura o ambiente de desenvolvimento'
  task setup: :environment do
    if Rails.env.development?
      show_spinner('Apagando BD...') { %x(rails db:drop) }
      show_spinner('Criando BD...') { %x(rails db:create) }
      show_spinner('Migrando BD...') { %x(rails db:migrate) }
      show_spinner('Cadastrando transacoes...') { %x(rails dev:add_trasacoes) }
    else
      puts 'Você não está em ambiente de desenvolvimento!'
    end
  end

  desc 'Configura o ambiente de desenvolvimento'
  task add_trasacoes: :environment do
    Transacao.create!(
      tipo: '1',
      descricao: 'Débito',
      natureza: 'Entrada',
      sinal: '+'
    )

    Transacao.create!(
      tipo: '2',
      descricao: 'Boleto',
      natureza: 'Saída',
      sinal: '-'
    )

    Transacao.create!(
      tipo: '3',
      descricao: 'Financiamento',
      natureza: 'Saída',
      sinal: '-'
    )

    Transacao.create!(
      tipo: '4',
      descricao: 'Crédito',
      natureza: 'Entrada',
      sinal: '+'
    )

    Transacao.create!(
      tipo: '5',
      descricao: 'Recebimento Empréstimo',
      natureza: 'Entrada',
      sinal: '+'
    )

    Transacao.create!(
      tipo: '6',
      descricao: 'Vendas',
      natureza: 'Entrada',
      sinal: '+'
    )

    Transacao.create!(
      tipo: '7',
      descricao: 'Recebimento TED',
      natureza: 'Entrada',
      sinal: '+'
    )

    Transacao.create!(
      tipo: '8',
      descricao: 'Recebimento DOC',
      natureza: 'Entrada',
      sinal: '+'
    )

    Transacao.create!(
      tipo: '9',
      descricao: 'Aluguel',
      natureza: 'Saída',
      sinal: '-'
    )
  end

  private

  def show_spinner(msg_start, msg_end = 'Concluído!')
    spinner = TTY::Spinner.new("[:spinner] #{msg_start}")
    spinner.auto_spin
    yield
    spinner.success("(#{msg_end})")
  end
end
