.class public Lcom/dodonew/online/view/CityView;
.super Landroid/widget/LinearLayout;
.source "CityView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/view/CityView$OnCityClcikListener;
    }
.end annotation


# instance fields
.field private cities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/City;",
            ">;"
        }
    .end annotation
.end field

.field private cityAdapter:Lcom/dodonew/online/adapter/CityAdapter;

.field private context:Landroid/content/Context;

.field private listView:Landroid/widget/ListView;

.field private ll_popup:Landroid/widget/LinearLayout;

.field private onCityClcikListener:Lcom/dodonew/online/view/CityView$OnCityClcikListener;

.field private popupWindow:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dodonew/online/view/CityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    invoke-direct {p0, p1}, Lcom/dodonew/online/view/CityView;->init(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/view/CityView;)Lcom/dodonew/online/view/CityView$OnCityClcikListener;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/view/CityView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/dodonew/online/view/CityView;->onCityClcikListener:Lcom/dodonew/online/view/CityView$OnCityClcikListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dodonew/online/view/CityView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/view/CityView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/dodonew/online/view/CityView;->cities:Ljava/util/List;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 51
    iput-object p1, p0, Lcom/dodonew/online/view/CityView;->context:Landroid/content/Context;

    .line 52
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300ba

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 53
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d0220

    invoke-virtual {p0, v1}, Lcom/dodonew/online/view/CityView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/dodonew/online/view/CityView;->ll_popup:Landroid/widget/LinearLayout;

    .line 54
    const v1, 0x7f0d0221

    invoke-virtual {p0, v1}, Lcom/dodonew/online/view/CityView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/dodonew/online/view/CityView;->listView:Landroid/widget/ListView;

    .line 55
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v0, v3, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/dodonew/online/view/CityView;->popupWindow:Landroid/widget/PopupWindow;

    .line 56
    iget-object v1, p0, Lcom/dodonew/online/view/CityView;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 57
    iget-object v1, p0, Lcom/dodonew/online/view/CityView;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 58
    iget-object v1, p0, Lcom/dodonew/online/view/CityView;->popupWindow:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/dodonew/online/view/CityView;->cities:Ljava/util/List;

    .line 61
    iget-object v1, p0, Lcom/dodonew/online/view/CityView;->listView:Landroid/widget/ListView;

    new-instance v2, Lcom/dodonew/online/view/CityView$1;

    invoke-direct {v2, p0}, Lcom/dodonew/online/view/CityView$1;-><init>(Lcom/dodonew/online/view/CityView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 69
    return-void
.end method

.method private setCityAdapter()V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dodonew/online/view/CityView;->cityAdapter:Lcom/dodonew/online/adapter/CityAdapter;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/dodonew/online/adapter/CityAdapter;

    iget-object v1, p0, Lcom/dodonew/online/view/CityView;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/dodonew/online/view/CityView;->cities:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/dodonew/online/adapter/CityAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/dodonew/online/view/CityView;->cityAdapter:Lcom/dodonew/online/adapter/CityAdapter;

    .line 81
    iget-object v0, p0, Lcom/dodonew/online/view/CityView;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/dodonew/online/view/CityView;->cityAdapter:Lcom/dodonew/online/adapter/CityAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/view/CityView;->cityAdapter:Lcom/dodonew/online/adapter/CityAdapter;

    invoke-virtual {v0}, Lcom/dodonew/online/adapter/CityAdapter;->notifyDataSetChanged()V

    .line 84
    return-void
.end method


# virtual methods
.method public dissMiss()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/dodonew/online/view/CityView;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/dodonew/online/view/CityView;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/view/CityView;->ll_popup:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 106
    return-void
.end method

.method public setCities(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/City;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/City;>;"
    iget-object v0, p0, Lcom/dodonew/online/view/CityView;->cities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 74
    iget-object v0, p0, Lcom/dodonew/online/view/CityView;->cities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 75
    invoke-direct {p0}, Lcom/dodonew/online/view/CityView;->setCityAdapter()V

    .line 76
    return-void
.end method

.method public setOnCityClcikListener(Lcom/dodonew/online/view/CityView$OnCityClcikListener;)V
    .locals 0
    .param p1, "onCityClcikListener"    # Lcom/dodonew/online/view/CityView$OnCityClcikListener;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/dodonew/online/view/CityView;->onCityClcikListener:Lcom/dodonew/online/view/CityView$OnCityClcikListener;

    .line 89
    return-void
.end method

.method public showPop(Landroid/view/View;)V
    .locals 4
    .param p1, "showView"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 92
    iget-object v0, p0, Lcom/dodonew/online/view/CityView;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/dodonew/online/view/CityView;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 99
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/view/CityView;->ll_popup:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/dodonew/online/view/CityView;->context:Landroid/content/Context;

    const v2, 0x7f04001c

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 96
    iget-object v0, p0, Lcom/dodonew/online/view/CityView;->popupWindow:Landroid/widget/PopupWindow;

    const/16 v1, 0x30

    invoke-virtual {v0, p1, v1, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method
