function visuMHI(rep,seuil)
	% exemple visuMHI('sequence/action',30)	
	
	% format des frames de la séquence
	ext = '*.png';
	chemin = fullfile(rep,ext);
	list = dir(chemin);

	% initialisation à partir de la première frame
	Img1 = rgb2gray (imread(fullfile(rep, list(1).name)));
	[h w]=size(Img1);
	MHI=zeros(h,w);
	
	tau=numel(list); % la variable tau est donnée par le nombre de frames
	MHIprec=zeros(h,w);
	% ballayage de l'ensemble des frames
	for n = 2:numel(list)
		Img=rgb2gray (imread(fullfile(rep, list(n).name))) ;	%n ième image de la séquence
		imgprec=rgb2gray (imread(fullfile(rep, list(n-1).name)));
		Bt=imabsdiff(Img,imgprec)>seuil;
    
    for l=1:h
      for c=1:w
        if(Bt(l,c)==1)
          MHI(l,c)=tau;
        elseif(MHI(l,c)!=0 )
          MHI(l,c)=MHI(l,c)-1;
        else
           MHI(l,c)=0;
        end
          
        
      end
    end
	
	end
	imshow(MHI);
	

	

