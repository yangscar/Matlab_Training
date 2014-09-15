function gui_demo

main=figure('menubar','none','numberTitle','off',...
    'name','GUI Demo','position',[200,200,800,600]);
set(main,'defaultuicontrolfontsize',10);
btn.choose_path=uicontrol('position',[20 550 70 30],'string','Choose path');
dir_name_box=uicontrol('style','edit','position',[100 550 220 25],'horizontal','left','string','');
file_list_box=uicontrol('style','listbox','position',[20 120 300 400], 'string','','parent',main);
btn.choose_file=uicontrol('position',[20 50 70 30],'string','Choose file');
to_parse_file_list_box=uicontrol('style','listbox','position',[400 120 300 400], 'string','','parent',main);
set(btn.choose_path,'callback',{@choose_path,dir_name_box,file_list_box});
set(file_list_box,'callback',{@add_one_item,file_list_box,to_parse_file_list_box});
set(btn.choose_file,'callback',{@choose_file,to_parse_file_list_box});

end

function choose_path(~,~,dir_name_box,file_list_box)
str=uigetdir(pwd);
if str
    set(dir_name_box,'string',str);
    filelist=dir(strcat(str,'/*.m'));
    set(file_list_box,'string',{filelist.name});
end

end

function add_one_item(~,~,file_list_box,to_parse_file_list_box)
str = get(file_list_box,'string');
value=get(file_list_box,'value');
newstr = str{value};
set(to_parse_file_list_box,'string',newstr);

end

function choose_file(~,~,dir_name_box)
[FileName, PathName] = uigetfile('*.m','Get file Demo','Multiselect','on');

set(dir_name_box,'string',FileName);
end















