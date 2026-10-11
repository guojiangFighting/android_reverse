.class public Lcom/dodonew/online/ui/MyAddCardActivity;
.super Lcom/dodonew/online/base/TitleActivity;
.source "MyAddCardActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/dodonew/online/interfaces/OnItemClickListener;


# instance fields
.field private DEFAULT_TYPE:Ljava/lang/reflect/Type;

.field private card:Lcom/dodonew/online/bean/Card;

.field private chooseNetbarDialog:Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;

.field private domainId:Ljava/lang/String;

.field private etName:Landroid/widget/EditText;

.field private etPwd:Landroid/widget/EditText;

.field private intentActivity:Ljava/lang/String;

.field private netBar:Lcom/dodonew/online/bean/NetBar;

.field private netBarCaption:Lcom/dodonew/online/bean/NetBarCaption;

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

.field private request:Lcom/dodonew/online/http/JsonRequest;

.field private tvBindNet:Landroid/widget/TextView;

.field private tvProvince:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/dodonew/online/base/TitleActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/ui/MyAddCardActivity;Lcom/dodonew/online/bean/Card;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/MyAddCardActivity;
    .param p1, "x1"    # Lcom/dodonew/online/bean/Card;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/MyAddCardActivity;->setCard(Lcom/dodonew/online/bean/Card;)V

    return-void
.end method

.method private addCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "pwd"    # Ljava/lang/String;
    .param p3, "domainid"    # Ljava/lang/String;
    .param p4, "netBarId"    # Ljava/lang/String;
    .param p5, "netBarName"    # Ljava/lang/String;
    .param p6, "userId"    # Ljava/lang/String;
    .param p7, "area"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 113
    new-instance v3, Lcom/dodonew/online/ui/MyAddCardActivity$1;

    invoke-direct {v3, p0}, Lcom/dodonew/online/ui/MyAddCardActivity$1;-><init>(Lcom/dodonew/online/ui/MyAddCardActivity;)V

    .line 114
    invoke-virtual {v3}, Lcom/dodonew/online/ui/MyAddCardActivity$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    iput-object v3, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 115
    move-object v0, p7

    .line 116
    .local v0, "city":Ljava/lang/String;
    iget-object v3, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->para:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 117
    iget-object v3, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->para:Ljava/util/Map;

    const-string v4, "netaccount"

    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v3, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->para:Ljava/util/Map;

    const-string v4, "netpwd"

    invoke-interface {v3, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v3, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->para:Ljava/util/Map;

    const-string v4, "domainid"

    invoke-interface {v3, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v3, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->para:Ljava/util/Map;

    const-string v4, "netbarId"

    invoke-interface {v3, v4, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v3, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->para:Ljava/util/Map;

    const-string v4, "netbarname"

    invoke-interface {v3, v4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v3, "\u5e02"

    invoke-virtual {p7, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 123
    .local v1, "cityIndexOf":I
    if-eq v1, v5, :cond_0

    .line 124
    const-string v3, ","

    invoke-virtual {p7, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 125
    .local v2, "splitIndexOf":I
    if-eq v2, v5, :cond_0

    .line 126
    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p7, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 129
    .end local v2    # "splitIndexOf":I
    :cond_0
    iget-object v3, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->para:Ljava/util/Map;

    const-string v4, "cityStr"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v3, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->para:Ljava/util/Map;

    const-string v4, "area"

    invoke-interface {v3, v4, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v3, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->para:Ljava/util/Map;

    const-string v4, "userId"

    invoke-interface {v3, v4, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v3, "netCard/addcard"

    iget-object v4, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->para:Ljava/util/Map;

    iget-object v5, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v3, v4, v5}, Lcom/dodonew/online/ui/MyAddCardActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 133
    return-void
.end method

.method private checkInput(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "pwd"    # Ljava/lang/String;

    .prologue
    .line 198
    const-string v0, ""

    .line 199
    .local v0, "msg":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    const-string v0, "\u8bf7\u8f93\u5165\u4e0a\u7f51\u8d26\u53f7"

    .line 210
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 211
    const/4 v1, 0x1

    .line 214
    :goto_1
    return v1

    .line 201
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 202
    const-string v0, "\u8bf7\u8f93\u5165\u4e0a\u7f51\u8d26\u5bc6\u7801"

    goto :goto_0

    .line 203
    :cond_2
    iget-object v1, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->netBar:Lcom/dodonew/online/bean/NetBar;

    if-nez v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->domainId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 205
    const-string v0, "\u8bf7\u9009\u62e9\u5730\u533a"

    goto :goto_0

    .line 206
    :cond_3
    iget-object v1, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->netBarCaption:Lcom/dodonew/online/bean/NetBarCaption;

    if-nez v1, :cond_0

    .line 207
    const-string v0, "\u8bf7\u9009\u62e9\u7f51\u5427"

    goto :goto_0

    .line 213
    :cond_4
    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/MyAddCardActivity;->showToast(Ljava/lang/String;)V

    .line 214
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private initData()V
    .locals 3

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/dodonew/online/ui/MyAddCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 89
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "netBar"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/bean/NetBar;

    iput-object v1, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->netBar:Lcom/dodonew/online/bean/NetBar;

    .line 90
    const-string v1, "intentActivity"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->intentActivity:Ljava/lang/String;

    .line 91
    iget-object v1, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->netBar:Lcom/dodonew/online/bean/NetBar;

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->tvProvince:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->netBar:Lcom/dodonew/online/bean/NetBar;

    invoke-virtual {v2}, Lcom/dodonew/online/bean/NetBar;->getArea()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v1, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->tvBindNet:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->netBar:Lcom/dodonew/online/bean/NetBar;

    invoke-virtual {v2}, Lcom/dodonew/online/bean/NetBar;->getNetBarCaption()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    const v1, 0x7f0d009c

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/MyAddCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 99
    :goto_0
    return-void

    .line 96
    :cond_0
    const v1, 0x7f0d009d

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/MyAddCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const v1, 0x7f0d009e

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/MyAddCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private initEvent()V
    .locals 1

    .prologue
    .line 84
    const v0, 0x7f0d009f

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/MyAddCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 71
    const-string v0, "\u6dfb\u52a0\u4f1a\u5458\u5361"

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/MyAddCardActivity;->setTitle(Ljava/lang/String;)V

    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/MyAddCardActivity;->setNavigationIcon(I)V

    .line 73
    const v0, 0x7f0d009a

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/MyAddCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->etName:Landroid/widget/EditText;

    .line 74
    const v0, 0x7f0d009b

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/MyAddCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->etPwd:Landroid/widget/EditText;

    .line 75
    const v0, 0x7f0d009d

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/MyAddCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->tvProvince:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f0d009e

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/MyAddCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->tvBindNet:Landroid/widget/TextView;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->para:Ljava/util/Map;

    .line 78
    return-void
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
    .line 141
    .local p2, "para":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/dodonew/online/ui/MyAddCardActivity;->showProgress()V

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://api.dodovip.com/api/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/dodonew/online/http/JsonRequest;

    const-string v3, ""

    new-instance v4, Lcom/dodonew/online/ui/MyAddCardActivity$2;

    invoke-direct {v4, p0, p1}, Lcom/dodonew/online/ui/MyAddCardActivity$2;-><init>(Lcom/dodonew/online/ui/MyAddCardActivity;Ljava/lang/String;)V

    new-instance v5, Lcom/dodonew/online/ui/MyAddCardActivity$3;

    invoke-direct {v5, p0}, Lcom/dodonew/online/ui/MyAddCardActivity$3;-><init>(Lcom/dodonew/online/ui/MyAddCardActivity;)V

    move-object v1, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/dodonew/online/http/JsonRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    .line 164
    iget-object v0, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-virtual {v0, p2}, Lcom/dodonew/online/http/JsonRequest;->addRequestMap(Ljava/util/Map;)V

    .line 165
    iget-object v0, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-static {v0, p0}, Lcom/dodonew/online/DodonewOnlineApplication;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    .line 166
    return-void
.end method

.method private setCard(Lcom/dodonew/online/bean/Card;)V
    .locals 5
    .param p1, "data"    # Lcom/dodonew/online/bean/Card;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->card:Lcom/dodonew/online/bean/Card;

    .line 171
    const-string v3, "false"

    invoke-virtual {p1, v3}, Lcom/dodonew/online/bean/Card;->setDel(Ljava/lang/String;)V

    .line 172
    invoke-static {}, Lcom/dodonew/online/bean/EventBusManager;->getInstace()Lcom/dodonew/online/bean/EventBusManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dodonew/online/bean/EventBusManager;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v3

    new-instance v4, Lcom/dodonew/online/bean/CardEvent;

    invoke-direct {v4, p1}, Lcom/dodonew/online/bean/CardEvent;-><init>(Lcom/dodonew/online/bean/Card;)V

    invoke-virtual {v3, v4}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    .line 174
    iget-object v3, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->netBar:Lcom/dodonew/online/bean/NetBar;

    if-nez v3, :cond_1

    .line 175
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 176
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "card"

    iget-object v4, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->card:Lcom/dodonew/online/bean/Card;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 177
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v2}, Lcom/dodonew/online/ui/MyAddCardActivity;->setResult(ILandroid/content/Intent;)V

    .line 194
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/dodonew/online/ui/MyAddCardActivity;->finish()V

    .line 195
    return-void

    .line 179
    :cond_1
    iget-object v3, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->netBar:Lcom/dodonew/online/bean/NetBar;

    iget-object v4, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->card:Lcom/dodonew/online/bean/Card;

    invoke-virtual {v4}, Lcom/dodonew/online/bean/Card;->getNetAccount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/dodonew/online/bean/NetBar;->setNetAccount(Ljava/lang/String;)V

    .line 180
    iget-object v3, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->intentActivity:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 182
    :try_start_0
    iget-object v3, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->intentActivity:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 183
    .local v0, "cla":Ljava/lang/Class;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 184
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v3, "netBar"

    iget-object v4, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->netBar:Lcom/dodonew/online/bean/NetBar;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 185
    const-string v3, "domainId"

    iget-object v4, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->netBar:Lcom/dodonew/online/bean/NetBar;

    invoke-virtual {v4}, Lcom/dodonew/online/bean/NetBar;->getDomainId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const-string v3, "netBarId"

    iget-object v4, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->netBar:Lcom/dodonew/online/bean/NetBar;

    invoke-virtual {v4}, Lcom/dodonew/online/bean/NetBar;->getNetBarId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    const-string v3, "memberId"

    invoke-virtual {p1}, Lcom/dodonew/online/bean/Card;->getMemberNo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    invoke-virtual {p0, v2}, Lcom/dodonew/online/ui/MyAddCardActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    .end local v0    # "cla":Ljava/lang/Class;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 190
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private setChooseNetbarDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "domainId"    # Ljava/lang/String;

    .prologue
    .line 277
    invoke-static {p1, p2}, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->chooseNetbarDialog:Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;

    .line 278
    iget-object v0, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->chooseNetbarDialog:Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;

    invoke-virtual {p0}, Lcom/dodonew/online/ui/MyAddCardActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "ChooseNetbarDialog"

    invoke-virtual {v0, v1, v2}, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->chooseNetbarDialog:Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;

    invoke-virtual {v0, p0}, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->setOnItemClickListener(Lcom/dodonew/online/interfaces/OnItemClickListener;)V

    .line 280
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 264
    invoke-super {p0, p1, p2, p3}, Lcom/dodonew/online/base/TitleActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 265
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 266
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 267
    const-string v1, "domainId"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->domainId:Ljava/lang/String;

    .line 268
    const-string v1, "area"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "txt":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 270
    iget-object v1, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->tvProvince:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    .end local v0    # "txt":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 221
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 223
    :pswitch_0
    new-instance v8, Landroid/content/Intent;

    const-class v0, Lcom/dodonew/online/ui/BindCardProvinceActivity;

    invoke-direct {v8, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 224
    .local v8, "intent":Landroid/content/Intent;
    const/4 v0, 0x1

    invoke-virtual {p0, v8, v0}, Lcom/dodonew/online/ui/MyAddCardActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 227
    .end local v8    # "intent":Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->etName:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ""

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 228
    .local v9, "name":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->etName:Landroid/widget/EditText;

    invoke-static {p0, v0}, Lcom/dodonew/online/util/Utils;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 230
    const-string v0, "\u8bf7\u5148\u8f93\u5165\u4e0a\u7f51\u8d26\u53f7."

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/MyAddCardActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->domainId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 233
    const-string v0, "\u8bf7\u9009\u62e9\u4e0a\u7f51\u57ce\u5e02."

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/MyAddCardActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 236
    :cond_2
    iget-object v0, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->domainId:Ljava/lang/String;

    invoke-direct {p0, v9, v0}, Lcom/dodonew/online/ui/MyAddCardActivity;->setChooseNetbarDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 239
    .end local v9    # "name":Ljava/lang/String;
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->etName:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ""

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, "account":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->etPwd:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ""

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, "pwd":Ljava/lang/String;
    invoke-direct {p0, v1, v2}, Lcom/dodonew/online/ui/MyAddCardActivity;->checkInput(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->tvProvince:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ""

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 244
    .local v7, "area":Ljava/lang/String;
    iget-object v0, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->netBar:Lcom/dodonew/online/bean/NetBar;

    if-nez v0, :cond_3

    .line 245
    iget-object v3, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->domainId:Ljava/lang/String;

    .line 246
    .local v3, "domainId":Ljava/lang/String;
    iget-object v0, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->netBarCaption:Lcom/dodonew/online/bean/NetBarCaption;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/NetBarCaption;->getNetBarId()Ljava/lang/String;

    move-result-object v4

    .line 247
    .local v4, "netBarId":Ljava/lang/String;
    iget-object v0, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->netBarCaption:Lcom/dodonew/online/bean/NetBarCaption;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/NetBarCaption;->getNetBarCaption()Ljava/lang/String;

    move-result-object v5

    .line 253
    .local v5, "netBarName":Ljava/lang/String;
    :goto_1
    sget-object v0, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    .line 254
    invoke-virtual {v0}, Lcom/dodonew/online/bean/User;->getUserId()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    .line 253
    invoke-direct/range {v0 .. v7}, Lcom/dodonew/online/ui/MyAddCardActivity;->addCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 249
    .end local v3    # "domainId":Ljava/lang/String;
    .end local v4    # "netBarId":Ljava/lang/String;
    .end local v5    # "netBarName":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->netBar:Lcom/dodonew/online/bean/NetBar;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/NetBar;->getDomainId()Ljava/lang/String;

    move-result-object v3

    .line 250
    .restart local v3    # "domainId":Ljava/lang/String;
    iget-object v0, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->netBar:Lcom/dodonew/online/bean/NetBar;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/NetBar;->getNetBarId()Ljava/lang/String;

    move-result-object v4

    .line 251
    .restart local v4    # "netBarId":Ljava/lang/String;
    iget-object v0, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->netBar:Lcom/dodonew/online/bean/NetBar;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/NetBar;->getNetBarCaption()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "netBarName":Ljava/lang/String;
    goto :goto_1

    .line 221
    :pswitch_data_0
    .packed-switch 0x7f0d009d
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/dodonew/online/base/TitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v0, 0x7f03001c

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/MyAddCardActivity;->setContentView(I)V

    .line 62
    invoke-direct {p0}, Lcom/dodonew/online/ui/MyAddCardActivity;->initView()V

    .line 63
    invoke-direct {p0}, Lcom/dodonew/online/ui/MyAddCardActivity;->initData()V

    .line 64
    invoke-direct {p0}, Lcom/dodonew/online/ui/MyAddCardActivity;->initEvent()V

    .line 65
    return-void
.end method

.method public onItemClick(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 284
    iget-object v0, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->chooseNetbarDialog:Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;

    iget-object v0, v0, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->netBarCaptions:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/bean/NetBarCaption;

    iput-object v0, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->netBarCaption:Lcom/dodonew/online/bean/NetBarCaption;

    .line 285
    iget-object v0, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->tvBindNet:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->netBarCaption:Lcom/dodonew/online/bean/NetBarCaption;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/NetBarCaption;->getNetBarCaption()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v0, p0, Lcom/dodonew/online/ui/MyAddCardActivity;->chooseNetbarDialog:Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->dismiss()V

    .line 287
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 300
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onPause()V

    .line 301
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 303
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 294
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onResume()V

    .line 295
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 297
    return-void
.end method
