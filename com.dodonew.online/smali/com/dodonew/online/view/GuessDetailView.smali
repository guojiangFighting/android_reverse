.class public Lcom/dodonew/online/view/GuessDetailView;
.super Landroid/widget/LinearLayout;
.source "GuessDetailView.java"


# instance fields
.field private DEFAULT_TYPE:Ljava/lang/reflect/Type;

.field private context:Landroid/content/Context;

.field df:Ljava/text/DecimalFormat;

.field private guessDetailAdapter:Lcom/dodonew/online/adapter/GuessDetailAdapter;

.field isSuccess:Z

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

.field private raceId:Ljava/lang/String;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private request:Lcom/dodonew/online/http/JsonRequest;

.field private scoreDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/ScoreData;",
            ">;"
        }
    .end annotation
.end field

.field private tvTeamAProgress:Landroid/widget/TextView;

.field private tvTeamBProgress:Landroid/widget/TextView;

.field private userScore:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dodonew/online/view/GuessDetailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/dodonew/online/view/GuessDetailView;->width:I

    .line 46
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "####.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dodonew/online/view/GuessDetailView;->df:Ljava/text/DecimalFormat;

    .line 61
    invoke-direct {p0, p1}, Lcom/dodonew/online/view/GuessDetailView;->init(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/view/GuessDetailView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/view/GuessDetailView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dodonew/online/view/GuessDetailView;->sendGuess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/dodonew/online/view/GuessDetailView;)Landroid/support/v7/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/view/GuessDetailView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dodonew/online/view/GuessDetailView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/dodonew/online/view/GuessDetailView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/view/GuessDetailView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/dodonew/online/view/GuessDetailView;->userScore:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/dodonew/online/view/GuessDetailView;)Lcom/dodonew/online/adapter/GuessDetailAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/view/GuessDetailView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dodonew/online/view/GuessDetailView;->guessDetailAdapter:Lcom/dodonew/online/adapter/GuessDetailAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/dodonew/online/view/GuessDetailView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/view/GuessDetailView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dodonew/online/view/GuessDetailView;->context:Landroid/content/Context;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/dodonew/online/view/GuessDetailView;->context:Landroid/content/Context;

    .line 66
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300c0

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 67
    invoke-static {p1}, Lcom/dodonew/online/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/dodonew/online/view/GuessDetailView;->width:I

    .line 68
    const v1, 0x7f0d0229

    invoke-virtual {p0, v1}, Lcom/dodonew/online/view/GuessDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/dodonew/online/view/GuessDetailView;->tvTeamAProgress:Landroid/widget/TextView;

    .line 69
    const v1, 0x7f0d022a

    invoke-virtual {p0, v1}, Lcom/dodonew/online/view/GuessDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/dodonew/online/view/GuessDetailView;->tvTeamBProgress:Landroid/widget/TextView;

    .line 70
    const v1, 0x7f0d022b

    invoke-virtual {p0, v1}, Lcom/dodonew/online/view/GuessDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/dodonew/online/view/GuessDetailView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 71
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 72
    .local v0, "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    iget-object v1, p0, Lcom/dodonew/online/view/GuessDetailView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 73
    iget-object v1, p0, Lcom/dodonew/online/view/GuessDetailView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 74
    iget-object v1, p0, Lcom/dodonew/online/view/GuessDetailView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 75
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
    .line 181
    .local p1, "para":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/dodonew/online/view/GuessDetailView;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/http/JsonRequest;->addRequestMap(Ljava/util/Map;)V

    .line 182
    iget-object v0, p0, Lcom/dodonew/online/view/GuessDetailView;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-static {v0, p0}, Lcom/dodonew/online/DodonewOnlineApplication;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    .line 183
    return-void
.end method

.method private sendGuess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "cmdId"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "betNum"    # Ljava/lang/String;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/dodonew/online/view/GuessDetailView;->context:Landroid/content/Context;

    check-cast v0, Lcom/dodonew/online/base/BaseActivity;

    invoke-virtual {v0}, Lcom/dodonew/online/base/BaseActivity;->showProgress()V

    .line 137
    iget-object v0, p0, Lcom/dodonew/online/view/GuessDetailView;->para:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/view/GuessDetailView;->para:Ljava/util/Map;

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/view/GuessDetailView;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 141
    iget-object v0, p0, Lcom/dodonew/online/view/GuessDetailView;->para:Ljava/util/Map;

    const-string v1, "raceId"

    iget-object v3, p0, Lcom/dodonew/online/view/GuessDetailView;->raceId:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lcom/dodonew/online/view/GuessDetailView;->para:Ljava/util/Map;

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lcom/dodonew/online/view/GuessDetailView;->para:Ljava/util/Map;

    const-string v1, "userId"

    sget-object v3, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v3}, Lcom/dodonew/online/bean/User;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lcom/dodonew/online/view/GuessDetailView;->para:Ljava/util/Map;

    const-string v1, "betNum"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    new-instance v0, Lcom/dodonew/online/view/GuessDetailView$2;

    invoke-direct {v0, p0}, Lcom/dodonew/online/view/GuessDetailView$2;-><init>(Lcom/dodonew/online/view/GuessDetailView;)V

    .line 146
    invoke-virtual {v0}, Lcom/dodonew/online/view/GuessDetailView$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/view/GuessDetailView;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://api.dodovip.com/api/guess/game/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/dodonew/online/http/JsonRequest;

    iget-object v1, p0, Lcom/dodonew/online/view/GuessDetailView;->context:Landroid/content/Context;

    const-string v3, ""

    new-instance v4, Lcom/dodonew/online/view/GuessDetailView$3;

    invoke-direct {v4, p0}, Lcom/dodonew/online/view/GuessDetailView$3;-><init>(Lcom/dodonew/online/view/GuessDetailView;)V

    new-instance v5, Lcom/dodonew/online/view/GuessDetailView$4;

    invoke-direct {v5, p0}, Lcom/dodonew/online/view/GuessDetailView$4;-><init>(Lcom/dodonew/online/view/GuessDetailView;)V

    iget-object v6, p0, Lcom/dodonew/online/view/GuessDetailView;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct/range {v0 .. v6}, Lcom/dodonew/online/http/JsonRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/dodonew/online/view/GuessDetailView;->request:Lcom/dodonew/online/http/JsonRequest;

    .line 171
    iget-object v0, p0, Lcom/dodonew/online/view/GuessDetailView;->para:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/dodonew/online/view/GuessDetailView;->requestNetwork(Ljava/util/Map;)V

    .line 172
    return-void
.end method

.method private setGuessDetailAdapter()V
    .locals 4

    .prologue
    .line 113
    iget-object v0, p0, Lcom/dodonew/online/view/GuessDetailView;->guessDetailAdapter:Lcom/dodonew/online/adapter/GuessDetailAdapter;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lcom/dodonew/online/adapter/GuessDetailAdapter;

    iget-object v1, p0, Lcom/dodonew/online/view/GuessDetailView;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/dodonew/online/view/GuessDetailView;->scoreDatas:Ljava/util/List;

    new-instance v3, Lcom/dodonew/online/view/GuessDetailView$1;

    invoke-direct {v3, p0}, Lcom/dodonew/online/view/GuessDetailView$1;-><init>(Lcom/dodonew/online/view/GuessDetailView;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/dodonew/online/adapter/GuessDetailAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/dodonew/online/adapter/GuessDetailAdapter$OnConfirmClickListener;)V

    iput-object v0, p0, Lcom/dodonew/online/view/GuessDetailView;->guessDetailAdapter:Lcom/dodonew/online/adapter/GuessDetailAdapter;

    .line 128
    iget-object v0, p0, Lcom/dodonew/online/view/GuessDetailView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/dodonew/online/view/GuessDetailView;->guessDetailAdapter:Lcom/dodonew/online/adapter/GuessDetailAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/view/GuessDetailView;->guessDetailAdapter:Lcom/dodonew/online/adapter/GuessDetailAdapter;

    invoke-virtual {v0}, Lcom/dodonew/online/adapter/GuessDetailAdapter;->notifyDataSetChanged()V

    .line 131
    return-void
.end method

.method private setScoreDatas(Lcom/dodonew/online/bean/Guess;)V
    .locals 8
    .param p1, "guess"    # Lcom/dodonew/online/bean/Guess;

    .prologue
    .line 97
    iget-object v2, p0, Lcom/dodonew/online/view/GuessDetailView;->scoreDatas:Ljava/util/List;

    if-nez v2, :cond_0

    .line 98
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/dodonew/online/view/GuessDetailView;->scoreDatas:Ljava/util/List;

    .line 100
    :cond_0
    invoke-virtual {p1}, Lcom/dodonew/online/bean/Guess;->getDetail()Lcom/dodonew/online/bean/Race;

    move-result-object v0

    .line 101
    .local v0, "race":Lcom/dodonew/online/bean/Race;
    invoke-virtual {p1}, Lcom/dodonew/online/bean/Guess;->getUserScore()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dodonew/online/view/GuessDetailView;->userScore:Ljava/lang/String;

    .line 102
    invoke-virtual {v0}, Lcom/dodonew/online/bean/Race;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dodonew/online/view/GuessDetailView;->raceId:Ljava/lang/String;

    .line 103
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v1, "scoreCategories":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/ScoreCategory;>;"
    new-instance v2, Lcom/dodonew/online/bean/ScoreCategory;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/Race;->getTeamA()Lcom/dodonew/online/bean/Team;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dodonew/online/bean/Team;->getTeamId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dodonew/online/bean/Race;->getaOdds()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/dodonew/online/bean/Race;->getTeamA()Lcom/dodonew/online/bean/Team;

    move-result-object v6

    invoke-virtual {v6}, Lcom/dodonew/online/bean/Team;->getTeamName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   \u80dc"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/dodonew/online/bean/ScoreCategory;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v2, Lcom/dodonew/online/bean/ScoreCategory;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/Race;->getTeamB()Lcom/dodonew/online/bean/Team;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dodonew/online/bean/Team;->getTeamId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dodonew/online/bean/Race;->getbOdds()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/dodonew/online/bean/Race;->getTeamB()Lcom/dodonew/online/bean/Team;

    move-result-object v6

    invoke-virtual {v6}, Lcom/dodonew/online/bean/Team;->getTeamName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   \u80dc"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/dodonew/online/bean/ScoreCategory;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v2, p0, Lcom/dodonew/online/view/GuessDetailView;->scoreDatas:Ljava/util/List;

    new-instance v3, Lcom/dodonew/online/bean/ScoreData;

    const-string v4, "\u731c\u80dc\u8d1f"

    invoke-virtual {v0}, Lcom/dodonew/online/bean/Race;->getCountAll()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/dodonew/online/view/GuessDetailView;->userScore:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/dodonew/online/bean/ScoreData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v2, p0, Lcom/dodonew/online/view/GuessDetailView;->scoreDatas:Ljava/util/List;

    new-instance v3, Lcom/dodonew/online/bean/ScoreData;

    const-string v4, "\u731c\u6bd4\u5206 (\u5de6\u8fb9\u961f\u4f0d\u5728\u524d)"

    invoke-virtual {v0}, Lcom/dodonew/online/bean/Race;->getCountAll()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/dodonew/online/view/GuessDetailView;->userScore:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/dodonew/online/bean/Guess;->getScoreCategory()Ljava/util/List;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/dodonew/online/bean/ScoreData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method


# virtual methods
.method public setGuess(Lcom/dodonew/online/bean/Guess;)V
    .locals 12
    .param p1, "guess"    # Lcom/dodonew/online/bean/Guess;

    .prologue
    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    .line 79
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 81
    .local v2, "aRate":D
    invoke-virtual {p1}, Lcom/dodonew/online/bean/Guess;->getaCount()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "aCount":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/dodonew/online/bean/Guess;->getbCount()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "bCount":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 84
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 89
    :goto_0
    iget-object v5, p0, Lcom/dodonew/online/view/GuessDetailView;->tvTeamAProgress:Landroid/widget/TextView;

    iget v6, p0, Lcom/dodonew/online/view/GuessDetailView;->width:I

    int-to-double v6, v6

    mul-double/2addr v6, v2

    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    sub-double/2addr v6, v8

    double-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setWidth(I)V

    .line 90
    iget-object v5, p0, Lcom/dodonew/online/view/GuessDetailView;->tvTeamAProgress:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/dodonew/online/view/GuessDetailView;->df:Ljava/text/DecimalFormat;

    mul-double v8, v2, v10

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v5, p0, Lcom/dodonew/online/view/GuessDetailView;->tvTeamBProgress:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/dodonew/online/view/GuessDetailView;->df:Ljava/text/DecimalFormat;

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, v2

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    invoke-direct {p0, p1}, Lcom/dodonew/online/view/GuessDetailView;->setScoreDatas(Lcom/dodonew/online/bean/Guess;)V

    .line 93
    invoke-direct {p0}, Lcom/dodonew/online/view/GuessDetailView;->setGuessDetailAdapter()V

    .line 94
    return-void

    .line 86
    :cond_0
    invoke-virtual {p1}, Lcom/dodonew/online/bean/Guess;->getTotalCount()Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, "totalCount":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    div-double v2, v6, v8

    goto :goto_0
.end method
