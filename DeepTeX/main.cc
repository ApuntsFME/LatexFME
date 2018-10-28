#include <bits/stdc++.h>

using namespace std;

/* PENDENT:
        - section AVIS
        - chapter AVIS
        - %TODO (pel futur)
*/

int mida_linia=80;
string tab="    ";
vector<string> obre={"\\begin", "\\[", "\\iffalse"};
vector<string> tanca={"\\end", "\\]"};
vector<string> esp={"\\\\"};

int main() {
    
    set<string> obre_s;
    for (int i=0; i<obre.size(); ++i)
        obre_s.insert(obre[i]);
    
    set<string> tanca_s;
    for (int i=0; i<tanca.size(); ++i)
        tanca_s.insert(tanca[i]);
    
    set<string> esp_s;
    for (int i=0; i<esp.size(); ++i)
        esp_s.insert(esp[i]);
    
    string text="";
    string s;
    while(getline(cin, s)) {
        text=text+s+"\n";
    }
    text=text+"\n";
    
    int item=0;
    int ntabs=0;
    int col=0;
    bool buida=1;
    string mot="";
    string linia="";
    string out="";
    int i=0;
    bool he_tancat=0;
    bool comentari=0;
    
    while(text.substr(i, 16)!="\\begin{document}" and text.substr(i, 8)!="\\chapter") {
        ++i;
    }
    out=text.substr(0, i);
    for (; i<text.size(); ++i) {
        //cout<<out<<endl<<endl;
        if (text[i]==9)
            text[i]=' ';
        if (text[i]==' ') {
            while(i+1<text.size() and text[i+1]==' ')
                ++i;
            linia=linia+mot;
            if (mot!="") {
                linia=linia+" ";
                ++col;
                buida=0;
            }
            mot="";
        }
        else if (text[i]=='\n'){
            linia=linia+mot;
            if (mot!="")
                buida=0;
            mot="";
            if (comentari) {
                out=out+linia+"\n";
                linia="";
                for (int j=0; j<ntabs; ++j)
                    linia=linia+tab;
                col=linia.size();
                buida=1;
                comentari=0;
            }
            
            bool salt=0;
            while (i+1<text.size() and (text[i+1]=='\n' or text[i+1]==' ')) {
                ++i;
                if (text[i]=='\n' or comentari)
                    salt=1;
            }
            if (salt) {
                out=out+linia+"\n";
                if (!buida)
                    out=out+"\n";
                linia="";
                buida=1;
                for (int j=0; j<ntabs; ++j)
                    linia=linia+tab;
                col=linia.size();
            }
            else if (!buida) {
                linia=linia+" ";
                ++col;
            }
        }
        else {
            if (text[i]=='%') {
                comentari=1;
            }
            if (not comentari and mot!="" and text[i]=='\\' and i+1<text.size() and text[i+1]=='\\') {
                linia=linia+mot+" ";
                buida=0;
                mot="";
            }
            mot=mot+text[i];
            if (not comentari and item>0 and mot=="\\item") {
                while(i+1<text.size() and !(text[i+1]==' ' or text[i+1]=='\n' or text[i+1]=='\\')) {
                    mot=mot+text[i+1];
                    ++i;
                }
                if (item>1) {
                    if (!buida) {
                        out=out+linia+"\n";
                        linia="";
                        buida=1;
                        for (int j=0; j<ntabs-1; ++j)
                            linia=linia+tab;
                    }
                    else {
                        linia.resize(linia.size()-tab.size());
                    }
                }
                else {
                    ++ntabs;
                }
                linia=linia+mot;
                mot="";
                out=out+linia+"\n";
                linia="";
                buida=1;
                for (int j=0; j<ntabs; ++j)
                    linia=linia+tab;
                col=linia.size();
                ++item;
            }
            if (not comentari and obre_s.count(mot)) {
                if (!buida) {
                    if (linia[linia.size()-1]==' ')
                        linia.pop_back();
                    out=out+linia+"\n";
                    linia="";
                    for (int j=0; j<ntabs; ++j)
                        linia=linia+tab;
                }
                ++ntabs;
                bool segueix=1;
                int pa=0;
                int pb=0;
                
                while (segueix and mot!="\\[") {
                    mot=mot+text[i+1];
                    ++i;
                    if (text[i]=='{')
                        ++pa;
                    
                    if (text[i]=='[')
                        ++pb;
                        
                    if (text[i]=='}')
                        --pa;
                    
                    if (text[i]==']')
                        --pb;
                    if (pa==0 and pb==0 and text[i+1]!='[' and text[i+1]!='{')
                        segueix=0;
                }
                string label="";
                while(i+1<text.size() and text[i+1]==' ')
                    ++i;
                
                if (text.substr(i+1, 6)=="\\label") {
                    ++i;
                    while (text[i]!='}') {
                        label=label+text[i];
                        ++i;
                    }
                    label=label+"}";
                }
                
                if (mot.substr(0, 18)=="\\begin{tikzpicture") {
                    
                    linia=linia+mot;
                    out=out+linia+"\n";
                    mot="";
                    linia="";
                    for (int j=0; j<ntabs; ++j)
                        linia=linia+tab;
                    buida=1;
                    col=linia.size();
                    while(text.substr(i+1, 16)!="\\end{tikzpicture") {
                        ++i;
                        out=out+text[i];
                    }
                    out=out+"\n";
                }
                else if (mot.substr(0, 8)=="\\iffalse") {
                    
                    linia=linia+mot;
                    out=out+linia+"\n";
                    mot="";
                    linia="";
                    --ntabs;
                    for (int j=0; j<ntabs; ++j)
                        linia=linia+tab;
                    buida=1;
                    col=linia.size();
                    while(text.substr(i+1, 3)!="\\fi") {
                        ++i;
                        out=out+text[i];
                    }
                    if (out[out.size()-1]!='\n')
                        out=out+"\n";
                    linia=linia+"\\fi\n";
                    out=out+linia;
                    linia="";
                    mot="";
                    for (int j=0; j<ntabs; ++j)
                        linia=linia+tab;
                    buida=1;
                    col=linia.size();
                    i+=3;
                }
                else {
                    if (mot.substr(0, 14)=="\\begin{itemize" or mot.substr(0, 16)=="\\begin{enumerate") {
                        item=1;
                    }
                    
                    if (mot.substr(0, 15)=="\\begin{document") {
                        --ntabs;
                    }
                    
                    linia=linia+mot+label;
                    out=out+linia+"\n";
                    mot="";
                    linia="";
                    buida=1;
                    for (int j=0; j<ntabs; ++j)
                        linia=linia+tab;
                    col=linia.size();
                }
            }
            else if (not comentari and tanca_s.count(mot)) {
                bool segueix=1;
                int pa=0;
                int pb=0;
                
                while (segueix and mot!="\\]") {
                    mot=mot+text[i+1];
                    ++i;
                    if (text[i]=='{')
                        ++pa;
                    
                    if (text[i]=='[')
                        ++pb;
                        
                    if (text[i]=='}')
                        --pa;
                    
                    if (text[i]==']')
                        --pb;
                    if (pa==0 and pb==0 and text[i+1]!='[' and text[i+1]!='{')
                        segueix=0;
                }
                int aux=1;
                
                if (mot.substr(0, 13)=="\\end{document") {
                    ++ntabs;
                    if (buida)
                        linia=linia+tab;
                }
                if (!buida) {
                    out=out+linia+"\n";
                    linia="";
                    for (int j=0; j<ntabs; ++j)
                        linia=linia+tab;
                }
                if (mot.substr(0, 12)=="\\end{itemize" or mot.substr(0, 14)=="\\end{enumerate") {
                    item=0;
                    --ntabs;
                    ntabs=max(ntabs, 0);
                    aux=2;
                }
                linia.resize(linia.size()-aux*tab.size());
                --ntabs;
                ntabs=max(ntabs, 0);
                linia=linia+mot;
                out=out+linia+"\n";
                mot="";
                linia="";
                buida=1;
                for (int j=0; j<ntabs; ++j)
                    linia=linia+tab;
                col=linia.size();
            }
            else if (not comentari and esp_s.count(mot)) {
                while (i+1<text.size() and (text[i+1]!=' ' and text[i+1]!='\n')) {
                    mot=mot+text[i+1];
                    ++i;
                }
                linia=linia+mot;
                out=out+linia+"\n";
                mot="";
                linia="";
                col=0;
                buida=1;
                for (int j=0; j<ntabs; ++j)
                    linia=linia+tab;
                col=linia.size();
            }
            else {
                ++col;
                if (col>=mida_linia and !buida) {
                    if (linia[linia.size()-1]==' ')
                        linia.pop_back();
                    out=out+linia+"\n";
                    linia="";
                    buida=1;
                    for (int j=0; j<ntabs; ++j)
                        linia=linia+tab;
                    col=linia.size()+mot.size();
                    if (comentari)
                        linia=linia+"%";
                }
            }
        }
    }
    
    cout<<out;
    
    return 0;
}
