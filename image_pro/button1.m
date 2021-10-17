function varargout = button1(varargin)
% BUTTON1 MATLAB code for button1.fig
%      BUTTON1, by itself, creates a new BUTTON1 or raises the existing
%      singleton*.
%
%      H = BUTTON1 returns the handle to a new BUTTON1 or the handle to
%      the existing singleton*.
%
%      BUTTON1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BUTTON1.M with the given input arguments.
%
%      BUTTON1('Property','Value',...) creates a new BUTTON1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before button1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to button1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help button1

% Last Modified by GUIDE v2.5 17-Dec-2013 11:41:05


% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @button1_OpeningFcn, ...
                   'gui_OutputFcn',  @button1_OutputFcn, ...
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


% --- Executes just before button1 is made visible.
function button1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to button1 (see VARARGIN)

% Choose default command line output for button1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes button1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = button1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global A
A = imread('money.jpg');
axes(handles.axes1);
imshow(A);title('Query Image','Color','b');


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global A
global B
B = rgb2gray(A);
axes(handles.axes2);
imshow(B);title('rgb2gray Image','Color','b');


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global A
global c
c = im2bw(A);
axes(handles.axes3);
imshow(c);title('im2bw Image','Color','b');


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global B
axes(handles.axes4);
imhist(B);title('hist Image','Color','b');


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global A
global K
K = imadjust(A,[.2 .3 0;.6 .7 1],[]);
axes(handles.axes5);
imshow(K);title('adjust Image','Color','b');

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global B
global M
M = imadjust(B,[.2 ,.7],[]);
axes(handles.axes6);
imshow(M);title('grayadjust Image','Color','b');


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global M
axes(handles.axes7);
imhist(M);title('histad Image','Color','b');


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global B
global S
S = histeq(B);
axes(handles.axes8);
imshow(S);title('histeq Image','Color','b');


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global B
global P
P = imresize(B,[150 100]);
axes(handles.axes9);
imshow(P);title('Resize Image','Color','b');