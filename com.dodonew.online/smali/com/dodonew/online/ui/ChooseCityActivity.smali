.class public Lcom/dodonew/online/ui/ChooseCityActivity;
.super Lcom/dodonew/online/base/TitleActivity;
.source "ChooseCityActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/ui/ChooseCityActivity$LetterListViewListener;
    }
.end annotation


# instance fields
.field private DEFAULT_TYPE:Ljava/lang/reflect/Type;

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

.field private citiesAdapter:Lcom/dodonew/online/adapter/CitiesAdapter;

.field private cityHeaderView:Lcom/dodonew/online/view/CityHeaderView;

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

.field private input_length:I

.field private layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private letterListView:Lcom/dodonew/online/view/MyLetterListView;

.field private linearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private list:Ljava/util/List;

.field private listView:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;

.field private list_result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/City;",
            ">;"
        }
    .end annotation
.end field

.field private mContainer:Landroid/widget/RelativeLayout;

.field private mDialogText:Landroid/widget/TextView;

.field private mGson:Lcom/google/gson/Gson;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderAndFooterRecyclerViewAdapter:Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;

.field private mSearch:Landroid/widget/RelativeLayout;

.field private mWindowManager:Landroid/view/WindowManager;

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

.field private provinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Province;",
            ">;"
        }
    .end annotation
.end field

.field private recordView:Lcom/dodonew/online/view/SearchRecordView;

.field private request:Lcom/dodonew/online/http/JsonRequest;

.field private searchView:Lcom/dodonew/online/view/SearchView;

.field private showNum:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 65
    invoke-direct {p0}, Lcom/dodonew/online/base/TitleActivity;-><init>()V

    .line 91
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->mHeaderAndFooterRecyclerViewAdapter:Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->input_length:I

    .line 105
    const-string v0, "9"

    iput-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->showNum:Ljava/lang/String;

    .line 394
    new-instance v0, Lcom/dodonew/online/ui/ChooseCityActivity$10;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/ChooseCityActivity$10;-><init>(Lcom/dodonew/online/ui/ChooseCityActivity;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->mHandler:Landroid/os/Handler;

    .line 466
    return-void
.end method

.method static synthetic access$100(Lcom/dodonew/online/ui/ChooseCityActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/ChooseCityActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->cities:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/dodonew/online/ui/ChooseCityActivity;)Lcom/dodonew/online/view/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/ChooseCityActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->searchView:Lcom/dodonew/online/view/SearchView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/dodonew/online/ui/ChooseCityActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/ChooseCityActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->list:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/dodonew/online/ui/ChooseCityActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/ChooseCityActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->list:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/dodonew/online/ui/ChooseCityActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/ChooseCityActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/dodonew/online/ui/ChooseCityActivity;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/ChooseCityActivity;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/ChooseCityActivity;->setHotCities([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/dodonew/online/ui/ChooseCityActivity;)Lcom/dodonew/online/view/CityHeaderView;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/ChooseCityActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->cityHeaderView:Lcom/dodonew/online/view/CityHeaderView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/dodonew/online/ui/ChooseCityActivity;)Lcom/google/gson/Gson;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/ChooseCityActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->mGson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/dodonew/online/ui/ChooseCityActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/ChooseCityActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/ChooseCityActivity;->setProvinces(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/dodonew/online/ui/ChooseCityActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/ChooseCityActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->mSearch:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/dodonew/online/ui/ChooseCityActivity;)Lcom/dodonew/online/adapter/CitiesAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/ChooseCityActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->citiesAdapter:Lcom/dodonew/online/adapter/CitiesAdapter;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/dodonew/online/ui/ChooseCityActivity;)Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/ChooseCityActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->listView:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dodonew/online/ui/ChooseCityActivity;Lcom/dodonew/online/bean/City;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/ChooseCityActivity;
    .param p1, "x1"    # Lcom/dodonew/online/bean/City;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/ChooseCityActivity;->initActivity(Lcom/dodonew/online/bean/City;)V

    return-void
.end method

.method static synthetic access$300(Lcom/dodonew/online/ui/ChooseCityActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/ChooseCityActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/ChooseCityActivity;->getSearchResult(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/dodonew/online/ui/ChooseCityActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/ChooseCityActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->list_result:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/dodonew/online/ui/ChooseCityActivity;)Lcom/dodonew/online/view/SearchRecordView;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/ChooseCityActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->recordView:Lcom/dodonew/online/view/SearchRecordView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/dodonew/online/ui/ChooseCityActivity;Lcom/dodonew/online/view/SearchRecordView;)Lcom/dodonew/online/view/SearchRecordView;
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/ChooseCityActivity;
    .param p1, "x1"    # Lcom/dodonew/online/view/SearchRecordView;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->recordView:Lcom/dodonew/online/view/SearchRecordView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/dodonew/online/ui/ChooseCityActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/ChooseCityActivity;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/dodonew/online/ui/ChooseCityActivity;->setResultViewEvent()V

    return-void
.end method

.method static synthetic access$700(Lcom/dodonew/online/ui/ChooseCityActivity;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/ChooseCityActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic access$800(Lcom/dodonew/online/ui/ChooseCityActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/ChooseCityActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->mContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$902(Lcom/dodonew/online/ui/ChooseCityActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/ChooseCityActivity;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->input_length:I

    return p1
.end method

.method private fillHotCity([Ljava/lang/String;)V
    .locals 6
    .param p1, "hotCitiesStr"    # [Ljava/lang/String;

    .prologue
    .line 375
    iget-object v3, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->hotCities:Ljava/util/List;

    if-nez v3, :cond_0

    .line 376
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->hotCities:Ljava/util/List;

    .line 378
    :cond_0
    iget-object v3, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->hotCities:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 380
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_4

    .line 381
    iget-object v3, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->cities:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/bean/City;

    .line 382
    .local v0, "city":Lcom/dodonew/online/bean/City;
    invoke-virtual {v0}, Lcom/dodonew/online/bean/City;->getName()Ljava/lang/String;

    move-result-object v2

    .line 383
    .local v2, "name":Ljava/lang/String;
    const-string v4, "\u5e02"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 384
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u5e02"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 386
    :cond_2
    aget-object v4, p1, v1

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 387
    iget-object v3, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->hotCities:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    .end local v0    # "city":Lcom/dodonew/online/bean/City;
    .end local v2    # "name":Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 392
    :cond_4
    return-void
.end method

.method private filterCityByName(Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 311
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->cities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 312
    iget-object v2, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->cities:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/bean/City;

    .line 314
    .local v0, "city":Lcom/dodonew/online/bean/City;
    invoke-virtual {v0}, Lcom/dodonew/online/bean/City;->getSpell()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 316
    invoke-virtual {v0}, Lcom/dodonew/online/bean/City;->getSpell()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 317
    invoke-virtual {v0}, Lcom/dodonew/online/bean/City;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/dodonew/online/bean/City;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dodonew/online/util/Utils;->getFirstSpell(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 318
    :cond_0
    iget-object v2, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->list_result:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 322
    .end local v0    # "city":Lcom/dodonew/online/bean/City;
    :cond_2
    return-void
.end method

.method private getSearchResult(Ljava/lang/String;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 281
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .local v2, "listC":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/City;>;"
    iget v3, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->input_length:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 283
    iget-object v3, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->list_result:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 284
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/ChooseCityActivity;->filterCityByName(Ljava/lang/String;)V

    .line 306
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->input_length:I

    .line 308
    return-void

    .line 286
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->list_result:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 287
    iget-object v3, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->list_result:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/bean/City;

    .line 288
    .local v0, "city":Lcom/dodonew/online/bean/City;
    invoke-virtual {v0}, Lcom/dodonew/online/bean/City;->getSpell()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_3

    .line 289
    invoke-virtual {v0}, Lcom/dodonew/online/bean/City;->getSpell()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 290
    invoke-virtual {v0}, Lcom/dodonew/online/bean/City;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    invoke-virtual {v0}, Lcom/dodonew/online/bean/City;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dodonew/online/util/Utils;->getFirstSpell(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 291
    :cond_2
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 296
    .end local v0    # "city":Lcom/dodonew/online/bean/City;
    :cond_4
    iget-object v3, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->list_result:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 297
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 298
    iget-object v3, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->list_result:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 302
    .end local v1    # "i":I
    :cond_5
    iget-object v3, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->list_result:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 303
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/ChooseCityActivity;->filterCityByName(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private initActivity(Lcom/dodonew/online/bean/City;)V
    .locals 2
    .param p1, "city"    # Lcom/dodonew/online/bean/City;

    .prologue
    .line 231
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 232
    .local v0, "result":Landroid/content/Intent;
    const-string v1, "city"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 233
    sget v1, Lcom/dodonew/online/fragment/NetbarFragment;->requestCode:I

    invoke-virtual {p0, v1, v0}, Lcom/dodonew/online/ui/ChooseCityActivity;->setResult(ILandroid/content/Intent;)V

    .line 234
    invoke-virtual {p0}, Lcom/dodonew/online/ui/ChooseCityActivity;->finish()V

    .line 235
    return-void
.end method

.method private initEvent()V
    .locals 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->letterListView:Lcom/dodonew/online/view/MyLetterListView;

    new-instance v1, Lcom/dodonew/online/ui/ChooseCityActivity$LetterListViewListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/dodonew/online/ui/ChooseCityActivity$LetterListViewListener;-><init>(Lcom/dodonew/online/ui/ChooseCityActivity;Lcom/dodonew/online/ui/ChooseCityActivity$1;)V

    .line 159
    invoke-virtual {v0, v1}, Lcom/dodonew/online/view/MyLetterListView;->setOnTouchingLetterChangedListener(Lcom/dodonew/online/view/MyLetterListView$OnTouchingLetterChangedListener;)V

    .line 160
    iget-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->listView:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;

    new-instance v1, Lcom/dodonew/online/ui/ChooseCityActivity$1;

    invoke-direct {v1, p0}, Lcom/dodonew/online/ui/ChooseCityActivity$1;-><init>(Lcom/dodonew/online/ui/ChooseCityActivity;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->searchView:Lcom/dodonew/online/view/SearchView;

    new-instance v1, Lcom/dodonew/online/ui/ChooseCityActivity$2;

    invoke-direct {v1, p0}, Lcom/dodonew/online/ui/ChooseCityActivity$2;-><init>(Lcom/dodonew/online/ui/ChooseCityActivity;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/view/SearchView;->addMyTextWatcher(Lcom/dodonew/online/view/SearchView$MyTextWatcher;)V

    .line 207
    return-void
.end method

.method private initProvinces()V
    .locals 4

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/dodonew/online/ui/ChooseCityActivity;->showProgress()V

    .line 148
    invoke-virtual {p0}, Lcom/dodonew/online/ui/ChooseCityActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "fileName"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "fileName":Ljava/lang/String;
    invoke-static {p0}, Lcom/dodonew/online/util/Utils;->getProvincesJson(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "json":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    invoke-direct {p0, v0}, Lcom/dodonew/online/ui/ChooseCityActivity;->queryCities(Ljava/lang/String;)V

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-direct {p0, v1}, Lcom/dodonew/online/ui/ChooseCityActivity;->setProvinces(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initView()V
    .locals 6

    .prologue
    const/4 v1, -0x2

    .line 118
    const-string v2, "\u5f53\u524d\u57ce\u5e02"

    invoke-virtual {p0, v2}, Lcom/dodonew/online/ui/ChooseCityActivity;->setTitle(Ljava/lang/String;)V

    .line 119
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/dodonew/online/ui/ChooseCityActivity;->setNavigationIcon(I)V

    .line 120
    const v2, 0x7f0d00a8

    invoke-virtual {p0, v2}, Lcom/dodonew/online/ui/ChooseCityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->mContainer:Landroid/widget/RelativeLayout;

    .line 121
    const v2, 0x7f0d00a9

    invoke-virtual {p0, v2}, Lcom/dodonew/online/ui/ChooseCityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->mSearch:Landroid/widget/RelativeLayout;

    .line 122
    const v2, 0x7f0d00aa

    invoke-virtual {p0, v2}, Lcom/dodonew/online/ui/ChooseCityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/dodonew/online/view/SearchView;

    iput-object v2, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->searchView:Lcom/dodonew/online/view/SearchView;

    .line 123
    const v2, 0x7f0d00ad

    invoke-virtual {p0, v2}, Lcom/dodonew/online/ui/ChooseCityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;

    iput-object v2, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->listView:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;

    .line 124
    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->linearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 125
    const v2, 0x7f0d00ae

    invoke-virtual {p0, v2}, Lcom/dodonew/online/ui/ChooseCityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/dodonew/online/view/MyLetterListView;

    iput-object v2, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->letterListView:Lcom/dodonew/online/view/MyLetterListView;

    .line 126
    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/dodonew/online/ui/ChooseCityActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->mWindowManager:Landroid/view/WindowManager;

    .line 127
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030095

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->mDialogText:Landroid/widget/TextView;

    .line 129
    iget-object v2, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->mDialogText:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x2

    const/16 v4, 0x18

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 136
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->mDialogText:Landroid/widget/TextView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    iget-object v1, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->letterListView:Lcom/dodonew/online/view/MyLetterListView;

    iget-object v2, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->mDialogText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/dodonew/online/view/MyLetterListView;->setTextView(Landroid/widget/TextView;)V

    .line 138
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->para:Ljava/util/Map;

    .line 139
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iput-object v1, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->mGson:Lcom/google/gson/Gson;

    .line 140
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->list_result:Ljava/util/List;

    .line 141
    return-void
.end method

.method private queryCities(Ljava/lang/String;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 243
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/dodonew/online/ui/ChooseCityActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/dodonew/online/ui/ChooseCityActivity$5;-><init>(Lcom/dodonew/online/ui/ChooseCityActivity;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 261
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 262
    return-void
.end method

.method private queryHotCity()V
    .locals 3

    .prologue
    .line 268
    new-instance v0, Lcom/dodonew/online/ui/ChooseCityActivity$6;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/ChooseCityActivity$6;-><init>(Lcom/dodonew/online/ui/ChooseCityActivity;)V

    .line 269
    invoke-virtual {v0}, Lcom/dodonew/online/ui/ChooseCityActivity$6;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 270
    iget-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 271
    iget-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->para:Ljava/util/Map;

    const-string v1, "hotType"

    const-string v2, "HOTCITY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->para:Ljava/util/Map;

    const-string v1, "showNum"

    iget-object v2, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->showNum:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    const-string v0, "hot/list"

    iget-object v1, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/ui/ChooseCityActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 274
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
    .line 330
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

    .line 331
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/dodonew/online/http/JsonRequest;

    const-string v3, ""

    new-instance v4, Lcom/dodonew/online/ui/ChooseCityActivity$7;

    invoke-direct {v4, p0, p1}, Lcom/dodonew/online/ui/ChooseCityActivity$7;-><init>(Lcom/dodonew/online/ui/ChooseCityActivity;Ljava/lang/String;)V

    new-instance v5, Lcom/dodonew/online/ui/ChooseCityActivity$8;

    invoke-direct {v5, p0}, Lcom/dodonew/online/ui/ChooseCityActivity$8;-><init>(Lcom/dodonew/online/ui/ChooseCityActivity;)V

    move-object v1, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/dodonew/online/http/JsonRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    .line 351
    iget-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-virtual {v0, p2}, Lcom/dodonew/online/http/JsonRequest;->addRequestMap(Ljava/util/Map;)V

    .line 352
    iget-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-static {v0, p0}, Lcom/dodonew/online/DodonewOnlineApplication;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    .line 353
    return-void
.end method

.method private setCities(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .param p2, "provinceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/City;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 446
    .local p1, "ls":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/City;>;"
    iget-object v1, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->cities:Ljava/util/List;

    if-nez v1, :cond_0

    .line 447
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->cities:Ljava/util/List;

    .line 449
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 450
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/bean/City;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u7701"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dodonew/online/bean/City;->setProvince(Ljava/lang/String;)V

    .line 451
    iget-object v1, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->cities:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 453
    :cond_1
    return-void
.end method

.method private setCityAdapter()V
    .locals 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->citiesAdapter:Lcom/dodonew/online/adapter/CitiesAdapter;

    if-nez v0, :cond_0

    .line 460
    new-instance v0, Lcom/dodonew/online/adapter/CitiesAdapter;

    iget-object v1, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->cities:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/dodonew/online/adapter/CitiesAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->citiesAdapter:Lcom/dodonew/online/adapter/CitiesAdapter;

    .line 461
    iget-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->listView:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;

    iget-object v1, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->citiesAdapter:Lcom/dodonew/online/adapter/CitiesAdapter;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->setAdapter(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersAdapter;)V

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->citiesAdapter:Lcom/dodonew/online/adapter/CitiesAdapter;

    invoke-virtual {v0}, Lcom/dodonew/online/adapter/CitiesAdapter;->notifyDataSetChanged()V

    .line 464
    return-void
.end method

.method private setHotCities([Ljava/lang/String;)V
    .locals 2
    .param p1, "hotCitiesStr"    # [Ljava/lang/String;

    .prologue
    .line 361
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/ChooseCityActivity;->fillHotCity([Ljava/lang/String;)V

    .line 362
    new-instance v0, Lcom/dodonew/online/view/CityHeaderView;

    iget-object v1, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->hotCities:Ljava/util/List;

    invoke-direct {v0, p0, p1, v1}, Lcom/dodonew/online/view/CityHeaderView;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/util/List;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->cityHeaderView:Lcom/dodonew/online/view/CityHeaderView;

    .line 363
    iget-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->cityHeaderView:Lcom/dodonew/online/view/CityHeaderView;

    invoke-virtual {v0}, Lcom/dodonew/online/view/CityHeaderView;->setHotCityAdapter()V

    .line 364
    iget-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->listView:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;

    iget-object v1, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->cityHeaderView:Lcom/dodonew/online/view/CityHeaderView;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->addHeaderView(Landroid/view/View;)V

    .line 365
    invoke-direct {p0}, Lcom/dodonew/online/ui/ChooseCityActivity;->setCityAdapter()V

    .line 366
    iget-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->cityHeaderView:Lcom/dodonew/online/view/CityHeaderView;

    new-instance v1, Lcom/dodonew/online/ui/ChooseCityActivity$9;

    invoke-direct {v1, p0}, Lcom/dodonew/online/ui/ChooseCityActivity$9;-><init>(Lcom/dodonew/online/ui/ChooseCityActivity;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/view/CityHeaderView;->setCityOnClickListener(Lcom/dodonew/online/view/CityHeaderView$CityOnClickListener;)V

    .line 372
    return-void
.end method

.method private setProvinces(Ljava/lang/String;)V
    .locals 6
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 423
    new-instance v3, Lcom/dodonew/online/ui/ChooseCityActivity$11;

    invoke-direct {v3, p0}, Lcom/dodonew/online/ui/ChooseCityActivity$11;-><init>(Lcom/dodonew/online/ui/ChooseCityActivity;)V

    .line 424
    invoke-virtual {v3}, Lcom/dodonew/online/ui/ChooseCityActivity$11;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 425
    .local v2, "type":Ljava/lang/reflect/Type;
    iget-object v3, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v3, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iput-object v3, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->provinces:Ljava/util/List;

    .line 426
    iget-object v3, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->provinces:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 427
    iget-object v3, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->provinces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/bean/Province;

    .line 428
    .local v1, "province":Lcom/dodonew/online/bean/Province;
    invoke-virtual {v1}, Lcom/dodonew/online/bean/Province;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1}, Lcom/dodonew/online/bean/Province;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/dodonew/online/ui/ChooseCityActivity;->setCities(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 430
    .end local v1    # "province":Lcom/dodonew/online/bean/Province;
    :cond_0
    new-instance v0, Lcom/dodonew/online/bean/ComparatorCity;

    invoke-direct {v0}, Lcom/dodonew/online/bean/ComparatorCity;-><init>()V

    .line 432
    .local v0, "comparatorCity":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/dodonew/online/bean/City;>;"
    iget-object v3, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->cities:Ljava/util/List;

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 433
    invoke-direct {p0}, Lcom/dodonew/online/ui/ChooseCityActivity;->queryHotCity()V

    .line 437
    .end local v0    # "comparatorCity":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/dodonew/online/bean/City;>;"
    :goto_1
    return-void

    .line 435
    :cond_1
    invoke-virtual {p0}, Lcom/dodonew/online/ui/ChooseCityActivity;->dissProgress()V

    goto :goto_1
.end method

.method private setResultViewEvent()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->recordView:Lcom/dodonew/online/view/SearchRecordView;

    iget-object v0, v0, Lcom/dodonew/online/view/SearchRecordView;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/dodonew/online/ui/ChooseCityActivity$3;

    invoke-direct {v1, p0}, Lcom/dodonew/online/ui/ChooseCityActivity$3;-><init>(Lcom/dodonew/online/ui/ChooseCityActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 219
    iget-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->recordView:Lcom/dodonew/online/view/SearchRecordView;

    iget-object v0, v0, Lcom/dodonew/online/view/SearchRecordView;->layout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/dodonew/online/ui/ChooseCityActivity$4;

    invoke-direct {v1, p0}, Lcom/dodonew/online/ui/ChooseCityActivity$4;-><init>(Lcom/dodonew/online/ui/ChooseCityActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/dodonew/online/base/TitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/ChooseCityActivity;->setContentView(I)V

    .line 111
    invoke-static {}, Lcom/dodonew/online/bean/EventBusManager;->getInstace()Lcom/dodonew/online/bean/EventBusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dodonew/online/bean/EventBusManager;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->registerSticky(Ljava/lang/Object;)V

    .line 112
    invoke-direct {p0}, Lcom/dodonew/online/ui/ChooseCityActivity;->initView()V

    .line 113
    invoke-direct {p0}, Lcom/dodonew/online/ui/ChooseCityActivity;->initProvinces()V

    .line 114
    invoke-direct {p0}, Lcom/dodonew/online/ui/ChooseCityActivity;->initEvent()V

    .line 115
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 488
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onDestroy()V

    .line 489
    iget-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->mDialogText:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 490
    invoke-static {}, Lcom/dodonew/online/bean/EventBusManager;->getInstace()Lcom/dodonew/online/bean/EventBusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dodonew/online/bean/EventBusManager;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 491
    return-void
.end method

.method public onEventMainThread(Lcom/dodonew/online/bean/LocationEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/dodonew/online/bean/LocationEvent;

    .prologue
    .line 494
    iget-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 495
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 505
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onPause()V

    .line 506
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 507
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 499
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onResume()V

    .line 500
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 501
    return-void
.end method
