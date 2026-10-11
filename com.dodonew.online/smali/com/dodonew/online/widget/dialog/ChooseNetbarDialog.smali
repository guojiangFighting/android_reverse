.class public Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "ChooseNetbarDialog.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private DEFAULT_TYPE:Ljava/lang/reflect/Type;

.field private account:Ljava/lang/String;

.field private activity:Landroid/app/Activity;

.field private choiceNetbarAdapter:Lcom/dodonew/online/adapter/ChoiceNetbarAdapter;

.field private domainId:Ljava/lang/String;

.field private multiStateView:Lcom/dodonew/online/widget/MultiStateView;

.field public netBarCaptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/NetBarCaption;",
            ">;"
        }
    .end annotation
.end field

.field private onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

.field private para:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private recyclerView:Landroid/widget/ListView;

.field private request:Lcom/dodonew/online/http/JsonRequest;

.field private tvBindNet:Landroid/widget/TextView;

.field private tvProvince:Landroid/widget/TextView;

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;)Lcom/dodonew/online/interfaces/OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;Lcom/dodonew/online/bean/NetBarList;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;
    .param p1, "x1"    # Lcom/dodonew/online/bean/NetBarList;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->setNetBarCaption(Lcom/dodonew/online/bean/NetBarList;)V

    return-void
.end method

.method static synthetic access$200(Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->setChooseNetbarAdapter()V

    return-void
.end method

.method static synthetic access$300(Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;)Lcom/dodonew/online/widget/MultiStateView;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    return-object v0
.end method

.method private getNetBarByAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "domainId"    # Ljava/lang/String;

    .prologue
    .line 123
    new-instance v0, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog$2;

    invoke-direct {v0, p0}, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog$2;-><init>(Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;)V

    .line 124
    invoke-virtual {v0}, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 125
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 126
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->para:Ljava/util/Map;

    const-string v1, "username"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->para:Ljava/util/Map;

    const-string v1, "domainId"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v0, "netCard/allbar"

    iget-object v1, p0, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 129
    return-void
.end method

.method private initEvent()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->recyclerView:Landroid/widget/ListView;

    new-instance v1, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog$1;

    invoke-direct {v1, p0}, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog$1;-><init>(Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 108
    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;
    .locals 3
    .param p0, "account"    # Ljava/lang/String;
    .param p1, "domainId"    # Ljava/lang/String;

    .prologue
    .line 62
    new-instance v1, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;

    invoke-direct {v1}, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;-><init>()V

    .line 63
    .local v1, "informationDialog":Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 64
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "account"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v2, "domainId"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v1, v0}, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->setArguments(Landroid/os/Bundle;)V

    .line 67
    return-object v1
.end method

.method private requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V
    .locals 7
    .param p1, "cmd"    # Ljava/lang/String;
    .param p3, "DEFAULT_TYPE"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .prologue
    .line 137
    .local p2, "para":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://api.dodovip.com/api/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/dodonew/online/http/JsonRequest;

    iget-object v1, p0, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->activity:Landroid/app/Activity;

    const-string v3, ""

    new-instance v4, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog$3;

    invoke-direct {v4, p0, p1}, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog$3;-><init>(Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;Ljava/lang/String;)V

    new-instance v5, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog$4;

    invoke-direct {v5, p0}, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog$4;-><init>(Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;)V

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/dodonew/online/http/JsonRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->request:Lcom/dodonew/online/http/JsonRequest;

    .line 157
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-virtual {v0, p2}, Lcom/dodonew/online/http/JsonRequest;->addRequestMap(Ljava/util/Map;)V

    .line 158
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-static {v0, p0}, Lcom/dodonew/online/DodonewOnlineApplication;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    .line 159
    return-void
.end method

.method private setChooseNetbarAdapter()V
    .locals 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->choiceNetbarAdapter:Lcom/dodonew/online/adapter/ChoiceNetbarAdapter;

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Lcom/dodonew/online/adapter/ChoiceNetbarAdapter;

    invoke-virtual {p0}, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->netBarCaptions:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/dodonew/online/adapter/ChoiceNetbarAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->choiceNetbarAdapter:Lcom/dodonew/online/adapter/ChoiceNetbarAdapter;

    .line 185
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->recyclerView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->choiceNetbarAdapter:Lcom/dodonew/online/adapter/ChoiceNetbarAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->choiceNetbarAdapter:Lcom/dodonew/online/adapter/ChoiceNetbarAdapter;

    invoke-virtual {v0}, Lcom/dodonew/online/adapter/ChoiceNetbarAdapter;->notifyDataSetChanged()V

    .line 188
    return-void
.end method

.method private setNetBarCaption(Lcom/dodonew/online/bean/NetBarList;)V
    .locals 2
    .param p1, "netBarList"    # Lcom/dodonew/online/bean/NetBarList;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->netBarCaptions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->netBarCaptions:Ljava/util/List;

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->netBarCaptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 166
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->netBarCaptions:Ljava/util/List;

    invoke-virtual {p1}, Lcom/dodonew/online/bean/NetBarList;->getNetbarList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 167
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->netBarCaptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->CONTENT:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->EMPTY:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->activity:Landroid/app/Activity;

    .line 74
    invoke-virtual {p0}, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 75
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 76
    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->account:Ljava/lang/String;

    .line 77
    const-string v1, "domainId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->domainId:Ljava/lang/String;

    .line 79
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 85
    const v0, 0x7f03007f

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->view:Landroid/view/View;

    .line 86
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->view:Landroid/view/View;

    const v1, 0x7f0d0090

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/MultiStateView;

    iput-object v0, p0, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    .line 88
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->view:Landroid/view/View;

    const v1, 0x7f0d0235

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->recyclerView:Landroid/widget/ListView;

    .line 89
    invoke-direct {p0}, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->initEvent()V

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->para:Ljava/util/Map;

    .line 95
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->account:Ljava/lang/String;

    iget-object v1, p0, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->domainId:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->getNetBarByAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->view:Landroid/view/View;

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 120
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 112
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onResume()V

    .line 115
    return-void
.end method

.method public setOnItemClickListener(Lcom/dodonew/online/interfaces/OnItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lcom/dodonew/online/interfaces/OnItemClickListener;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    .line 192
    return-void
.end method
