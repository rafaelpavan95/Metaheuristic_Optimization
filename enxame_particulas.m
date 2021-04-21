clear all
clc
close all

%%%%%%%%%%%%%%%%%%%%%%%%%%%% Rafael Pavan %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%% Otimização por Enxame de Partículas%%%%%%%%%%%%%%%%%%


% Seminário


% 4 possibilidades de escolha: 3, 13, 19, 40

caso = 19;

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

n_part=40;

v_atenuacao = 0.1;

max_iter = 100;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%% Enxame de Partículas %%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    
% Cria Enxame e Variáveis para Avaliação

z = zeros(n_part,1);

pena_upper = zeros(n_part,1);

pena_lower = zeros(n_part,1);

pena_igualdade = zeros(n_part,1);

avaliacao = zeros(n_part,1);

z_memoria = zeros(n_part,1);

matriz_enxame = cria_enxame(n_part, pg_max, pg_min)

matriz_velocidade_inicial = cria_enxame(n_part, pg_max, pg_min) * v_atenuacao

memoria = zeros(size(matriz_enxame));

iteracao = 1;

custo = [];

penalizacao_demanda = [];

penalizacao_gerador = [];


for iteracao=1:max_iter

    
    for i=1:n_part
        
        % Calcula Função Objetivo Para o Enxame Inicial
        
        z(i) = funcao_objetivo(a_k, b_k, c_k, e_k, f_k, pg_min, matriz_enxame(i,:));
        
        % Calcula Penalização de Igualdade Para o Enxame Inicial

        pena_igualdade(i) = penalizacao_igualdade(demanda, matriz_enxame(i,:));
        
        % Calcula Penalização de Limite Inferior Para o Enxame Inicial
                
        pena_lower(i) = penalizacao_minimo_gerador(pg_min, matriz_enxame(i,:));

        % Calcula Penalização de Limite Superior Para o Enxame Inicial
        
        pena_upper(i) = penalizacao_maximo_gerador(pg_max, matriz_enxame(i,:));
    
        
    end
    
    peso_custo = 1;
    peso_gerador = 1;
    peso_igualdade = 1000;
    avaliacao = fitness(z,pena_lower,pena_upper,pena_igualdade,peso_custo,peso_gerador,peso_gerador,peso_igualdade);
    
    % rotina para diagnosticar gbest
    
    gbest = pega_gbest(matriz_enxame, avaliacao, n_part);
    
    % rotina para atualizar memoria
    
    if iteracao == 1
        
       memoria=matriz_enxame;
        
       z_memoria=avaliacao;
    
    else
        
         for i=1:n_part
        
            % Calcula Função Objetivo Para o Enxame Inicial

            z_m(i) = funcao_objetivo(a_k, b_k, c_k, e_k, f_k, pg_min, memoria(i,:));

            % Calcula Penalização de Igualdade Para o Enxame Inicial

            pena_igualdade_m(i) = penalizacao_igualdade(demanda, memoria(i,:));

            % Calcula Penalização de Limite Inferior Para o Enxame Inicial

            pena_lower_m(i)= penalizacao_minimo_gerador(pg_min, memoria(i,:));

            % Calcula Penalização de Limite Superior Para o Enxame Inicial

            pena_upper_m(i) = penalizacao_maximo_gerador(pg_max, memoria(i,:));

            
         end
         
         
       avaliacao_m = fitness(z_m,pena_lower_m,pena_upper_m,pena_igualdade_m,peso_custo,peso_gerador,peso_gerador,peso_igualdade);
      
       memoria = atualiza_memoria(matriz_enxame, memoria, avaliacao, avaliacao_m, n_part);
    
    end
    
    % calcula peso de inercia
    
    inercia_linear = peso_inercia_linear(iteracao, 0.9, 0.4, max_iter);
    
    %inercia_linear = peso_inercia_SA(iteracao, 0.9, 04., max_iter);
    
    % equação para atualizar velocidade
    
    c1=1.2;
    
    c2=1.2;
    
    r1 = zeros(n_part, length(pg_max));

    r2 = zeros(n_part, length(pg_max));
    
    for var=1:length(pg_min)
    
        r1(:,var) = rand(n_part,1);

        r2(:,var) = rand(n_part,1);
        
    end
    
    
    velocidade = calcula_velocidade(inercia_linear, gbest, memoria, matriz_enxame, matriz_velocidade_inicial, c1, c2, r1, r2, 0,inercia_linear);
    
    matriz_velocidade_inicial = velocidade;
      
    % equação para atualizar enxame
    
    matriz_enxame = calcula_posicoes(matriz_enxame, velocidade)
    
    for k=1:length(pg_max)
        
            for o=1:n_part

                if matriz_enxame(o,k) < pg_min(k)

                    matriz_enxame(o,k) = pg_min(k);

                end


                if matriz_enxame(o,k) > pg_max(k)

                    matriz_enxame(o,k) = pg_max(k);

                end

            end
    end

    for k=1:length(pg_max)
        
            for o=1:n_part

                if velocidade(o,k) < -1*pg_max(k)

                    velocidade(o,k) = -1*pg_max(k);

                end


                if velocidade(o,k) > 1*pg_max(k)

                    velocidade(o,k) = 1*pg_max(k);

                end

            end
    end
    
    
    custo = [custo, funcao_objetivo(a_k, b_k, c_k, e_k, f_k, pg_min, gbest(1,:))]
    
    penalizacao_demanda = [penalizacao_demanda, penalizacao_igualdade(demanda, gbest(1,:))]
    
    penalizacao_gerador = [penalizacao_gerador, penalizacao_minimo_gerador(pg_min, gbest(1,:)) + penalizacao_maximo_gerador(pg_max, gbest(1,:))];
    
        
    iteracao=iteracao+1
    pena_igualdade
end


figure() 
plot(custo)
title('Custo de Geração ($)')
xlabel('Iteração')
ylabel('Custo ($)')
grid on
grid minor

figure() 
plot(penalizacao_gerador)
title('Penalização dos Limites do Gerador')
xlabel('Iteração')
ylabel('Penalização dos Geradores')
grid on
grid minor

figure() 
plot(penalizacao_demanda)
title('Penalização do Atendimento de Demanda')
xlabel('Iteração')
ylabel('Penalização da Demanda')
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
    
    if sum(pgerada) < pdemanda
        
        p = (pdemanda-sum(pgerada))^2;
    
    else
        
        p = 0;
        
    end
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


function lower = penalizacao_minimo_gerador(pgmin,pgerada)

    lower = sum(pgmin(pgerada<pgmin) - pgerada(pgerada<pgmin));
    
end

function upper = penalizacao_maximo_gerador(pgmax,pgerada)

    upper = sum(pgerada(pgerada>pgmax) - pgmax(pgerada>pgmax));
    
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


function enxame = cria_enxame(n_p, pgmax, pgmin)

    enxame = zeros(n_p, length(pgmax))
    
    for gerador=1:length(pgmax)
        
        enxame(1:n_p,gerador) = (pgmax(gerador)-pgmin(gerador)).*rand(n_p,1) + pgmin(gerador);
                       
    end
    
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function j = fitness(custo,menor,maior,igualdade,gama, alfa,beta,theta)

    j = gama*custo + alfa*menor + beta*maior + theta*igualdade;

end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function melhor = pega_gbest(matriz, avaliacao, np)

    [v p] = min(avaliacao);

    vbest = v;

    for i=1:np

        melhor(i,:) = matriz(p,:);

    end

end



function melhores = atualiza_memoria(matrix, mem__, avali, z_mem, np)

    for i=1:np
            
          if avali(i) <  z_mem(i)

                mem__(i,:) = matrix(i,:);

           end


    end
     
    melhores=mem__;

end


function inercia_linear = peso_inercia_linear(it, max, min, maxit)

    inercia_linear = max - ((it*(max-min))/maxit);
     
end

function inercia_SA = peso_inercia_SA(it, max, min, maxit)

    inercia_SA = min - ((max-min))*0.95^(it-1);
     
end


function vel = calcula_velocidade(inercia, best_, memoria_, enxame_, v_ant, c1_,c2_,r1_,r2_,constricao,k_)

    if constricao ==0
        vel = inercia.*v_ant + c1_.*r1_.*(best_-enxame_) + c2_.*r2_.*(memoria_-enxame_);
    
    else
        
        x = 2*k_/(abs(2-4.1-sqrt(4.1*(4.1-4))));
        
        vel = x.*(v_ant + 2.05.*(best_-enxame_) + 2.05.*(memoria_-enxame_));
    
    end
     
end

function posi = calcula_posicoes(enx_, vel_)
    
    posi = enx_+vel_;
     
end



