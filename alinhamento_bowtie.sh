# Construção do índice de alinhamento com Bowtie
bowtie-build reference.fasta reference_index

# Alinhamento das sequências contra a referência de Wolbachia
bowtie -f -S -a -v 0 -p 3 -t reference_index sample.fasta > sample.sam 2> sample_bowtie.log
bowtie-build: Este comando é usado para construir um índice de referência para o alinhamento de sequências com o Bowtie. O índice é essencial para o alinhamento rápido das leituras sequenciadas contra a sequência de referência.

reference.fasta: Este é o arquivo de entrada contendo a sequência de referência em formato FASTA (geralmente o genoma de uma bactéria como Wolbachia no caso do seu exemplo). O Bowtie usará essa sequência de referência para construir um índice eficiente de pesquisa.

reference_index: Este é o prefixo para o índice de referência gerado. O Bowtie criará um conjunto de arquivos com esse nome (por exemplo, reference_index.1.ebwt, reference_index.2.ebwt, etc.), que será utilizado nos alinhamentos subsequentes. O nome do índice é atribuído pelo usuário e pode ser qualquer nome significativo.

2. Alinhamento das sequências contra a referência de Wolbachia
bash
Copiar código
bowtie -f -S -a -v 0 -p 3 -t reference_index sample.fasta > sample.sam 2> sample_bowtie.log
Comentário sobre cada parâmetro:

bowtie: Este comando executa o alinhamento das sequências de leitura contra a referência utilizando o programa Bowtie, que é uma ferramenta eficiente para alinhamento de sequências de curto comprimento.

-f: Este parâmetro indica que o arquivo de entrada (sample.fasta) está no formato FASTA. Caso as sequências estivessem em formato FASTQ, seria utilizado o parâmetro -q.

-S: Este parâmetro especifica que a saída será gerada no formato SAM (Sequence Alignment/Map), que é um formato padrão para armazenar os resultados de alinhamentos.

-a: A opção -a instrui o Bowtie a reportar todas as possíveis localizações para cada leitura, ao invés de apenas o melhor alinhamento. Isso é útil quando uma leitura pode alinhar em várias regiões do genoma ou quando há múltiplas cópias de uma sequência no genoma de referência.

-v 0: O parâmetro -v define o número máximo de erros (mismatches) permitidos durante o alinhamento. O valor 0 significa que nenhum erro será tolerado, ou seja, o Bowtie tentará alinhar as leituras de forma exata com a referência (sem mismatches).

-p 3: Este parâmetro define o número de threads (núcleos de CPU) a serem usados no alinhamento. Neste caso, -p 3 significa que o Bowtie usará 3 threads para realizar o alinhamento, o que pode acelerar o processo se houver múltiplos núcleos disponíveis.

-t: A opção -t ativa a exibição de informações sobre o tempo de execução durante o alinhamento. Isso pode ser útil para monitorar o progresso do processo e estimar o tempo total de execução.

reference_index: Este é o índice de referência previamente construído com o comando bowtie-build. O Bowtie usará esse índice para realizar o alinhamento das leituras contra a referência (no caso, o genoma de Wolbachia).

sample.fasta: Este é o arquivo de entrada contendo as sequências de leitura a serem alinhadas contra a referência. Essas sequências podem ser oriundas de um experimento de sequenciamento de RNA ou DNA (como no caso de bibliotecas de pequenos RNAs).

> sample.sam: O operador > redireciona a saída do comando para o arquivo sample.sam, que conterá os resultados do alinhamento no formato SAM. Esse arquivo inclui informações sobre a localização das leituras no genoma de referência, bem como dados sobre os alinhamentos.

2> sample_bowtie.log: O operador 2> redireciona a saída de erro (stderr) do comando para o arquivo sample_bowtie.log. Este arquivo conterá informações sobre quaisquer erros ou avisos gerados durante o alinhamento, o que pode ser útil para depuração ou análise de problemas durante o processo de alinhamento
