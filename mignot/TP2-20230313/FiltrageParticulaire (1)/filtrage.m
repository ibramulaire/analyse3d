function filtrage()
  tic
	Config = chargeConfiguration();
	Estimation = zeros(Config.nombre_de_frame,2) ; %15 ligne 2 colonne
	Particules = initialisation(Config);%15 ligne 3 colonne x y initialisé a la position de depart proba 1/nombre de particule 
	VT = chargeVeriteTerrain() ; %15 ligne 2 colonne position reel
	
	for frame=1:Config.nombre_de_frame
		I=chargeImage(Config,frame); % charge frame 1 puit 2 puit 3 .....
        ParticulesAv=Particules; %avant propagation
        
		Particules = propagation(Particules,Config,Estimation,frame) ;
      %  visuPropagation(ParticulesAv,Particules,Config,I,frame) ;
        
		Particules = ponderation(Particules,Config,I) ;
		[Estimation(frame,1) Estimation(frame,2)]=visuParticules(Particules,Config,I,frame);
		Particules = resampling(Particules,Config) ;
        
	end
  toc
	critere = evaluation(Config,Estimation,VT)

