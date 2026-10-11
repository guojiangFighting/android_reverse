.class public Lcom/dodonew/online/ui/OnlineDetailActivity;
.super Lcom/dodonew/online/base/TitleActivity;
.source "OnlineDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private DEFAULT_TYPE:Ljava/lang/reflect/Type;

.field private btnOnlinePlay:Landroid/widget/Button;

.field private mGridView:Lcom/dodonew/online/widget/MGridView;

.field private onlinePlayParticipteAdapter:Lcom/dodonew/online/adapter/OnlinePlayParticipteAdapter;

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

.field private participates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Participate;",
            ">;"
        }
    .end annotation
.end field

.field private playId:Ljava/lang/String;

.field private request:Lcom/dodonew/online/http/JsonRequest;

.field private userId:Ljava/lang/String;

.field private webView:Lcom/dodonew/online/widget/MWebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/dodonew/online/base/TitleActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/ui/OnlineDetailActivity;)Lcom/dodonew/online/widget/MWebView;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/OnlineDetailActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->webView:Lcom/dodonew/online/widget/MWebView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dodonew/online/ui/OnlineDetailActivity;Lcom/dodonew/online/bean/OnlinePlay;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/OnlineDetailActivity;
    .param p1, "x1"    # Lcom/dodonew/online/bean/OnlinePlay;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/OnlineDetailActivity;->setOnlinePlay(Lcom/dodonew/online/bean/OnlinePlay;)V

    return-void
.end method

.method static synthetic access$200(Lcom/dodonew/online/ui/OnlineDetailActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/OnlineDetailActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/OnlineDetailActivity;->setParticipates(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lcom/dodonew/online/ui/OnlineDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/OnlineDetailActivity;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/dodonew/online/ui/OnlineDetailActivity;->setOnlinePlayParticipteAdapter()V

    return-void
.end method

.method static synthetic access$400(Lcom/dodonew/online/ui/OnlineDetailActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/OnlineDetailActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->participates:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/dodonew/online/ui/OnlineDetailActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/OnlineDetailActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->btnOnlinePlay:Landroid/widget/Button;

    return-object v0
.end method

.method private addOnlinePlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "playid"    # Ljava/lang/String;
    .param p2, "userAccount"    # Ljava/lang/String;
    .param p3, "urlIcon"    # Ljava/lang/String;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 129
    new-instance v0, Lcom/dodonew/online/ui/OnlineDetailActivity$4;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/OnlineDetailActivity$4;-><init>(Lcom/dodonew/online/ui/OnlineDetailActivity;)V

    .line 130
    invoke-virtual {v0}, Lcom/dodonew/online/ui/OnlineDetailActivity$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 131
    iget-object v0, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->para:Ljava/util/Map;

    const-string v1, "userAccount"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->para:Ljava/util/Map;

    const-string v1, "playid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->para:Ljava/util/Map;

    const-string v1, "userIconUrl"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v0, "oth/onlineplay/addrecord"

    iget-object v1, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/ui/OnlineDetailActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 135
    return-void
.end method

.method private initEvent()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->webView:Lcom/dodonew/online/widget/MWebView;

    new-instance v1, Lcom/dodonew/online/ui/OnlineDetailActivity$1;

    invoke-direct {v1, p0}, Lcom/dodonew/online/ui/OnlineDetailActivity$1;-><init>(Lcom/dodonew/online/ui/OnlineDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MWebView;->setOnLoadFinishListener(Lcom/dodonew/online/widget/MWebView$OnLoadFinishListener;)V

    .line 99
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 73
    const-string v1, "\u7ea6\u73a9\u8be6\u60c5"

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/OnlineDetailActivity;->setTitle(Ljava/lang/String;)V

    .line 74
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/OnlineDetailActivity;->setNavigationIcon(I)V

    .line 75
    const v1, 0x7f0d00d1

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/OnlineDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/widget/MWebView;

    iput-object v1, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->webView:Lcom/dodonew/online/widget/MWebView;

    .line 76
    const v1, 0x7f0d00d4

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/OnlineDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/widget/MGridView;

    iput-object v1, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->mGridView:Lcom/dodonew/online/widget/MGridView;

    .line 77
    const v1, 0x7f0d00d0

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/OnlineDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->btnOnlinePlay:Landroid/widget/Button;

    .line 78
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->para:Ljava/util/Map;

    .line 79
    sget-object v1, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/User;->getUserId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->userId:Ljava/lang/String;

    .line 80
    invoke-virtual {p0}, Lcom/dodonew/online/ui/OnlineDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 81
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "playId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->playId:Ljava/lang/String;

    .line 82
    iget-object v1, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->playId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->playId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/dodonew/online/ui/OnlineDetailActivity;->queryPlayDetail(Ljava/lang/String;)V

    .line 85
    :cond_0
    return-void
.end method

.method private queryOnlineplayList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "playid"    # Ljava/lang/String;
    .param p2, "page"    # Ljava/lang/String;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 118
    new-instance v0, Lcom/dodonew/online/ui/OnlineDetailActivity$3;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/OnlineDetailActivity$3;-><init>(Lcom/dodonew/online/ui/OnlineDetailActivity;)V

    .line 119
    invoke-virtual {v0}, Lcom/dodonew/online/ui/OnlineDetailActivity$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 120
    iget-object v0, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->para:Ljava/util/Map;

    const-string v1, "limit"

    const-string v2, "10"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->para:Ljava/util/Map;

    const-string v1, "playid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->para:Ljava/util/Map;

    const-string v1, "page"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v0, "oth/onlineplay/onelist"

    iget-object v1, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/ui/OnlineDetailActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 125
    return-void
.end method

.method private queryPlayDetail(Ljava/lang/String;)V
    .locals 3
    .param p1, "playid"    # Ljava/lang/String;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 104
    new-instance v0, Lcom/dodonew/online/ui/OnlineDetailActivity$2;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/OnlineDetailActivity$2;-><init>(Lcom/dodonew/online/ui/OnlineDetailActivity;)V

    .line 105
    invoke-virtual {v0}, Lcom/dodonew/online/ui/OnlineDetailActivity$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 106
    iget-object v0, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->para:Ljava/util/Map;

    const-string v1, "playid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v0, "oth/onlineplay/info"

    iget-object v1, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/ui/OnlineDetailActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 108
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
    .line 143
    .local p2, "para":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/dodonew/online/ui/OnlineDetailActivity;->showProgress()V

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://api.dodovip.com/api/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/dodonew/online/http/JsonRequest;

    const-string v3, ""

    new-instance v4, Lcom/dodonew/online/ui/OnlineDetailActivity$5;

    invoke-direct {v4, p0, p1}, Lcom/dodonew/online/ui/OnlineDetailActivity$5;-><init>(Lcom/dodonew/online/ui/OnlineDetailActivity;Ljava/lang/String;)V

    new-instance v5, Lcom/dodonew/online/ui/OnlineDetailActivity$6;

    invoke-direct {v5, p0}, Lcom/dodonew/online/ui/OnlineDetailActivity$6;-><init>(Lcom/dodonew/online/ui/OnlineDetailActivity;)V

    move-object v1, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/dodonew/online/http/JsonRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    .line 176
    iget-object v0, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-virtual {v0, p2}, Lcom/dodonew/online/http/JsonRequest;->addRequestMap(Ljava/util/Map;)V

    .line 177
    iget-object v0, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-static {v0, p0}, Lcom/dodonew/online/DodonewOnlineApplication;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    .line 178
    return-void
.end method

.method private setOnlinePlay(Lcom/dodonew/online/bean/OnlinePlay;)V
    .locals 6
    .param p1, "onlinePlay"    # Lcom/dodonew/online/bean/OnlinePlay;

    .prologue
    .line 182
    invoke-virtual {p1}, Lcom/dodonew/online/bean/OnlinePlay;->getPlayid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->playId:Ljava/lang/String;

    .line 183
    invoke-virtual {p1}, Lcom/dodonew/online/bean/OnlinePlay;->getPlayTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/dodonew/online/bean/OnlinePlay;->getStartTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dodonew/online/bean/OnlinePlay;->getNetBarName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/dodonew/online/bean/OnlinePlay;->getPlayContext()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v3, v4}, Lcom/dodonew/online/util/Utils;->formatWebContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, "html":Ljava/lang/String;
    iget-object v0, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->webView:Lcom/dodonew/online/widget/MWebView;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->webView:Lcom/dodonew/online/widget/MWebView;

    const-string v1, ""

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/dodonew/online/widget/MWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_0
    invoke-virtual {p1}, Lcom/dodonew/online/bean/OnlinePlay;->getPlayid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-direct {p0, v0, v1}, Lcom/dodonew/online/ui/OnlineDetailActivity;->queryOnlineplayList(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {p1}, Lcom/dodonew/online/bean/OnlinePlay;->getEndTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dodonew/online/util/Utils;->getTime(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->btnOnlinePlay:Landroid/widget/Button;

    const-string v1, "\u5df2\u622a\u6b62"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v0, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->btnOnlinePlay:Landroid/widget/Button;

    const v1, 0x7f02005e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->btnOnlinePlay:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private setOnlinePlayParticipteAdapter()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->onlinePlayParticipteAdapter:Lcom/dodonew/online/adapter/OnlinePlayParticipteAdapter;

    if-nez v0, :cond_0

    .line 219
    new-instance v0, Lcom/dodonew/online/adapter/OnlinePlayParticipteAdapter;

    iget-object v1, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->participates:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/dodonew/online/adapter/OnlinePlayParticipteAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->onlinePlayParticipteAdapter:Lcom/dodonew/online/adapter/OnlinePlayParticipteAdapter;

    .line 220
    iget-object v0, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->mGridView:Lcom/dodonew/online/widget/MGridView;

    iget-object v1, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->onlinePlayParticipteAdapter:Lcom/dodonew/online/adapter/OnlinePlayParticipteAdapter;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->onlinePlayParticipteAdapter:Lcom/dodonew/online/adapter/OnlinePlayParticipteAdapter;

    invoke-virtual {v0}, Lcom/dodonew/online/adapter/OnlinePlayParticipteAdapter;->notifyDataSetChanged()V

    .line 223
    return-void
.end method

.method private setParticipates(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Participate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p1, "ls":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/Participate;>;"
    iget-object v2, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->participates:Ljava/util/List;

    if-nez v2, :cond_0

    .line 198
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->participates:Ljava/util/List;

    .line 200
    :cond_0
    iget-object v2, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->participates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 201
    iget-object v2, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->participates:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, "has":Z
    iget-object v2, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->participates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 204
    iget-object v2, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->participates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/bean/Participate;

    .line 205
    .local v1, "participate":Lcom/dodonew/online/bean/Participate;
    invoke-virtual {v1}, Lcom/dodonew/online/bean/Participate;->getUserAccount()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->userId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 206
    const/4 v0, 0x1

    .line 210
    .end local v1    # "participate":Lcom/dodonew/online/bean/Participate;
    :cond_2
    if-eqz v0, :cond_3

    .line 211
    iget-object v2, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->btnOnlinePlay:Landroid/widget/Button;

    const-string v3, "\u5df2\u53c2\u4e0e"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v2, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->btnOnlinePlay:Landroid/widget/Button;

    const v3, 0x7f02005e

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 215
    :cond_3
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 227
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 229
    :pswitch_0
    iget-object v0, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->playId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->playId:Ljava/lang/String;

    sget-object v1, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/User;->getUserId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v2}, Lcom/dodonew/online/bean/User;->getIcon()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/ui/OnlineDetailActivity;->addOnlinePlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :pswitch_data_0
    .packed-switch 0x7f0d00d0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/dodonew/online/base/TitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v0, 0x7f03003a

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/OnlineDetailActivity;->setContentView(I)V

    .line 68
    invoke-direct {p0}, Lcom/dodonew/online/ui/OnlineDetailActivity;->initView()V

    .line 69
    invoke-direct {p0}, Lcom/dodonew/online/ui/OnlineDetailActivity;->initEvent()V

    .line 70
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 255
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onDestroy()V

    .line 256
    iget-object v1, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->webView:Lcom/dodonew/online/widget/MWebView;

    if-eqz v1, :cond_1

    .line 257
    iget-object v1, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->webView:Lcom/dodonew/online/widget/MWebView;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/MWebView;->stopLoading()V

    .line 258
    iget-object v1, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->webView:Lcom/dodonew/online/widget/MWebView;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/MWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 259
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 260
    iget-object v1, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->webView:Lcom/dodonew/online/widget/MWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 262
    :cond_0
    iget-object v1, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->webView:Lcom/dodonew/online/widget/MWebView;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/MWebView;->removeAllViews()V

    .line 263
    iget-object v1, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->webView:Lcom/dodonew/online/widget/MWebView;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/MWebView;->destroy()V

    .line 264
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/dodonew/online/ui/OnlineDetailActivity;->webView:Lcom/dodonew/online/widget/MWebView;

    .line 266
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 248
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onPause()V

    .line 249
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 251
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 242
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onResume()V

    .line 243
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 245
    return-void
.end method
