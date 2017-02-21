class Tcc < ActiveRecord::Base
  enum tipos: {estagio: 1, pesquisa: 2, trabalhador: 3}
  has_and_belongs_to_many :palavras
  belongs_to :aluno
  belongs_to :professor
  belongs_to :proposta_tcc, optional: true #remover optional ao integrar com crud proposta
  has_one :plano_atividade
  has_one :banca
  has_attached_file :arquivo, styles: {thumbnail: "60x60#"}
  validates_attachment :arquivo, content_type: { content_type: "application/pdf" }
  validates :titulo, :periodo, :tipos, presence: true

end
