.class public Lcom/dodonew/online/fragment/HomeFragment;
.super Landroid/support/v4/app/Fragment;
.source "HomeFragment.java"

# interfaces
.implements Lcom/dodonew/online/interfaces/OnNetworkResponseListener;


# instance fields
.field private DEFAULT_TYPE:Ljava/lang/reflect/Type;

.field private activeFragment:Lcom/dodonew/online/fragment/ActiveFragment;

.field private adapter:Lcom/dodonew/online/adapter/ViewPagerStateAdapter;

.field private cards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dodonew/online/bean/Card;",
            ">;"
        }
    .end annotation
.end field

.field private domainId:Ljava/lang/String;

.field private fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private guessFragment:Lcom/dodonew/online/fragment/GuessFragment;

.field private isScan:Z

.field private location:Ljava/lang/String;

.field private memberId:Ljava/lang/String;

.field private multiStateView:Lcom/dodonew/online/widget/MultiStateView;

.field private netBar:Lcom/dodonew/online/bean/NetBar;

.field private netbarId:Ljava/lang/String;

.field private newsFragment:Lcom/dodonew/online/fragment/NewsFragment;

.field public onRefreshListener:Lcom/dodonew/online/interfaces/OnRefreshListener;

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

.field private position:I

.field private request:Lcom/dodonew/online/http/JsonRequest;

.field private scanResultEvent:Lcom/dodonew/online/bean/ScanResultEvent;

.field private tabLayout:Landroid/support/design/widget/TabLayout;

.field private tipsView:Lcom/dodonew/online/view/TipsView;

.field private userId:Ljava/lang/String;

.field private videoFragment:Lcom/dodonew/online/fragment/VideoFragment;

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 63
    iput v1, p0, Lcom/dodonew/online/fragment/HomeFragment;->position:I

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->para:Ljava/util/Map;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->userId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->location:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->domainId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->netbarId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->memberId:Ljava/lang/String;

    .line 76
    iput-boolean v1, p0, Lcom/dodonew/online/fragment/HomeFragment;->isScan:Z

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/fragment/HomeFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/fragment/HomeFragment;

    .prologue
    .line 53
    iget v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->position:I

    return v0
.end method

.method static synthetic access$002(Lcom/dodonew/online/fragment/HomeFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/fragment/HomeFragment;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/dodonew/online/fragment/HomeFragment;->position:I

    return p1
.end method

.method static synthetic access$100(Lcom/dodonew/online/fragment/HomeFragment;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/fragment/HomeFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dodonew/online/fragment/HomeFragment;Lcom/dodonew/online/bean/OnlineState;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/fragment/HomeFragment;
    .param p1, "x1"    # Lcom/dodonew/online/bean/OnlineState;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/dodonew/online/fragment/HomeFragment;->setOnlineState(Lcom/dodonew/online/bean/OnlineState;)V

    return-void
.end method

.method static synthetic access$300(Lcom/dodonew/online/fragment/HomeFragment;Lcom/dodonew/online/bean/NetBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/fragment/HomeFragment;
    .param p1, "x1"    # Lcom/dodonew/online/bean/NetBar;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/dodonew/online/fragment/HomeFragment;->setNetBar(Lcom/dodonew/online/bean/NetBar;)V

    return-void
.end method

.method static synthetic access$400(Lcom/dodonew/online/fragment/HomeFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/fragment/HomeFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/dodonew/online/fragment/HomeFragment;->setCards(Ljava/util/List;)V

    return-void
.end method

.method private initData()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->fragments:Ljava/util/List;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->fragments:Ljava/util/List;

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->fragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 128
    invoke-static {}, Lcom/dodonew/online/fragment/NewsFragment;->newInstance()Lcom/dodonew/online/fragment/NewsFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->newsFragment:Lcom/dodonew/online/fragment/NewsFragment;

    .line 129
    iget-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->newsFragment:Lcom/dodonew/online/fragment/NewsFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dodonew/online/fragment/NewsFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 130
    invoke-static {}, Lcom/dodonew/online/fragment/VideoFragment;->newInstance()Lcom/dodonew/online/fragment/VideoFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->videoFragment:Lcom/dodonew/online/fragment/VideoFragment;

    .line 131
    iget-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->videoFragment:Lcom/dodonew/online/fragment/VideoFragment;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/dodonew/online/fragment/VideoFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 132
    invoke-static {}, Lcom/dodonew/online/fragment/GuessFragment;->newInstance()Lcom/dodonew/online/fragment/GuessFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->guessFragment:Lcom/dodonew/online/fragment/GuessFragment;

    .line 133
    iget-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->guessFragment:Lcom/dodonew/online/fragment/GuessFragment;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/dodonew/online/fragment/GuessFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 134
    invoke-static {}, Lcom/dodonew/online/fragment/ActiveFragment;->newInstance()Lcom/dodonew/online/fragment/ActiveFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->activeFragment:Lcom/dodonew/online/fragment/ActiveFragment;

    .line 135
    iget-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->activeFragment:Lcom/dodonew/online/fragment/ActiveFragment;

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1}, Lcom/dodonew/online/fragment/ActiveFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 136
    iget-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->fragments:Ljava/util/List;

    iget-object v1, p0, Lcom/dodonew/online/fragment/HomeFragment;->newsFragment:Lcom/dodonew/online/fragment/NewsFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->fragments:Ljava/util/List;

    iget-object v1, p0, Lcom/dodonew/online/fragment/HomeFragment;->videoFragment:Lcom/dodonew/online/fragment/VideoFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->fragments:Ljava/util/List;

    iget-object v1, p0, Lcom/dodonew/online/fragment/HomeFragment;->guessFragment:Lcom/dodonew/online/fragment/GuessFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->fragments:Ljava/util/List;

    iget-object v1, p0, Lcom/dodonew/online/fragment/HomeFragment;->activeFragment:Lcom/dodonew/online/fragment/ActiveFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    sget-object v0, Lcom/dodonew/online/config/Config;->HOME_TITLES:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dodonew/online/fragment/HomeFragment;->setViewPagerAdapter(Ljava/util/List;)V

    .line 141
    invoke-direct {p0}, Lcom/dodonew/online/fragment/HomeFragment;->setLocation()V

    .line 142
    sget-object v0, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    if-eqz v0, :cond_1

    .line 143
    sget-object v0, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/User;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->userId:Ljava/lang/String;

    .line 145
    :cond_1
    return-void
.end method

.method private initEvent(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 111
    const v0, 0x7f0d01c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/dodonew/online/fragment/HomeFragment$1;

    invoke-direct {v1, p0}, Lcom/dodonew/online/fragment/HomeFragment$1;-><init>(Lcom/dodonew/online/fragment/HomeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    return-void
.end method

.method public static newInstance()Lcom/dodonew/online/fragment/HomeFragment;
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/dodonew/online/fragment/HomeFragment;

    invoke-direct {v0}, Lcom/dodonew/online/fragment/HomeFragment;-><init>()V

    return-object v0
.end method

.method private queryMyCard(Ljava/lang/String;)V
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 259
    new-instance v0, Lcom/dodonew/online/fragment/HomeFragment$4;

    invoke-direct {v0, p0}, Lcom/dodonew/online/fragment/HomeFragment$4;-><init>(Lcom/dodonew/online/fragment/HomeFragment;)V

    .line 260
    invoke-virtual {v0}, Lcom/dodonew/online/fragment/HomeFragment$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 261
    iget-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 262
    iget-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->para:Ljava/util/Map;

    const-string v1, "userId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v0, "netCard/cards"

    iget-object v1, p0, Lcom/dodonew/online/fragment/HomeFragment;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/fragment/HomeFragment;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/fragment/HomeFragment;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 264
    return-void
.end method

.method private queryNetbarDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "domainId"    # Ljava/lang/String;
    .param p2, "netBarId"    # Ljava/lang/String;
    .param p3, "location"    # Ljava/lang/String;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->domainId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->netbarId:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->memberId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->memberId:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/dodonew/online/fragment/HomeFragment;->queryOnlineState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :goto_0
    return-void

    .line 277
    :cond_0
    iput-object p1, p0, Lcom/dodonew/online/fragment/HomeFragment;->domainId:Ljava/lang/String;

    .line 278
    iput-object p2, p0, Lcom/dodonew/online/fragment/HomeFragment;->netbarId:Ljava/lang/String;

    .line 279
    new-instance v0, Lcom/dodonew/online/fragment/HomeFragment$5;

    invoke-direct {v0, p0}, Lcom/dodonew/online/fragment/HomeFragment$5;-><init>(Lcom/dodonew/online/fragment/HomeFragment;)V

    .line 280
    invoke-virtual {v0}, Lcom/dodonew/online/fragment/HomeFragment$5;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 281
    iget-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 282
    iget-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->para:Ljava/util/Map;

    const-string v1, "domainId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    iget-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->para:Ljava/util/Map;

    const-string v1, "netBarId"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    iget-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->para:Ljava/util/Map;

    const-string v1, "location"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string v0, "oth/netbarList"

    iget-object v1, p0, Lcom/dodonew/online/fragment/HomeFragment;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/fragment/HomeFragment;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/fragment/HomeFragment;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    goto :goto_0
.end method

.method private queryOnlineState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "domainId"    # Ljava/lang/String;
    .param p2, "netbarId"    # Ljava/lang/String;
    .param p3, "memberId"    # Ljava/lang/String;

    .prologue
    .line 244
    new-instance v0, Lcom/dodonew/online/fragment/HomeFragment$3;

    invoke-direct {v0, p0}, Lcom/dodonew/online/fragment/HomeFragment$3;-><init>(Lcom/dodonew/online/fragment/HomeFragment;)V

    .line 245
    invoke-virtual {v0}, Lcom/dodonew/online/fragment/HomeFragment$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 246
    iget-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 247
    iget-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->para:Ljava/util/Map;

    const-string v1, "domainId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->para:Ljava/util/Map;

    const-string v1, "netBarId"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->para:Ljava/util/Map;

    const-string v1, "memberId"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string v0, "oth/online/state"

    iget-object v1, p0, Lcom/dodonew/online/fragment/HomeFragment;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/fragment/HomeFragment;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/fragment/HomeFragment;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 251
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
    .line 296
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

    .line 297
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/dodonew/online/http/JsonRequest;

    invoke-virtual {p0}, Lcom/dodonew/online/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v3, ""

    new-instance v4, Lcom/dodonew/online/fragment/HomeFragment$6;

    invoke-direct {v4, p0, p1}, Lcom/dodonew/online/fragment/HomeFragment$6;-><init>(Lcom/dodonew/online/fragment/HomeFragment;Ljava/lang/String;)V

    new-instance v5, Lcom/dodonew/online/fragment/HomeFragment$7;

    invoke-direct {v5, p0}, Lcom/dodonew/online/fragment/HomeFragment$7;-><init>(Lcom/dodonew/online/fragment/HomeFragment;)V

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/dodonew/online/http/JsonRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->request:Lcom/dodonew/online/http/JsonRequest;

    .line 322
    iget-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-virtual {v0, p2}, Lcom/dodonew/online/http/JsonRequest;->addRequestMap(Ljava/util/Map;)V

    .line 323
    iget-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-static {v0, p0}, Lcom/dodonew/online/DodonewOnlineApplication;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    .line 324
    return-void
.end method

.method private setCards(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Card;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 327
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/Card;>;"
    iget-object v1, p0, Lcom/dodonew/online/fragment/HomeFragment;->cards:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 328
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/dodonew/online/fragment/HomeFragment;->cards:Ljava/util/ArrayList;

    .line 330
    :cond_0
    iget-object v1, p0, Lcom/dodonew/online/fragment/HomeFragment;->cards:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 331
    iget-object v1, p0, Lcom/dodonew/online/fragment/HomeFragment;->cards:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 332
    iget-object v1, p0, Lcom/dodonew/online/fragment/HomeFragment;->cards:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/bean/Card;

    .line 333
    .local v0, "card":Lcom/dodonew/online/bean/Card;
    invoke-virtual {v0}, Lcom/dodonew/online/bean/Card;->getDomainID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/dodonew/online/fragment/HomeFragment;->netBar:Lcom/dodonew/online/bean/NetBar;

    invoke-virtual {v3}, Lcom/dodonew/online/bean/NetBar;->getDomainId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/dodonew/online/bean/Card;->getNetBarID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/dodonew/online/fragment/HomeFragment;->netBar:Lcom/dodonew/online/bean/NetBar;

    invoke-virtual {v3}, Lcom/dodonew/online/bean/NetBar;->getNetBarId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 334
    invoke-virtual {v0}, Lcom/dodonew/online/bean/Card;->getMemberNo()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dodonew/online/fragment/HomeFragment;->memberId:Ljava/lang/String;

    .line 335
    iget-object v1, p0, Lcom/dodonew/online/fragment/HomeFragment;->tipsView:Lcom/dodonew/online/view/TipsView;

    iget-object v2, p0, Lcom/dodonew/online/fragment/HomeFragment;->memberId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/dodonew/online/view/TipsView;->setMemberNo(Ljava/lang/String;)V

    .line 336
    iget-object v1, p0, Lcom/dodonew/online/fragment/HomeFragment;->netBar:Lcom/dodonew/online/bean/NetBar;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/NetBar;->getDomainId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dodonew/online/fragment/HomeFragment;->netBar:Lcom/dodonew/online/bean/NetBar;

    invoke-virtual {v2}, Lcom/dodonew/online/bean/NetBar;->getNetBarId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/dodonew/online/bean/Card;->getMemberNo()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/dodonew/online/fragment/HomeFragment;->queryOnlineState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    .end local v0    # "card":Lcom/dodonew/online/bean/Card;
    :cond_2
    return-void
.end method

.method private setLocation()V
    .locals 4

    .prologue
    .line 148
    sget-object v0, Lcom/dodonew/online/DodonewOnlineApplication;->myLocation:Lcom/amap/api/location/AMapLocation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->location:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/dodonew/online/DodonewOnlineApplication;->myLocation:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/dodonew/online/DodonewOnlineApplication;->myLocation:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->location:Ljava/lang/String;

    .line 151
    :cond_0
    return-void
.end method

.method private setNetBar(Lcom/dodonew/online/bean/NetBar;)V
    .locals 2
    .param p1, "netBar"    # Lcom/dodonew/online/bean/NetBar;

    .prologue
    .line 345
    if-nez p1, :cond_0

    .line 352
    :goto_0
    return-void

    .line 348
    :cond_0
    iput-object p1, p0, Lcom/dodonew/online/fragment/HomeFragment;->netBar:Lcom/dodonew/online/bean/NetBar;

    .line 349
    iget-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->tipsView:Lcom/dodonew/online/view/TipsView;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/view/TipsView;->setNetBar(Lcom/dodonew/online/bean/NetBar;)V

    .line 350
    iget-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->tipsView:Lcom/dodonew/online/view/TipsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dodonew/online/view/TipsView;->setVisibility(I)V

    .line 351
    iget-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->userId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/dodonew/online/fragment/HomeFragment;->queryMyCard(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setOnlineState(Lcom/dodonew/online/bean/OnlineState;)V
    .locals 2
    .param p1, "onlineState"    # Lcom/dodonew/online/bean/OnlineState;

    .prologue
    .line 355
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->isScan:Z

    .line 356
    if-nez p1, :cond_0

    .line 366
    :goto_0
    return-void

    .line 359
    :cond_0
    iget-object v0, p1, Lcom/dodonew/online/bean/OnlineState;->termId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->tipsView:Lcom/dodonew/online/view/TipsView;

    const-string v1, "\u672a\u4e0a\u673a"

    invoke-virtual {v0, v1}, Lcom/dodonew/online/view/TipsView;->setTips(Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->tipsView:Lcom/dodonew/online/view/TipsView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/dodonew/online/view/TipsView;->setVisibility(I)V

    goto :goto_0

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->tipsView:Lcom/dodonew/online/view/TipsView;

    const-string v1, "\u6b63\u5728\u4e0a\u7f51"

    invoke-virtual {v0, v1}, Lcom/dodonew/online/view/TipsView;->setTips(Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->tipsView:Lcom/dodonew/online/view/TipsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dodonew/online/view/TipsView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setViewPagerAdapter(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "titles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/dodonew/online/adapter/ViewPagerStateAdapter;

    iget-object v1, p0, Lcom/dodonew/online/fragment/HomeFragment;->fragments:Ljava/util/List;

    invoke-virtual {p0}, Lcom/dodonew/online/fragment/HomeFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/dodonew/online/adapter/ViewPagerStateAdapter;-><init>(Ljava/util/List;Ljava/util/List;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->adapter:Lcom/dodonew/online/adapter/ViewPagerStateAdapter;

    .line 155
    iget-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/dodonew/online/fragment/HomeFragment;->adapter:Lcom/dodonew/online/adapter/ViewPagerStateAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 156
    iget-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Lcom/dodonew/online/fragment/HomeFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 157
    iget-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    new-instance v1, Lcom/dodonew/online/fragment/HomeFragment$2;

    invoke-direct {v1, p0}, Lcom/dodonew/online/fragment/HomeFragment$2;-><init>(Lcom/dodonew/online/fragment/HomeFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 174
    return-void
.end method


# virtual methods
.method public isDataEmpty(Z)V
    .locals 2
    .param p1, "isEmpty"    # Z

    .prologue
    .line 192
    if-eqz p1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->EMPTY:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    .line 196
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 96
    const v1, 0x7f030087

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 97
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d018a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dodonew/online/fragment/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    const v1, 0x7f0d0090

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/widget/MultiStateView;

    iput-object v1, p0, Lcom/dodonew/online/fragment/HomeFragment;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    .line 99
    const v1, 0x7f0d01a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/view/TipsView;

    iput-object v1, p0, Lcom/dodonew/online/fragment/HomeFragment;->tipsView:Lcom/dodonew/online/view/TipsView;

    .line 100
    const v1, 0x7f0d00cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/TabLayout;

    iput-object v1, p0, Lcom/dodonew/online/fragment/HomeFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    .line 101
    const v1, 0x7f0d00cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/dodonew/online/fragment/HomeFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 102
    iget-object v1, p0, Lcom/dodonew/online/fragment/HomeFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 103
    invoke-direct {p0, v0}, Lcom/dodonew/online/fragment/HomeFragment;->initEvent(Landroid/view/View;)V

    .line 104
    invoke-direct {p0}, Lcom/dodonew/online/fragment/HomeFragment;->initData()V

    .line 105
    invoke-static {}, Lcom/dodonew/online/bean/EventBusManager;->getInstace()Lcom/dodonew/online/bean/EventBusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dodonew/online/bean/EventBusManager;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lde/greenrobot/event/EventBus;->registerSticky(Ljava/lang/Object;)V

    .line 106
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 370
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 371
    invoke-static {}, Lcom/dodonew/online/bean/EventBusManager;->getInstace()Lcom/dodonew/online/bean/EventBusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dodonew/online/bean/EventBusManager;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 372
    return-void
.end method

.method public onEventMainThread(Lcom/dodonew/online/bean/OfflineEvent;)V
    .locals 2
    .param p1, "offlineEvent"    # Lcom/dodonew/online/bean/OfflineEvent;

    .prologue
    .line 229
    if-nez p1, :cond_0

    .line 234
    :goto_0
    return-void

    .line 232
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->scanResultEvent:Lcom/dodonew/online/bean/ScanResultEvent;

    .line 233
    iget-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->tipsView:Lcom/dodonew/online/view/TipsView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/dodonew/online/view/TipsView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onEventMainThread(Lcom/dodonew/online/bean/ScanResultEvent;)V
    .locals 3
    .param p1, "scanResultEvent"    # Lcom/dodonew/online/bean/ScanResultEvent;

    .prologue
    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->isScan:Z

    .line 220
    if-nez p1, :cond_0

    .line 226
    :goto_0
    return-void

    .line 223
    :cond_0
    invoke-direct {p0}, Lcom/dodonew/online/fragment/HomeFragment;->setLocation()V

    .line 224
    iput-object p1, p0, Lcom/dodonew/online/fragment/HomeFragment;->scanResultEvent:Lcom/dodonew/online/bean/ScanResultEvent;

    .line 225
    iget-object v0, p1, Lcom/dodonew/online/bean/ScanResultEvent;->domainId:Ljava/lang/String;

    iget-object v1, p1, Lcom/dodonew/online/bean/ScanResultEvent;->netbarId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dodonew/online/fragment/HomeFragment;->location:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/fragment/HomeFragment;->queryNetbarDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 214
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 215
    invoke-virtual {p0}, Lcom/dodonew/online/fragment/HomeFragment;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public onRequest()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->LOADING:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    .line 179
    return-void
.end method

.method public onResponse(Z)V
    .locals 2
    .param p1, "isSuccess"    # Z

    .prologue
    .line 183
    iget-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->CONTENT:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    .line 184
    if-nez p1, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/dodonew/online/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/base/ProgressActivity;

    const-string v1, "\u51fa\u73b0\u9519\u8bef,\u8bf7\u7a0d\u540e\u518d\u8bd5."

    invoke-virtual {v0, v1}, Lcom/dodonew/online/base/ProgressActivity;->showToast(Ljava/lang/String;)V

    .line 188
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 200
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 201
    invoke-virtual {p0}, Lcom/dodonew/online/fragment/HomeFragment;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->scanResultEvent:Lcom/dodonew/online/bean/ScanResultEvent;

    if-nez v0, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-boolean v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->isScan:Z

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->memberId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment;->scanResultEvent:Lcom/dodonew/online/bean/ScanResultEvent;

    iget-object v0, v0, Lcom/dodonew/online/bean/ScanResultEvent;->domainId:Ljava/lang/String;

    iget-object v1, p0, Lcom/dodonew/online/fragment/HomeFragment;->scanResultEvent:Lcom/dodonew/online/bean/ScanResultEvent;

    iget-object v1, v1, Lcom/dodonew/online/bean/ScanResultEvent;->netbarId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dodonew/online/fragment/HomeFragment;->memberId:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/fragment/HomeFragment;->queryOnlineState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
