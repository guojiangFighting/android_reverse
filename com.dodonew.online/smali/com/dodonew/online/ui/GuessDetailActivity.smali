.class public Lcom/dodonew/online/ui/GuessDetailActivity;
.super Lcom/dodonew/online/base/TitleActivity;
.source "GuessDetailActivity.java"


# instance fields
.field private DEFAULT_TYPE:Ljava/lang/reflect/Type;

.field private guess:Lcom/dodonew/online/bean/Guess;

.field private guessDetailView:Lcom/dodonew/online/view/GuessDetailView;

.field private multiStateView:Lcom/dodonew/online/widget/MultiStateView;

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

.field private race:Lcom/dodonew/online/bean/Race;

.field private raceView:Lcom/dodonew/online/view/RaceView;

.field private request:Lcom/dodonew/online/http/JsonRequest;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/dodonew/online/base/TitleActivity;-><init>()V

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/dodonew/online/ui/GuessDetailActivity;->title:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/ui/GuessDetailActivity;Lcom/dodonew/online/bean/Guess;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/GuessDetailActivity;
    .param p1, "x1"    # Lcom/dodonew/online/bean/Guess;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/GuessDetailActivity;->setGuess(Lcom/dodonew/online/bean/Guess;)V

    return-void
.end method

.method private addRequestPara(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "raceId"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/dodonew/online/ui/GuessDetailActivity;->para:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/ui/GuessDetailActivity;->para:Ljava/util/Map;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/GuessDetailActivity;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 80
    iget-object v0, p0, Lcom/dodonew/online/ui/GuessDetailActivity;->para:Ljava/util/Map;

    const-string v1, "raceId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/dodonew/online/ui/GuessDetailActivity;->para:Ljava/util/Map;

    const-string v1, "userId"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-void
.end method

.method private initView()V
    .locals 6

    .prologue
    .line 52
    const v2, 0x7f0d00bc

    invoke-virtual {p0, v2}, Lcom/dodonew/online/ui/GuessDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/dodonew/online/widget/MultiStateView;

    iput-object v2, p0, Lcom/dodonew/online/ui/GuessDetailActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    .line 53
    const v2, 0x7f0d00bd

    invoke-virtual {p0, v2}, Lcom/dodonew/online/ui/GuessDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/dodonew/online/view/RaceView;

    iput-object v2, p0, Lcom/dodonew/online/ui/GuessDetailActivity;->raceView:Lcom/dodonew/online/view/RaceView;

    .line 54
    const v2, 0x7f0d00be

    invoke-virtual {p0, v2}, Lcom/dodonew/online/ui/GuessDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/dodonew/online/view/GuessDetailView;

    iput-object v2, p0, Lcom/dodonew/online/ui/GuessDetailActivity;->guessDetailView:Lcom/dodonew/online/view/GuessDetailView;

    .line 55
    iget-object v2, p0, Lcom/dodonew/online/ui/GuessDetailActivity;->raceView:Lcom/dodonew/online/view/RaceView;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-static {p0}, Lcom/dodonew/online/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x64

    div-int/lit16 v5, v5, 0x258

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/dodonew/online/view/RaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    invoke-virtual {p0}, Lcom/dodonew/online/ui/GuessDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 57
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 58
    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dodonew/online/ui/GuessDetailActivity;->title:Ljava/lang/String;

    .line 59
    iget-object v2, p0, Lcom/dodonew/online/ui/GuessDetailActivity;->title:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/dodonew/online/ui/GuessDetailActivity;->setTitle(Ljava/lang/String;)V

    .line 60
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/dodonew/online/ui/GuessDetailActivity;->setNavigationIcon(I)V

    .line 61
    const-string v2, "raceId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "raceId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 67
    .end local v1    # "raceId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 65
    .restart local v1    # "raceId":Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v2}, Lcom/dodonew/online/bean/User;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/dodonew/online/ui/GuessDetailActivity;->queryGuessDetail(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private queryGuessDetail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "raceId"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/dodonew/online/ui/GuessDetailActivity;->addRequestPara(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    new-instance v0, Lcom/dodonew/online/ui/GuessDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/GuessDetailActivity$1;-><init>(Lcom/dodonew/online/ui/GuessDetailActivity;)V

    .line 87
    invoke-virtual {v0}, Lcom/dodonew/online/ui/GuessDetailActivity$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/GuessDetailActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 88
    iget-object v0, p0, Lcom/dodonew/online/ui/GuessDetailActivity;->para:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/ui/GuessDetailActivity;->para:Ljava/util/Map;

    .line 91
    :cond_0
    const-string v2, "http://api.dodovip.com/api/guess/detail"

    .line 92
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/dodonew/online/http/JsonRequest;

    const-string v3, ""

    new-instance v4, Lcom/dodonew/online/ui/GuessDetailActivity$2;

    invoke-direct {v4, p0}, Lcom/dodonew/online/ui/GuessDetailActivity$2;-><init>(Lcom/dodonew/online/ui/GuessDetailActivity;)V

    iget-object v6, p0, Lcom/dodonew/online/ui/GuessDetailActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/dodonew/online/http/JsonRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/GuessDetailActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    .line 102
    iget-object v0, p0, Lcom/dodonew/online/ui/GuessDetailActivity;->para:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/dodonew/online/ui/GuessDetailActivity;->requestNetwork(Ljava/util/Map;)V

    .line 103
    return-void
.end method

.method private requestNetwork(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "para":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/dodonew/online/ui/GuessDetailActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/http/JsonRequest;->addRequestMap(Ljava/util/Map;)V

    .line 112
    iget-object v0, p0, Lcom/dodonew/online/ui/GuessDetailActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-static {v0, p0}, Lcom/dodonew/online/DodonewOnlineApplication;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    .line 113
    return-void
.end method

.method private setGuess(Lcom/dodonew/online/bean/Guess;)V
    .locals 2
    .param p1, "obj"    # Lcom/dodonew/online/bean/Guess;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/dodonew/online/ui/GuessDetailActivity;->guess:Lcom/dodonew/online/bean/Guess;

    .line 118
    iget-object v0, p0, Lcom/dodonew/online/ui/GuessDetailActivity;->guess:Lcom/dodonew/online/bean/Guess;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/Guess;->getDetail()Lcom/dodonew/online/bean/Race;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/GuessDetailActivity;->race:Lcom/dodonew/online/bean/Race;

    .line 119
    iget-object v0, p0, Lcom/dodonew/online/ui/GuessDetailActivity;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/dodonew/online/ui/GuessDetailActivity;->race:Lcom/dodonew/online/bean/Race;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/Race;->getRaceTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/GuessDetailActivity;->setTitle(Ljava/lang/String;)V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/GuessDetailActivity;->raceView:Lcom/dodonew/online/view/RaceView;

    iget-object v1, p0, Lcom/dodonew/online/ui/GuessDetailActivity;->race:Lcom/dodonew/online/bean/Race;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/view/RaceView;->setRace(Lcom/dodonew/online/bean/Race;)V

    .line 123
    iget-object v0, p0, Lcom/dodonew/online/ui/GuessDetailActivity;->guessDetailView:Lcom/dodonew/online/view/GuessDetailView;

    iget-object v1, p0, Lcom/dodonew/online/ui/GuessDetailActivity;->guess:Lcom/dodonew/online/bean/Guess;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/view/GuessDetailView;->setGuess(Lcom/dodonew/online/bean/Guess;)V

    .line 124
    iget-object v0, p0, Lcom/dodonew/online/ui/GuessDetailActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->CONTENT:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    .line 125
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/dodonew/online/base/TitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f03002e

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/GuessDetailActivity;->setContentView(I)V

    .line 48
    invoke-direct {p0}, Lcom/dodonew/online/ui/GuessDetailActivity;->initView()V

    .line 49
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 138
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onPause()V

    .line 139
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 141
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 132
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onResume()V

    .line 133
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 135
    return-void
.end method
