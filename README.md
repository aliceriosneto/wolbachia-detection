# wolbachia-detection
exercicio avaliativo
Detecção de Wolbachia em Bibliotecas de Pequenos RNAs
O objetivo deste projeto é orientar na detecção de sequências de Wolbachia em bibliotecas de pequenos RNAs, desde o download das sequências até a visualização dos dados por meio de um heatmap no R, utilizando o pacote ComplexHeatmap. A Wolbachia pipientis é uma bactéria endossimbionte que infecta mosquitos, como o Aedes aegypti, e pode inibir a infecção e transmissão de vírus, o que a torna um alvo potencial para o controle de doenças transmitidas por esses vetores.
O processo de detecção de Wolbachia envolve as seguintes etapas principais:

Download das Sequências do SRA (Sequence Read Archive): As sequências de pequenos RNAs serão obtidas a partir de bancos de dados públicos, como o SRA, onde estão armazenadas as bibliotecas de sequências de RNA de mosquitos infectados e não infectados por Wolbachia.

Limpeza e Qualidade das Sequências: As sequências obtidas serão filtradas para remover contaminantes e garantir que apenas dados de alta qualidade sejam usados na análise.

Alinhamento com a Referência de Wolbachia: As sequências limpas serão alinhadas contra a referência genômica de Wolbachia para identificar quais sequências correspondem à bactéria.

Análise e Visualização dos Dados no R: Por fim, será feita uma análise quantitativa e qualitativa das sequências detectadas, com a criação de um heatmap utilizando o pacote ComplexHeatmap no R para visualizar as abundâncias das sequências de Wolbachia nas diferentes amostras.

Essa análise é importante para entender a presença e o papel de Wolbachia nas bibliotecas de pequenos RNAs de mosquitos, o que pode ter implicações na pesquisa e controle de doenças transmitidas por esses vetores.
