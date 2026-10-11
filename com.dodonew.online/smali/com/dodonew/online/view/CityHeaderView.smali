.class public Lcom/dodonew/online/view/CityHeaderView;
.super Landroid/widget/LinearLayout;
.source "CityHeaderView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/view/CityHeaderView$CityOnClickListener;
    }
.end annotation


# instance fields
.field private cityOnClickListener:Lcom/dodonew/online/view/CityHeaderView$CityOnClickListener;

.field context:Landroid/content/Context;

.field private gv:Lcom/dodonew/online/widget/MGridView;

.field private hotCities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/City;",
            ">;"
        }
    .end annotation
.end field

.field private hotCityAdapter:Lcom/dodonew/online/adapter/HotCityAdapter;

.field inflater:Landroid/view/LayoutInflater;

.field private list:[Ljava/lang/String;

.field private tv_location:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    invoke-direct {p0, p1}, Lcom/dodonew/online/view/CityHeaderView;->init(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "list"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/City;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p3, "hotCities":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/City;>;"
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 41
    iput-object p2, p0, Lcom/dodonew/online/view/CityHeaderView;->list:[Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/dodonew/online/view/CityHeaderView;->hotCities:Ljava/util/List;

    .line 43
    invoke-direct {p0, p1}, Lcom/dodonew/online/view/CityHeaderView;->init(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/view/CityHeaderView;)Lcom/dodonew/online/view/CityHeaderView$CityOnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/view/CityHeaderView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dodonew/online/view/CityHeaderView;->cityOnClickListener:Lcom/dodonew/online/view/CityHeaderView$CityOnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dodonew/online/view/CityHeaderView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/view/CityHeaderView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dodonew/online/view/CityHeaderView;->hotCities:Ljava/util/List;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/dodonew/online/view/CityHeaderView;->context:Landroid/content/Context;

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/view/CityHeaderView;->inflater:Landroid/view/LayoutInflater;

    .line 55
    iget-object v0, p0, Lcom/dodonew/online/view/CityHeaderView;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300bb

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 56
    invoke-direct {p0}, Lcom/dodonew/online/view/CityHeaderView;->intView()V

    .line 57
    return-void
.end method

.method private intView()V
    .locals 3

    .prologue
    .line 60
    const v1, 0x7f0d0222

    invoke-virtual {p0, v1}, Lcom/dodonew/online/view/CityHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/dodonew/online/view/CityHeaderView;->tv_location:Landroid/widget/TextView;

    .line 61
    invoke-virtual {p0}, Lcom/dodonew/online/view/CityHeaderView;->initText()V

    .line 62
    const v1, 0x7f0d0223

    invoke-virtual {p0, v1}, Lcom/dodonew/online/view/CityHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 63
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d0225

    invoke-virtual {p0, v1}, Lcom/dodonew/online/view/CityHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/widget/MGridView;

    iput-object v1, p0, Lcom/dodonew/online/view/CityHeaderView;->gv:Lcom/dodonew/online/widget/MGridView;

    .line 64
    iget-object v1, p0, Lcom/dodonew/online/view/CityHeaderView;->gv:Lcom/dodonew/online/widget/MGridView;

    new-instance v2, Lcom/dodonew/online/view/CityHeaderView$1;

    invoke-direct {v2, p0}, Lcom/dodonew/online/view/CityHeaderView$1;-><init>(Lcom/dodonew/online/view/CityHeaderView;)V

    invoke-virtual {v1, v2}, Lcom/dodonew/online/widget/MGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 72
    return-void
.end method


# virtual methods
.method public initText()V
    .locals 3

    .prologue
    .line 76
    sget-object v0, Lcom/dodonew/online/DodonewOnlineApplication;->myLocation:Lcom/amap/api/location/AMapLocation;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/dodonew/online/view/CityHeaderView;->tv_location:Landroid/widget/TextView;

    sget-object v1, Lcom/dodonew/online/DodonewOnlineApplication;->myLocation:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/dodonew/online/view/CityHeaderView;->tv_location:Landroid/widget/TextView;

    new-instance v1, Lcom/dodonew/online/view/CityHeaderView$2;

    invoke-direct {v1, p0}, Lcom/dodonew/online/view/CityHeaderView$2;-><init>(Lcom/dodonew/online/view/CityHeaderView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/view/CityHeaderView;->tv_location:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dodonew/online/view/CityHeaderView;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060043

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setCityOnClickListener(Lcom/dodonew/online/view/CityHeaderView$CityOnClickListener;)V
    .locals 0
    .param p1, "cityOnClickListener"    # Lcom/dodonew/online/view/CityHeaderView$CityOnClickListener;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/dodonew/online/view/CityHeaderView;->cityOnClickListener:Lcom/dodonew/online/view/CityHeaderView$CityOnClickListener;

    .line 112
    return-void
.end method

.method public setHotCities([Ljava/lang/String;)V
    .locals 0
    .param p1, "ls"    # [Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/dodonew/online/view/CityHeaderView;->list:[Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setHotCityAdapter()V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/dodonew/online/view/CityHeaderView;->hotCityAdapter:Lcom/dodonew/online/adapter/HotCityAdapter;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/dodonew/online/adapter/HotCityAdapter;

    iget-object v1, p0, Lcom/dodonew/online/view/CityHeaderView;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/dodonew/online/view/CityHeaderView;->list:[Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/dodonew/online/adapter/HotCityAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dodonew/online/view/CityHeaderView;->hotCityAdapter:Lcom/dodonew/online/adapter/HotCityAdapter;

    .line 104
    iget-object v0, p0, Lcom/dodonew/online/view/CityHeaderView;->gv:Lcom/dodonew/online/widget/MGridView;

    iget-object v1, p0, Lcom/dodonew/online/view/CityHeaderView;->hotCityAdapter:Lcom/dodonew/online/adapter/HotCityAdapter;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/view/CityHeaderView;->hotCityAdapter:Lcom/dodonew/online/adapter/HotCityAdapter;

    invoke-virtual {v0}, Lcom/dodonew/online/adapter/HotCityAdapter;->notifyDataSetChanged()V

    .line 107
    return-void
.end method
