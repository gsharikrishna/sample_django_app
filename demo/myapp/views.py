
from django.shortcuts import render,HttpResponse
import joblib

def home(request):
    return render(request,"home.html")
def aboutpage(request):
    return render(request,"about.html")
def result(request):

    cls = joblib.load('finalised_model.sav')

    lis = []

    lis.append(request.GET['RI'])
    lis.append(request.GET['Na'])
    lis.append(request.GET['Mg'])
    lis.append(request.GET['Al'])
    lis.append(request.GET['Si'])
    lis.append(request.GET['K'])
    lis.append(request.GET['Ca'])
    lis.append(request.GET['Ba'])
    lis.append(request.GET['Fe'])


    ans = cls.predict([lis])

    return render(request,"result.html",{'ans':ans,'lis':lis})
