.class public Lcom/dodonew/online/ui/MyOrderActivity;
.super Lcom/dodonew/online/base/TitleActivity;
.source "MyOrderActivity.java"


# instance fields
.field private DEFAULT_TYPE:Ljava/lang/reflect/Type;

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

.field private tabLayout:Landroid/support/design/widget/TabLayout;

.field private viewPager:Landroid/support/v4/view/ViewPager;

.field private viewPagerStateAdapter:Lcom/dodonew/online/adapter/ViewPagerStateAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/dodonew/online/base/TitleActivity;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/ui/MyOrderActivity;->para:Ljava/util/Map;

    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 55
    const-string v0, "\u6211\u7684\u8ba2\u5355"

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/MyOrderActivity;->setTitle(Ljava/lang/String;)V

    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/MyOrderActivity;->setNavigationIcon(I)V

    .line 57
    const v0, 0x7f0d00cb

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/MyOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p0, Lcom/dodonew/online/ui/MyOrderActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    .line 58
    const v0, 0x7f0d00cc

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/MyOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/dodonew/online/ui/MyOrderActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 59
    iget-object v0, p0, Lcom/dodonew/online/ui/MyOrderActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 60
    invoke-direct {p0}, Lcom/dodonew/online/ui/MyOrderActivity;->setViewPagerStateAdapter()V

    .line 61
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
    .line 79
    .local p2, "para":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/dodonew/online/ui/MyOrderActivity;->showProgress()V

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://api.dodovip.com/book/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/dodonew/online/http/JsonRequest;

    const-string v3, ""

    new-instance v4, Lcom/dodonew/online/ui/MyOrderActivity$1;

    invoke-direct {v4, p0, p1}, Lcom/dodonew/online/ui/MyOrderActivity$1;-><init>(Lcom/dodonew/online/ui/MyOrderActivity;Ljava/lang/String;)V

    new-instance v5, Lcom/dodonew/online/ui/MyOrderActivity$2;

    invoke-direct {v5, p0}, Lcom/dodonew/online/ui/MyOrderActivity$2;-><init>(Lcom/dodonew/online/ui/MyOrderActivity;)V

    move-object v1, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/dodonew/online/http/JsonRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/MyOrderActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    .line 101
    iget-object v0, p0, Lcom/dodonew/online/ui/MyOrderActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-virtual {v0, p2}, Lcom/dodonew/online/http/JsonRequest;->addRequestMap(Ljava/util/Map;)V

    .line 102
    iget-object v0, p0, Lcom/dodonew/online/ui/MyOrderActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-static {v0, p0}, Lcom/dodonew/online/DodonewOnlineApplication;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    .line 103
    return-void
.end method

.method private setViewPagerStateAdapter()V
    .locals 4

    .prologue
    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/ui/MyOrderActivity;->fragments:Ljava/util/List;

    .line 65
    iget-object v0, p0, Lcom/dodonew/online/ui/MyOrderActivity;->fragments:Ljava/util/List;

    new-instance v1, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;

    invoke-direct {v1}, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/dodonew/online/ui/MyOrderActivity;->fragments:Ljava/util/List;

    new-instance v1, Lcom/dodonew/online/fragment/MyOrderSeatFragment;

    invoke-direct {v1}, Lcom/dodonew/online/fragment/MyOrderSeatFragment;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance v0, Lcom/dodonew/online/adapter/ViewPagerStateAdapter;

    iget-object v1, p0, Lcom/dodonew/online/ui/MyOrderActivity;->fragments:Ljava/util/List;

    sget-object v2, Lcom/dodonew/online/config/Config;->ORDER_TITLES:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/dodonew/online/ui/MyOrderActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/dodonew/online/adapter/ViewPagerStateAdapter;-><init>(Ljava/util/List;Ljava/util/List;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/MyOrderActivity;->viewPagerStateAdapter:Lcom/dodonew/online/adapter/ViewPagerStateAdapter;

    .line 68
    iget-object v0, p0, Lcom/dodonew/online/ui/MyOrderActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/dodonew/online/ui/MyOrderActivity;->viewPagerStateAdapter:Lcom/dodonew/online/adapter/ViewPagerStateAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 69
    iget-object v0, p0, Lcom/dodonew/online/ui/MyOrderActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Lcom/dodonew/online/ui/MyOrderActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 70
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/dodonew/online/base/TitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v0, 0x7f030036

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/MyOrderActivity;->setContentView(I)V

    .line 51
    invoke-direct {p0}, Lcom/dodonew/online/ui/MyOrderActivity;->initView()V

    .line 52
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 115
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onPause()V

    .line 116
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 118
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 109
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onResume()V

    .line 110
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 112
    return-void
.end method
