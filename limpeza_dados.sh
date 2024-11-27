# Avaliação de qualidade das leituras com FastQC
fastqc SRRXXXXXXX.fastq

# Limpeza e corte de sequências de baixa qualidade com Trim Galore
trim_galore --fastqc -q 25 --trim-n --max_n 0 -j 1 --length 18 --dont_gzip SRRXXXXXXX.fastq
1. Avaliação de qualidade das leituras com FastQC
bash
Copiar código
fastqc SRRXXXXXXX.fastq
Comentário:

fastqc: Este comando executa a ferramenta FastQC, que avalia a qualidade das sequências de DNA ou RNA em arquivos FASTQ. O FastQC gera um relatório detalhado sobre a qualidade das leituras, incluindo a análise de pontos como distribuição de qualidade de bases, presença de adaptadores e contaminação, e distribuição do comprimento das leituras.
SRRXXXXXXX.fastq: Este é o arquivo de entrada contendo as sequências FASTQ (geralmente obtidas a partir de uma sequenciação de RNA-seq ou DNA-seq). O nome do arquivo deve ser substituído pelo arquivo específico que você está analisando.
2. Limpeza e corte de sequências de baixa qualidade com Trim Galore
bash
Copiar código
trim_galore --fastqc -q 25 --trim-n --max_n 0 -j 1 --length 18 --dont_gzip SRRXXXXXXX.fastq
Comentário sobre cada parâmetro:

trim_galore: Este é o comando que executa a ferramenta Trim Galore, que é utilizada para cortar as sequências de baixa qualidade em arquivos FASTQ. Ela combina as funcionalidades de corte de adaptadores (como o Cutadapt) com a avaliação da qualidade das sequências, garantindo que as leituras que são descartadas ou cortadas sejam de qualidade mais baixa.

--fastqc: Esta opção instrui o Trim Galore a executar automaticamente a análise de qualidade com o FastQC após o corte das sequências. Isso gera um relatório de qualidade para as sequências pós-processamento.

-q 25: Define o limite de qualidade para o corte das bases de baixa qualidade. Neste caso, Trim Galore cortará todas as bases no final de cada leitura que tiverem uma pontuação de qualidade menor do que 25 (em uma escala de 0-40, sendo que valores mais altos indicam maior qualidade).

--trim-n: Com essa opção, qualquer base "N" (que indica uma base de qualidade indefinida ou não identificada) será removida da leitura. Isso é importante para garantir que sequências com bases indeterminadas não sejam analisadas.

--max_n 0: Esta opção impede que as leituras que contêm mais de zero bases "N" sejam mantidas. Se uma leitura tiver qualquer quantidade de "N", ela será descartada. Isso ajuda a manter a integridade dos dados.

-j 1: Esse parâmetro define o número de threads (núcleos de processamento) a serem usados. Neste caso, está configurado para usar apenas 1 thread. Aumentar esse número pode acelerar o processo se você tiver múltiplos núcleos disponíveis.

--length 18: Define o comprimento mínimo para as leituras após o corte. Se, após o processo de corte, uma leitura for menor que 18 bases, ela será descartada. Isso garante que apenas leituras de comprimento significativo sejam mantidas para a análise.

--dont_gzip: Essa opção impede que o arquivo de saída seja compactado no formato gzip. Ou seja, o arquivo resultante será mantido no formato FASTQ não comprimido. Se você preferir que os arquivos sejam comprimidos, você pode remover esta opção.

SRRXXXXXXX.fastq: Este é o arquivo de entrada que será limpo e cortado. Assim como no primeiro comando, o nome do arquivo deve ser substituído pelo arquivo real que está sendo processado.

