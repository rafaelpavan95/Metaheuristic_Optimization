clear all
clc
close all

%%%%%%%%%%%%%%%%%%%%%%%%%%%% Rafael Pavan %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%% Algoritmo Genético %%%%%%%%%%%%%%%%%%%%%%%%%%%%


% 4 possibilidades de escolha: 3, 13, 19, 40. Escolha uma e salve em 'caso'
% antes de rodar o algoritmo.

caso = 3;

if caso == 3

    % Dados em MW

    pg_max = [600, 200, 400];

    pg_min = [100, 50, 100];

    demanda = 850;

    a_k = [0.001562, 0.00482,0.00194];

    b_k = [7.92, 7.97, 7.85];

    c_k = [561, 78, 310];

    e_k = [300, 150, 200];

    f_k = [0.0315, 0.063, 0.042];

end



if caso == 13
    
    pg_max = [680, 360, 360, 180, 180, 180, 180, 180, 180, 120, 120, 120, 120];

    pg_min = [0, 0, 0, 60, 60, 60, 60, 60, 60, 40, 40, 55, 55];

    demanda = 2520;

    a_k = [0.00028, 0.00056, 0.00056, 0.00324, 0.00324, 0.00324, 0.00324, 0.00324, 0.00324, 0.00284, 0.00284, 0.00284, 0.00284];

    b_k = [8.1, 8.1, 8.1, 7.74, 7.74, 7.74, 7.74, 7.74, 7.74, 8.6, 8.6, 8.6, 8.6];

    c_k = [550, 309, 307, 240, 240, 240, 240, 240, 240, 126, 126, 126, 126];

    e_k = [300, 200, 200, 150, 150, 150, 150, 150, 150, 100, 100, 100, 100];

    f_k = [0.035, 0.042, 0.042, 0.063, 0.063, 0.063, 0.063, 0.063, 0.063, 0.084, 0.084, 0.084, 0.084];
 

end

if caso == 19
    
    pg_min = [100, 120, 100, 8, 50, 150, 50, 100, 200, 15, 50, 25, 50, 0, 20, 15, 15, 50, 400];
    
    pg_max = [300, 438, 250, 25, 63.75, 300, 63.75, 500, 600, 40, 150, 75, 63.75, 95, 220, 80, 80, 230, 500];
    
    a_k = [0.0097, 0.0055, 0.0055, 0.0025, 0, 0.008, 0, 0.0075, 0.0085, 0.009, 0.0045, 0.0025, 0, 0.0045, 0.0065, 0.0045, 0.0025, 0.0045, 0.008];
    
    b_k = [6.8, 4, 4, 0.85, 5.28, 3.5, 5.439, 6, 6, 5.2, 1.6, 0.85, 2.55, 1.6, 4.7, 1.4, 0.85, 1.6, 5.5];
    
    c_k = [119, 90, 45, 0, 0.891, 110, 21, 88, 55, 90, 65, 78, 49, 85, 80, 90, 10, 25, 90];
    
    e_k = [90, 79, 0, 0, 0, 0, 0, 0.52, 0, 0, 0, 0.02, 0, 0, 92, 0, 0, 0, 0]; 
    
    f_k = [0.72, 0.05, 0, 0, 0, 0, 0, 0.52, 0, 0, 0, 0.02, 0, 0, 0.75, 0, 0, 0, 0]; 
    
    demanda = 2908;

end

if caso == 40
    
   pg_min = [36, 36,	60,	80,	47,	68,	110,	135,	135,	130,	94,	94,	125,	125, 125,	125,	220,	220,	242, 242,	254,	254,	254,	254, 254,	254,	10,	10,	10,	47,	60 ,60, 60, 90, 90, 90, 25, 25, 25, 242];
  
    pg_max = [114,	114,	120,	190,	97,	140,	300,	300,	300,	300,	375,	375,	500, 500,	500,	500,	500,	500,	550,	550,	550,	550,	550, 550,	550,	550,	150,	150,	150,	97,	190 ,190, 190, 200, 200, 200, 110, 110, 110, 550];
    
    c_k = [94.705,	94.705,	309.54,	369.03,	148.89,	222.33,	287.71,	391.98,	455.76,	722.82,	635.2,	654.69,	913.4,	1760.4,	1760.4,	1760.4,	647.85,	649.69,	647.83,	647.81,	785.96,	785.96,	794.53,	794.53,	801.32,	801.32,	1055.1,	1055.1,	1055.1,	148.89,	222.92, 222.920, 222.920, 107.870, 116.580, 116.580, 307.450, 307.450, 307.450, 647.830];
    
    b_k = [6.73,	6.73,	7.07,	8.18,	5.35,	8.05,	8.03,	6.99,	6.6,	12.9,	12.9,	12.8,	12.5,	8.84,	8.84,	8.84,	7.97,	7.95,	7.97,	7.97,	6.63,	6.63,	6.66,	6.66,	7.1,	7.1,	3.33,	3.33,	3.33,	5.35,	6.43, 6.43, 6.43, 8.95, 8.62, 8.62, 5.88, 5.88, 5.88, 7.97];
    
    a_k = [0.0069,	0.0069,	0.02028,	0.00942,	0.0114,	0.01142,	0.00357,	0.00492,	0.00573,	0.00605,	0.00515,	0.00569,	0.00421,	0.00752,	0.00752,	0.00752,	0.00313,	0.00313,	0.00313,	0.00313,	0.00298,	0.00298,	0.00284,	0.00284,	0.00277,	0.00277,	0.52124,	0.52124,	0.52124,	0.0114,	0.0016, 0.00160, 0.00160, 0.00010, 0.00010, 0.00010, 0.01610, 0.01610, 0.01610, 0.00313];
    
    e_k = [100, 100,	100,	150,	120,	100,	200,	200,	200,	200,	200,	200,	300,	300,	300,	300, 300,	300,	300,	300,	300,	300,	300,	300,	300,	300,	120,	120,	120,	120,	150, 150, 150, 200, 200, 200, 80, 80, 80, 300];                         
    
    f_k = [0.084, 0.084, 0.084, 0.063, 0.077, 0.084, 0.042, 0.042, 0.042, 0.042, 0.042, 0.042, 0.035, 0.035, 0.035, 0.035, 0.035, 0.035, 0.035, 0.035, 0.035, 0.035, 0.035, 0.035, 0.035, 0.035, 0.077, 0.077, 0.077, 0.077, 0.063, 0.063, 0.063, 0.042, 0.042, 0.042, 0.098, 0.098, 0.098, 0.035];
    
    demanda = 10500;
    
end

fit = [];

tamanho = caso;

n_bits = 16;

n_individuos = 50;

backup = [];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%% Algoritmo Genético %%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    
populacao_binaria_init = inicaliza_populacao_binaria(tamanho, n_bits, n_individuos);

geracoes = 1;

max_ger = 100;

fit=[];

while geracoes < max_ger
    
    if geracoes == 1
        
        % Minha ideia foi inicializar os geradores na primeira iteração com
        % potência próxima dos limites superiores, a fim de encontrar
        % indivíduos que atendam a demanda. Nas iterações seguintes, o
        % algoritmo foca em otimizar os custos, uma vez que a geração já
        % supera a demanda. Assim, inicializei os geradores entre
        % 0.85*pg_max e pg_max.
        
        populacao_decimal = converte_para_decimal(tamanho, n_individuos,populacao_binaria_init,n_bits,pg_max,pg_max*0.85);
    
    end
    
    if geracoes>1
    
        populacao_decimal = converte_para_decimal(tamanho, n_individuos,populacao_binaria,n_bits,pg_max,pg_min);

    end
    
       
    
    for i=1:n_individuos

            % Calcula Função Objetivo Para o Enxame Inicial

            z(i) = funcao_objetivo(a_k, b_k, c_k, e_k, f_k, pg_min, populacao_decimal(i,:));

            % Calcula Penalização de Igualdade Para o Enxame Inicial

            pena_igualdade(i) = penalizacao_igualdade(demanda, populacao_decimal(i,:));

            % Calcula Penalização de Limite Inferior Para o Enxame Inicial

            pena_lower(i) = penalizacao_minimo_gerador(pg_min, populacao_decimal(i,:));

            % Calcula Penalização de Limite Superior Para o Enxame Inicial

            pena_upper(i) = penalizacao_maximo_gerador(pg_max, populacao_decimal(i,:));


        end

    peso_custo = 1;

    peso_gerador = 1;

    peso_igualdade = 1000;

    avaliacao = fitness(z,pena_lower,pena_upper,pena_igualdade,peso_custo,peso_gerador,peso_gerador,peso_igualdade);

    pop_binaria = converte_para_binario(tamanho, n_individuos,populacao_decimal, n_bits,pg_max,pg_min) ;


    matriz_auxiliar = [pop_binaria (transpose(1./avaliacao))];

    matriz_de_filhos = zeros(0, n_bits*tamanho);
    
    % cruzamento
    
    matriz_de_filhos = cruzamento(matriz_de_filhos, avaliacao, matriz_auxiliar, n_bits, tamanho, n_individuos, pop_binaria);

    % elitismo

    matriz_de_filhos = elitismo(matriz_auxiliar, matriz_de_filhos, n_bits, tamanho);

    % mutação

    matriz_de_filhos = mutacao(matriz_de_filhos);
    
    if geracoes == round(max_ger/2)
        
        populacao_binaria_intermediaria = populacao_binaria; % salva para plotar gráfico no caso de 3 geradores
        
    end
        
    populacao_binaria=matriz_de_filhos;
     
    [p,v] = min(avaliacao);
    
    fit = [fit, p];
    
    backup(:,:,geracoes)=populacao_binaria;
    
    geracoes=geracoes+1
end


display('Melhor Solução: ')

populacao_decimal(v,:)

display('Potência Gerada [MW]: ')

sum(populacao_decimal(v,:))





if caso == 3
    
    figure
    heatmap(populacao_binaria_init)
    title('População Inicial')
    xlabel('Alelos')
    ylabel('Indivíduos')
    

    figure
    heatmap(populacao_binaria_intermediaria)
    title('População Intermediária')
    xlabel('Alelos')
    ylabel('Indivíduos')
    
    
    figure
    heatmap(populacao_binaria_intermediaria)
    title('População Final')
    xlabel('Alelos')
    ylabel('Indivíduos')
    
end

figure() 
plot(fit)
title('Custo de Geração ($)')
xlabel('Iteração')
ylabel('Custo ($)')
grid on
grid minor

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%% Funções Utilizadas %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    function f = funcao_objetivo(ak, bk, ck, ek, fk, pgmin, pgerada)

        f = sum(ak.*pgerada.^2 + bk.*pgerada + ck + abs(ek.*sin(fk.*(pgmin-pgerada))));

    end


    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


    function p = penalizacao_igualdade(pdemanda, pgerada)

        if pdemanda > sum(pgerada)
            
            p = (pdemanda-sum(pgerada))^2;
        else
            p=0;
            
        end

    end

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


    function lower = penalizacao_minimo_gerador(pgmin,pgerada)

        lower = sum(pgmin(pgerada<pgmin) - pgerada(pgerada<pgmin));

    end

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    function upper = penalizacao_maximo_gerador(pgmax,pgerada)

        upper = sum(pgerada(pgerada>pgmax) - pgmax(pgerada>pgmax));

    end

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    function pop_bin = inicaliza_populacao_binaria(tamanho_, n_bits_, n_individuos_)


        populacao_ = zeros(n_individuos_, n_bits_*tamanho_);

        for i=1:(n_individuos_)

            % gera vetor de binarios para cada individuo, com tamanho: nºbits*nºgeradores

            populacao_(i,:) = rand(n_bits_*tamanho_,1);

        end

        % se <0.5 = 0, caso contrario 1

        populacao_(populacao_<=0.5) = 0;

        populacao_(populacao_>0.5) = 1;

        pop_bin = populacao_;

    end


    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    function pop_dec = converte_para_decimal(tamanho_, n_individuos_,populacao_binaria_,n_bits_,pg_max_,pg_min_)

        populacao_decimal = zeros(n_individuos_,tamanho_);

        for j=1:tamanho_

            for i=1:n_individuos_

                ind_bin = populacao_binaria_(i,(1+(j*n_bits_)-n_bits_):(j*n_bits_));

                ind_dec = bin2dec(num2str(ind_bin));  % converte para inteiro equivalente

                populacao_decimal(i,j) = pg_min_(j)+(ind_dec)*(pg_max_(j)-pg_min_(j))/((2^(n_bits_))-1);  %converte inteiro equivalente para decimal

            end

        end

        pop_dec = populacao_decimal;

    end


    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    function j = fitness(custo,menor,maior,igualdade,gama, alfa,beta,theta)

        j = gama*custo + alfa*menor + beta*maior + theta*igualdade;

    end

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


    function pop_binn = converte_para_binario(tamanho_, n_individuos_,populacao_decimal_,n_bits_,pg_max_,pg_min_)

        populacao_binaria_ = zeros(n_individuos_,tamanho_*n_bits_);

        for p=1:tamanho_

            for o=1:n_individuos_

                ind_dec = populacao_decimal_(o,p);

                ind_int = ceil((ind_dec-pg_min_(p))*(2^(n_bits_)-1)/(pg_max_(p)-pg_min_(p)));  % converte para inteiro equivalente

                str_bin = dec2bin(ind_int,n_bits_);  % converte inteiro equivalente para strind de binario

                    for l=1:length(str_bin)

                        vetor_aux(l) = str2num(str_bin(l));

                    end

                populacao_binaria_(o,(1+(p*n_bits_-n_bits_)):p*n_bits_) = vetor_aux;

            end

        pop_binn = populacao_binaria_;

        end
    end

 function el = elitismo(matriz_auxiliar_,matriz_de_filhos_,n_bits_,tamanho_)

        primeiro = sortrows(matriz_auxiliar_,n_bits_*tamanho_+1,'descend');
        segundo = sortrows(matriz_auxiliar_,n_bits_*tamanho_+1,'descend');

        matriz_de_filhos_ = [matriz_de_filhos_; primeiro(1,1:n_bits_*tamanho_)];
        matriz_de_filhos_ = [matriz_de_filhos_; segundo(2,1:n_bits_*tamanho_)];

        el = matriz_de_filhos_;

 end
    

 function mut = mutacao(matriz_de_filhos_)
 
    [linhas,colunas] = size(matriz_de_filhos_);

    for linha=1:linhas

        for coluna=1:colunas

            if(rand(1,1)<0.003)

                if(matriz_de_filhos_(linha,coluna)==0)

                    matriz_de_filhos_(linha,coluna)=1;

                end

                if(matriz_de_filhos_(linha,coluna)==1)

                    matriz_de_filhos_(linha,coluna)=0;

                end

            end

        end

    end
    
    mut = matriz_de_filhos_;   
    
 end
 
 
 function cruz = cruzamento(matriz_de_filhos_, avaliacao_, matriz_auxiliar_, n_bits_, tamanho_, n_individuos_, pop_binaria_)
 

     for cruzamentos=1:(n_individuos_-2)/2

        %%%%%%%%% seleciona pais

        for pai=1:2

            individuo = 1;
            aleatorio = rand(1,1);
            soma_aleatoria = sum(1./avaliacao_)*aleatorio;
            soma = 0;

            while (soma < soma_aleatoria)

                soma = soma + matriz_auxiliar_(individuo, 1+tamanho_*n_bits_);

                individuo = individuo+1;

            end

            pais(pai,:) = pop_binaria_((individuo - 1),:);

        end

        corte = round(n_bits_*tamanho_*rand(1,1));

        filhos = pais;

        dna_pai = pais(1,corte+1:n_bits_*tamanho_);

        dna_mae = pais(2,corte+1:n_bits_*tamanho_);

        filhos(1,corte+1:n_bits_*tamanho_) = dna_mae;

        filhos(2,corte+1:n_bits_*tamanho_) = dna_pai;

        matriz_de_filhos_ = [matriz_de_filhos_; filhos];
        
     end
  
   cruz=matriz_de_filhos_;
             
 end