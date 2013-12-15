function varargout = nngui(varargin)
% NNGUI MATLAB code for nngui.fig
%      NNGUI, by itself, creates a new NNGUI or raises the existing
%      singleton*.
%
%      H = NNGUI returns the handle to a new NNGUI or the handle to
%      the existing singleton*.
%
%      NNGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NNGUI.M with the given input arguments.
%
%      NNGUI('Property','Value',...) creates a new NNGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before nngui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to nngui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES
%
%   Copyright 2013-2013 Number 16 Studio
%   http://num16.com

% Edit the above text to modify the response to help nngui

% Last Modified by GUIDE v2.5 09-Jan-2013 21:25:29

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @nngui_OpeningFcn, ...
                   'gui_OutputFcn',  @nngui_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before nngui is made visible.
function nngui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to nngui (see VARARGIN)

% Choose default command line output for nngui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes nngui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = nngui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename, pathname] = uigetfile({'*.xls', 'Microsoft Excel files (*.xls)';}, 'Please select input X');
if(pathname ~= 0)
    path = [pathname, filename];
    set(handles.edit1, 'String', path); 
end

function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename, pathname] = uiputfile({'*.xls', 'Microsoft Excel files (*.xls)';}, 'Please select output weight');
if(pathname ~= 0)
    path = [pathname, filename];
    set(handles.edit2, 'String', path);
end

function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename, pathname] = uigetfile({'*.xls', 'Microsoft Excel files (*.xls)';}, 'Please select input X');
if(pathname ~= 0)
    path = [pathname, filename];
    set(handles.edit5, 'String', path);
end

function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename, pathname] = uigetfile({'*.xls', 'Microsoft Excel files (*.xls)';}, 'Please select input weight');
if(pathname ~= 0)
    path = [pathname, filename];
    set(handles.edit6, 'String', path);
end
% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
try
    path = get(handles.edit1, 'String');
    x = xlsread(path);
    [rx, cx] = size(x);
    if(rx <= 0 || cx <= 0)
        warndlg('Invalid input X.');
        return;
    end
catch s
    display(s);
    warndlg('Invalid input X.');
    return;
end
try
    path = get(handles.edit12, 'String');
    y = xlsread(path);
    [ry, cy] = size(y);
    if(ry <= 0 || cy <= 0 || rx ~= ry)
        warndlg('Invalid input Y.');
        return;
    end
catch s
    display(s);
    warndlg('Invalid input Y.');
    return;
end

try 
    savepath = get(handles.edit2, 'String'); 
catch s
    display(s);
    warndlg('Invalid output weight path.');
    return;
end

try
    epsilon = str2double(get(handles.edit9, 'String'));
    if( (~isscalar(epsilon)) || (strcmp(class(epsilon),  'double') ~= 1) ...
        || (epsilon <= 0))
        warndlg('Error in epsilon.');
        return;
    end
catch s
    display(s);
    warndlg('Error in epsilon.');
end

try 
    alpha = str2double(get(handles.edit10, 'String'));
    if((~isscalar(epsilon)) || (strcmp(class(alpha), 'double') ~= 1) ...
            || (alpha <= epsilon * sqrt(ry - 1)))
        warndlg('Error in alpha.');
        return;
    end
catch s
    display(s);
    warndlg('Error in alpha.');
    return;
end

try c = str2double(get(handles.edit11, 'String'));
    if((~isscalar(c)) || (strcmp(class(c), 'double') ~= 1) || ...
            (c == 0))
        warndlg('Error in c.');
        return;
    end
catch s
    display(s);
    warndlg('Error in c.');
    return;
end

try 
    [wi, wo] = neural_train(x, y, [], 0.1, 0.3, 1);
catch s
    display(s);
    warndlg('Error in training.');
    return;
end

try
%     wocell = cell(size(wo));
%     [rwo, cwo] = size(wo);
%     for i = 1 : rwo
%         for j = 1 : cwo
%             wocell(i, j) = {num2str(wo(i, j))};
%         end
%     end
    
    wocell = cellfun(@num2str, num2cell(wo), 'UniformOutput', false);
    xlswrite(savepath, wi, 1);
    xlswrite(savepath, wocell, 2);
    xlswrite('c.xls', [1, 2], 1);
    xlswrite(savepath, epsilon, 3);
    xlswrite(savepath,c, 4);
catch s
    display(s);
    warndlg('Error in writing weight output.');
    return;
end
msgbox('Trained successfully.');

function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename, pathname] = uiputfile({'*.xls', 'Microsoft Excel files (*.xls)';}, 'Please select output Y');
if(pathname ~= 0)
    path = [pathname, filename];
    set(handles.edit7, 'String', path);
end

% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

try
    path = get(handles.edit5, 'String');
    x = xlsread(path);
    [rx, cx] = size(x);
    if(rx <= 0 || cx <= 0)
        warndlg('Invalid input X.');
        return;
    end
catch s
    display(s);
    warndlg('Invalid input X.');
    return;
end

try
    path = get(handles.edit6, 'String');
    wi = xlsread(path, 1);
    [~, wo] = xlsread(path, 2);
    epsilon = xlsread(path, 3);
    c = xlsread(path, 4);
catch s
    display(s);
    return;
end

try
    savepath = get(handles.edit7, 'String');
catch s
    display(s);
    warndlg('Invalid ouput Y.');
    return;
end

try
    y = neural_sim(x, wi, wo, epsilon, c); 
catch s
    display(s);
    warndlg('Error in simulation');
    return;
end

try
    xlswrite(savepath, y, 1);
catch s
    display(s);
    warndlg('Error in writing.');
    return;
end
msgbox('Simulated successfully.');




function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename, pathname] = uigetfile({'*.xls', 'Microsoft Excel files (*.xls)';}, 'Please select input Y');
if(pathname ~= 0)
    path = [pathname, filename];
    set(handles.edit12, 'String', path); 
end
