function varargout = irisClassification(varargin)
% IRISCLASSIFICATION MATLAB code for irisClassification.fig
%      IRISCLASSIFICATION, by itself, creates a new IRISCLASSIFICATION or raises the existing
%      singleton*.
%
%      H = IRISCLASSIFICATION returns the handle to a new IRISCLASSIFICATION or the handle to
%      the existing singleton*.
%
%      IRISCLASSIFICATION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in IRISCLASSIFICATION.M with the given input arguments.
%
%      IRISCLASSIFICATION('Property','Value',...) creates a new IRISCLASSIFICATION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before irisClassification_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to irisClassification_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help irisClassification

% Last Modified by GUIDE v2.5 16-Mar-2023 11:50:15

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @irisClassification_OpeningFcn, ...
                   'gui_OutputFcn',  @irisClassification_OutputFcn, ...
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



% --- Executes just before irisClassification is made visible.
function irisClassification_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to irisClassification (see VARARGIN)

% Choose default command line output for irisClassification
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes irisClassification wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = irisClassification_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Show.
function Show_Callback(hObject, eventdata, handles)
% hObject    handle to Show (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% memanggil 2 - 5 colom aja
opts = detectImportOptions('iris.csv');
opts.SelectedVariableNames = (2 : 5);

% memanggil dan membaca matriks
data = readmatrix('iris.csv', opts); 
set(handles.table, 'data', data); % set(mauDitaruhDimana, "tipeData", var_matrix)




function SL_Callback(hObject, eventdata, handles)
% hObject    handle to SL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SL as text
%        str2double(get(hObject,'String')) returns contents of SL as a double


% --- Executes during object creation, after setting all properties.
function SL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SW_Callback(hObject, eventdata, handles)
% hObject    handle to SW (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SW as text
%        str2double(get(hObject,'String')) returns contents of SW as a double


% --- Executes during object creation, after setting all properties.
function SW_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SW (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function PL_Callback(hObject, eventdata, handles)
% hObject    handle to PL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PL as text
%        str2double(get(hObject,'String')) returns contents of PL as a double


% --- Executes during object creation, after setting all properties.
function PL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function PW_Callback(hObject, eventdata, handles)
% hObject    handle to PW (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PW as text
%        str2double(get(hObject,'String')) returns contents of PW as a double


% --- Executes during object creation, after setting all properties.
function PW_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PW (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in class.
function class_Callback(hObject, eventdata, handles)
% hObject    handle to class (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% mengambil data dari inputan
SL = str2double(get(handles.SL, 'string'));
SW = str2double(get(handles.SW, 'string'));
PL = str2double(get(handles.PL, 'string'));
PW = str2double(get(handles.PW, 'string'));

% memasukkan inputan ke dalam variabel
sample = [SL SW PL PW];

% Training --------------------
% memanggil 2 - 5 colom aja
opts = detectImportOptions('iris.csv');
opts.SelectedVariableNames = (2 : 5);

% memanggil dan membaca matriks
training = readmatrix('iris.csv', opts); 


% Group -------------------
% memanggil dan menyimpan di colom 6
opts = detectImportOptions('iris.csv');
opts.SelectedVariableNames = (6);

% memanggil dan membaca matriks
group = readmatrix('iris.csv', opts); 

% meng-klaz
class = fitcknn(training, group, 'NumNeighbor', 3);

classificationResult = predict(class, sample);


% set(mau di taruh dimana, tipedatanya apa, apa yang di taruh)
set(handles.result, 'string', classificationResult) ;


%-------------------------------------------------------------------

gambar = imread('Iris-virginica.jpg');


imshow(gambar, 'Parent', handles.axes1);
    















