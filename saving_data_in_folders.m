%% THIS IS WORKING FINE.

clear all; clc;


for i = 1:5    
    
    x = rand(10,1) ; 
    y = 3*x + i^2 ;
    plot(x,y,"bo"); hold on;
    a = plot(x,y) ; hold off;
    
    dest_dir = "D:\folderpath\figure" + i ;
    mkdir(dest_dir);
  
    filename = "plot"+string(i)+".png";
    
    % saveas(fig,filename)
    fig_file = fullfile(dest_dir , filename)
    
    %saveas(a, filename)  %save the file there directory
    saveas( a, fig_file)
    result = "results"+i;
    
    matfile = fullfile(dest_dir, result);
    save(matfile);
    %save(result)
end