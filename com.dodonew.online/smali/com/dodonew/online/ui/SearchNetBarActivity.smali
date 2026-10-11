.class public Lcom/dodonew/online/ui/SearchNetBarActivity;
.super Lcom/dodonew/online/base/BaseActivity;
.source "SearchNetBarActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private DEFAULT_TYPE:Ljava/lang/reflect/Type;

.field private gridView:Landroid/widget/GridView;

.field private hasMore:Z

.field private helper:Lcom/dodonew/online/db/DodonewonlineSQLiteOpenHelper;

.field private hotNetBarAdapter:Lcom/dodonew/online/adapter/HotNetBarAdapter;

.field private hotNetBars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/NetBar;",
            ">;"
        }
    .end annotation
.end field

.field private input_length:I

.field private layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private limit:I

.field private loadView:Lcom/dodonew/online/view/LoadingView;

.field private location:Ljava/lang/String;

.field private mContainer:Landroid/widget/RelativeLayout;

.field private msvRecently:Lcom/dodonew/online/widget/MultiStateView;

.field private multiStateView:Lcom/dodonew/online/widget/MultiStateView;

.field private netBarRecentlyAdapter:Lcom/dodonew/online/adapter/NetBarRecentlyAdapter;

.field private page:I

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

.field private recentlyNetBars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/NetBar;",
            ">;"
        }
    .end annotation
.end field

.field private recordView:Lcom/dodonew/online/view/SearchRecordView;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private request:Lcom/dodonew/online/http/JsonRequest;

.field private searchNetBars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/NetBar;",
            ">;"
        }
    .end annotation
.end field

.field private searchView:Lcom/dodonew/online/view/SearchView;

.field private searchViewContainer:Landroid/view/View;

.field private top:[I

.field private tvRight:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 57
    invoke-direct {p0}, Lcom/dodonew/online/base/BaseActivity;-><init>()V

    .line 76
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 82
    iput v2, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->input_length:I

    .line 83
    iput v2, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->page:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->limit:I

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->hasMore:Z

    return-void
.end method

.method private AddFooterloading(I)V
    .locals 4
    .param p1, "x"    # I

    .prologue
    const v3, 0x7f060035

    .line 441
    iget-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->loadView:Lcom/dodonew/online/view/LoadingView;

    if-nez v1, :cond_1

    if-nez p1, :cond_1

    .line 442
    new-instance v1, Lcom/dodonew/online/view/LoadingView;

    invoke-direct {v1, p0}, Lcom/dodonew/online/view/LoadingView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->loadView:Lcom/dodonew/online/view/LoadingView;

    .line 443
    iget-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->loadView:Lcom/dodonew/online/view/LoadingView;

    iget-object v1, v1, Lcom/dodonew/online/view/LoadingView;->tv_txt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dodonew/online/ui/SearchNetBarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    iget-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->recordView:Lcom/dodonew/online/view/SearchRecordView;

    iget-object v1, v1, Lcom/dodonew/online/view/SearchRecordView;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->loadView:Lcom/dodonew/online/view/LoadingView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    iget-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->loadView:Lcom/dodonew/online/view/LoadingView;

    iget-object v0, v1, Lcom/dodonew/online/view/LoadingView;->tv_txt:Landroid/widget/TextView;

    .line 448
    .local v0, "tv":Landroid/widget/TextView;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 449
    invoke-virtual {p0}, Lcom/dodonew/online/ui/SearchNetBarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    iget-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->loadView:Lcom/dodonew/online/view/LoadingView;

    iget-object v1, v1, Lcom/dodonew/online/view/LoadingView;->pb:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 453
    :cond_2
    iget-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->loadView:Lcom/dodonew/online/view/LoadingView;

    iget-object v1, v1, Lcom/dodonew/online/view/LoadingView;->pb:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 454
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 455
    invoke-virtual {p0}, Lcom/dodonew/online/ui/SearchNetBarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 457
    :cond_3
    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    .line 458
    invoke-virtual {p0}, Lcom/dodonew/online/ui/SearchNetBarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 460
    :cond_4
    const/4 v1, 0x4

    if-ne p1, v1, :cond_5

    .line 461
    invoke-virtual {p0}, Lcom/dodonew/online/ui/SearchNetBarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 463
    :cond_5
    const/4 v1, 0x5

    if-ne p1, v1, :cond_6

    .line 464
    invoke-virtual {p0}, Lcom/dodonew/online/ui/SearchNetBarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060044

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 466
    :cond_6
    const/4 v1, 0x7

    if-ne p1, v1, :cond_0

    .line 467
    invoke-virtual {p0}, Lcom/dodonew/online/ui/SearchNetBarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/dodonew/online/ui/SearchNetBarActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/SearchNetBarActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->hotNetBars:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dodonew/online/ui/SearchNetBarActivity;Lcom/dodonew/online/bean/NetBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/SearchNetBarActivity;
    .param p1, "x1"    # Lcom/dodonew/online/bean/NetBar;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/SearchNetBarActivity;->initActivity(Lcom/dodonew/online/bean/NetBar;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/dodonew/online/ui/SearchNetBarActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/SearchNetBarActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/SearchNetBarActivity;->setSearchNetBars(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/dodonew/online/ui/SearchNetBarActivity;)Lcom/dodonew/online/widget/MultiStateView;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/SearchNetBarActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/dodonew/online/ui/SearchNetBarActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/SearchNetBarActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->recentlyNetBars:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/dodonew/online/ui/SearchNetBarActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/SearchNetBarActivity;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->hasMore:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/dodonew/online/ui/SearchNetBarActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/SearchNetBarActivity;

    .prologue
    .line 57
    iget v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->page:I

    return v0
.end method

.method static synthetic access$1402(Lcom/dodonew/online/ui/SearchNetBarActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/SearchNetBarActivity;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->page:I

    return p1
.end method

.method static synthetic access$1500(Lcom/dodonew/online/ui/SearchNetBarActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/SearchNetBarActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/SearchNetBarActivity;->filterNetBarByName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/dodonew/online/ui/SearchNetBarActivity;)Lcom/dodonew/online/view/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/SearchNetBarActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->searchView:Lcom/dodonew/online/view/SearchView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dodonew/online/ui/SearchNetBarActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/SearchNetBarActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/SearchNetBarActivity;->getSearchResult(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$402(Lcom/dodonew/online/ui/SearchNetBarActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/SearchNetBarActivity;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->input_length:I

    return p1
.end method

.method static synthetic access$500(Lcom/dodonew/online/ui/SearchNetBarActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/SearchNetBarActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->searchNetBars:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/dodonew/online/ui/SearchNetBarActivity;)Lcom/dodonew/online/view/SearchRecordView;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/SearchNetBarActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->recordView:Lcom/dodonew/online/view/SearchRecordView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/dodonew/online/ui/SearchNetBarActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/SearchNetBarActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->mContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/dodonew/online/ui/SearchNetBarActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/SearchNetBarActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/SearchNetBarActivity;->setHotNetBars(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$900(Lcom/dodonew/online/ui/SearchNetBarActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/SearchNetBarActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/dodonew/online/ui/SearchNetBarActivity;->setHotNetBarAdapter()V

    return-void
.end method

.method private delRecord()V
    .locals 2

    .prologue
    .line 476
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->helper:Lcom/dodonew/online/db/DodonewonlineSQLiteOpenHelper;

    const-string v1, "DB_SEARCH_RECORDS"

    invoke-virtual {v0, v1}, Lcom/dodonew/online/db/DodonewonlineSQLiteOpenHelper;->delTabDatas(Ljava/lang/String;)I

    .line 477
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->recentlyNetBars:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->recentlyNetBars:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 480
    :cond_0
    invoke-direct {p0}, Lcom/dodonew/online/ui/SearchNetBarActivity;->setNetBarRecentlyAdapter()V

    .line 481
    return-void
.end method

.method private filterNetBarByName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->location:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/dodonew/online/ui/SearchNetBarActivity;->queryNetBarByName(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method private filterRecentNetbar(Lcom/dodonew/online/bean/NetBar;)I
    .locals 3
    .param p1, "netBar"    # Lcom/dodonew/online/bean/NetBar;

    .prologue
    .line 362
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->recentlyNetBars:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 363
    iget-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->recentlyNetBars:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/bean/NetBar;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/NetBar;->getNetBarId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dodonew/online/bean/NetBar;->getNetBarId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 362
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 367
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private getSearchResult(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 223
    const/4 v0, 0x0

    iput v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->page:I

    .line 224
    iput-boolean v2, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->hasMore:Z

    .line 225
    iget v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->input_length:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 226
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->searchNetBars:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->top:[I

    if-nez v0, :cond_0

    .line 228
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->top:[I

    .line 229
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->searchViewContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->top:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 230
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->top:[I

    aget v1, v1, v2

    invoke-static {p0}, Lcom/dodonew/online/util/Utils;->getStatusBarHeight(Landroid/app/Activity;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 234
    :cond_0
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/SearchNetBarActivity;->filterNetBarByName(Ljava/lang/String;)V

    .line 240
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->input_length:I

    .line 241
    return-void

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->searchNetBars:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 237
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/SearchNetBarActivity;->filterNetBarByName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initActivity(Lcom/dodonew/online/bean/NetBar;)V
    .locals 6
    .param p1, "netBar"    # Lcom/dodonew/online/bean/NetBar;

    .prologue
    .line 346
    iget-object v2, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->helper:Lcom/dodonew/online/db/DodonewonlineSQLiteOpenHelper;

    const-string v3, "DB_SEARCH_RECORDS"

    invoke-virtual {v2, v3}, Lcom/dodonew/online/db/DodonewonlineSQLiteOpenHelper;->initSearchRecord(Ljava/lang/String;)V

    .line 347
    iget-object v2, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->helper:Lcom/dodonew/online/db/DodonewonlineSQLiteOpenHelper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/dodonew/online/db/DodonewonlineSQLiteOpenHelper;->addNetBar(Lcom/dodonew/online/bean/NetBar;Ljava/lang/String;)I

    .line 348
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/SearchNetBarActivity;->filterRecentNetbar(Lcom/dodonew/online/bean/NetBar;)I

    move-result v0

    .line 349
    .local v0, "index":I
    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    .line 350
    iget-object v2, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->recentlyNetBars:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 352
    :cond_0
    iget-object v2, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->recentlyNetBars:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 353
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/dodonew/online/ui/NetbarDetailActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 354
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "domainId"

    invoke-virtual {p1}, Lcom/dodonew/online/bean/NetBar;->getDomainId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    const-string v2, "netBarId"

    invoke-virtual {p1}, Lcom/dodonew/online/bean/NetBar;->getNetBarId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    const-string v2, "location"

    iget-object v3, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->location:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/SearchNetBarActivity;->startActivity(Landroid/content/Intent;)V

    .line 358
    invoke-direct {p0}, Lcom/dodonew/online/ui/SearchNetBarActivity;->setNetBarRecentlyAdapter()V

    .line 359
    return-void
.end method

.method private initEvent()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->tvRight:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const v0, 0x7f0d0112

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/SearchNetBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->gridView:Landroid/widget/GridView;

    new-instance v1, Lcom/dodonew/online/ui/SearchNetBarActivity$1;

    invoke-direct {v1, p0}, Lcom/dodonew/online/ui/SearchNetBarActivity$1;-><init>(Lcom/dodonew/online/ui/SearchNetBarActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->searchView:Lcom/dodonew/online/view/SearchView;

    new-instance v1, Lcom/dodonew/online/ui/SearchNetBarActivity$2;

    invoke-direct {v1, p0}, Lcom/dodonew/online/ui/SearchNetBarActivity$2;-><init>(Lcom/dodonew/online/ui/SearchNetBarActivity;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/view/SearchView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 161
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 103
    const v1, 0x7f0d010c

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/SearchNetBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->mContainer:Landroid/widget/RelativeLayout;

    .line 104
    const v1, 0x7f0d010d

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/SearchNetBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->searchViewContainer:Landroid/view/View;

    .line 105
    const v1, 0x7f0d010f

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/SearchNetBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/view/SearchView;

    iput-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->searchView:Lcom/dodonew/online/view/SearchView;

    .line 106
    const v1, 0x7f0d010e

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/SearchNetBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->tvRight:Landroid/widget/TextView;

    .line 107
    const v1, 0x7f0d0090

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/SearchNetBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/widget/MultiStateView;

    iput-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    .line 108
    const v1, 0x7f0d0113

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/SearchNetBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/widget/MultiStateView;

    iput-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->msvRecently:Lcom/dodonew/online/widget/MultiStateView;

    .line 109
    const v1, 0x7f0d0111

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/SearchNetBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->gridView:Landroid/widget/GridView;

    .line 110
    const v1, 0x7f0d0114

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/SearchNetBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 111
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 112
    .local v0, "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    iget-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 113
    iget-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 114
    iget-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 115
    new-instance v1, Lcom/dodonew/online/view/SearchRecordView;

    invoke-direct {v1, p0}, Lcom/dodonew/online/view/SearchRecordView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->recordView:Lcom/dodonew/online/view/SearchRecordView;

    .line 116
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/dodonew/online/ui/SearchNetBarActivity;->AddFooterloading(I)V

    .line 117
    invoke-direct {p0}, Lcom/dodonew/online/ui/SearchNetBarActivity;->setResultViewEvent()V

    .line 118
    invoke-direct {p0}, Lcom/dodonew/online/ui/SearchNetBarActivity;->queryRecently()V

    .line 119
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->para:Ljava/util/Map;

    .line 120
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->searchNetBars:Ljava/util/List;

    .line 121
    invoke-virtual {p0}, Lcom/dodonew/online/ui/SearchNetBarActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->location:Ljava/lang/String;

    .line 122
    iget-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->location:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->location:Ljava/lang/String;

    const-string v2, "0"

    const-string v3, "9"

    invoke-direct {p0, v1, v2, v3}, Lcom/dodonew/online/ui/SearchNetBarActivity;->queryHotNetBar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_0
    return-void
.end method

.method private queryHotNetBar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "hotNetBar"    # Ljava/lang/String;
    .param p3, "limit"    # Ljava/lang/String;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->hotNetBars:Ljava/util/List;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->hotNetBars:Ljava/util/List;

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->hotNetBars:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 175
    new-instance v0, Lcom/dodonew/online/ui/SearchNetBarActivity$3;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/SearchNetBarActivity$3;-><init>(Lcom/dodonew/online/ui/SearchNetBarActivity;)V

    .line 176
    invoke-virtual {v0}, Lcom/dodonew/online/ui/SearchNetBarActivity$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 177
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 178
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->para:Ljava/util/Map;

    const-string v1, "location"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->para:Ljava/util/Map;

    const-string v1, "hotNetBar"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->para:Ljava/util/Map;

    const-string v1, "limit"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v0, "oth/hot/operater"

    iget-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/ui/SearchNetBarActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 182
    return-void
.end method

.method private queryNetBarByName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->searchNetBars:Ljava/util/List;

    if-nez v0, :cond_0

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->searchNetBars:Ljava/util/List;

    .line 208
    :cond_0
    iget v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->page:I

    if-nez v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->searchNetBars:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 211
    :cond_1
    new-instance v0, Lcom/dodonew/online/ui/SearchNetBarActivity$4;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/SearchNetBarActivity$4;-><init>(Lcom/dodonew/online/ui/SearchNetBarActivity;)V

    .line 212
    invoke-virtual {v0}, Lcom/dodonew/online/ui/SearchNetBarActivity$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 213
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 214
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->para:Ljava/util/Map;

    const-string v1, "location"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->para:Ljava/util/Map;

    const-string v1, "name"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->para:Ljava/util/Map;

    const-string v1, "limit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->limit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->para:Ljava/util/Map;

    const-string v1, "page"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->page:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string v0, "oth/netbarList"

    iget-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/ui/SearchNetBarActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 219
    return-void
.end method

.method private queryRecently()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->recentlyNetBars:Ljava/util/List;

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->recentlyNetBars:Ljava/util/List;

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->recentlyNetBars:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 193
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->recentlyNetBars:Ljava/util/List;

    iget-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->helper:Lcom/dodonew/online/db/DodonewonlineSQLiteOpenHelper;

    invoke-virtual {v1}, Lcom/dodonew/online/db/DodonewonlineSQLiteOpenHelper;->getRecentlyNetBar()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 194
    invoke-direct {p0}, Lcom/dodonew/online/ui/SearchNetBarActivity;->setNetBarRecentlyAdapter()V

    .line 195
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
    .line 253
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

    .line 254
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/dodonew/online/http/JsonRequest;

    const-string v3, ""

    new-instance v4, Lcom/dodonew/online/ui/SearchNetBarActivity$5;

    invoke-direct {v4, p0, p1}, Lcom/dodonew/online/ui/SearchNetBarActivity$5;-><init>(Lcom/dodonew/online/ui/SearchNetBarActivity;Ljava/lang/String;)V

    new-instance v5, Lcom/dodonew/online/ui/SearchNetBarActivity$6;

    invoke-direct {v5, p0}, Lcom/dodonew/online/ui/SearchNetBarActivity$6;-><init>(Lcom/dodonew/online/ui/SearchNetBarActivity;)V

    move-object v1, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/dodonew/online/http/JsonRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    .line 278
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-virtual {v0, p2}, Lcom/dodonew/online/http/JsonRequest;->addRequestMap(Ljava/util/Map;)V

    .line 279
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-static {v0, p0}, Lcom/dodonew/online/DodonewOnlineApplication;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    .line 280
    return-void
.end method

.method private setHotNetBarAdapter()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->hotNetBarAdapter:Lcom/dodonew/online/adapter/HotNetBarAdapter;

    if-nez v0, :cond_0

    .line 319
    new-instance v0, Lcom/dodonew/online/adapter/HotNetBarAdapter;

    iget-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->hotNetBars:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/dodonew/online/adapter/HotNetBarAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->hotNetBarAdapter:Lcom/dodonew/online/adapter/HotNetBarAdapter;

    .line 320
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->gridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->hotNetBarAdapter:Lcom/dodonew/online/adapter/HotNetBarAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->hotNetBarAdapter:Lcom/dodonew/online/adapter/HotNetBarAdapter;

    invoke-virtual {v0}, Lcom/dodonew/online/adapter/HotNetBarAdapter;->notifyDataSetChanged()V

    .line 323
    return-void
.end method

.method private setHotNetBars(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/NetBar;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 283
    .local p1, "ls":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/NetBar;>;"
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->hotNetBars:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 284
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->hotNetBars:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->CONTENT:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    .line 289
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->EMPTY:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    goto :goto_0
.end method

.method private setNetBarRecentlyAdapter()V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->recentlyNetBars:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->msvRecently:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->CONTENT:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    .line 332
    :goto_0
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->netBarRecentlyAdapter:Lcom/dodonew/online/adapter/NetBarRecentlyAdapter;

    if-nez v0, :cond_0

    .line 333
    new-instance v0, Lcom/dodonew/online/adapter/NetBarRecentlyAdapter;

    iget-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->recentlyNetBars:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/dodonew/online/adapter/NetBarRecentlyAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->netBarRecentlyAdapter:Lcom/dodonew/online/adapter/NetBarRecentlyAdapter;

    .line 334
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->netBarRecentlyAdapter:Lcom/dodonew/online/adapter/NetBarRecentlyAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 335
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->netBarRecentlyAdapter:Lcom/dodonew/online/adapter/NetBarRecentlyAdapter;

    new-instance v1, Lcom/dodonew/online/ui/SearchNetBarActivity$7;

    invoke-direct {v1, p0}, Lcom/dodonew/online/ui/SearchNetBarActivity$7;-><init>(Lcom/dodonew/online/ui/SearchNetBarActivity;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/adapter/NetBarRecentlyAdapter;->setOnItemClickListener(Lcom/dodonew/online/interfaces/OnItemClickListener;)V

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->netBarRecentlyAdapter:Lcom/dodonew/online/adapter/NetBarRecentlyAdapter;

    invoke-virtual {v0}, Lcom/dodonew/online/adapter/NetBarRecentlyAdapter;->notifyDataSetChanged()V

    .line 343
    return-void

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->msvRecently:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->EMPTY:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    goto :goto_0
.end method

.method private setResultViewEvent()V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->recordView:Lcom/dodonew/online/view/SearchRecordView;

    iget-object v0, v0, Lcom/dodonew/online/view/SearchRecordView;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/dodonew/online/ui/SearchNetBarActivity$8;

    invoke-direct {v1, p0}, Lcom/dodonew/online/ui/SearchNetBarActivity$8;-><init>(Lcom/dodonew/online/ui/SearchNetBarActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 383
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->recordView:Lcom/dodonew/online/view/SearchRecordView;

    iget-object v0, v0, Lcom/dodonew/online/view/SearchRecordView;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/dodonew/online/ui/SearchNetBarActivity$9;

    invoke-direct {v1, p0}, Lcom/dodonew/online/ui/SearchNetBarActivity$9;-><init>(Lcom/dodonew/online/ui/SearchNetBarActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 409
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->recordView:Lcom/dodonew/online/view/SearchRecordView;

    iget-object v0, v0, Lcom/dodonew/online/view/SearchRecordView;->layout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/dodonew/online/ui/SearchNetBarActivity$10;

    invoke-direct {v1, p0}, Lcom/dodonew/online/ui/SearchNetBarActivity$10;-><init>(Lcom/dodonew/online/ui/SearchNetBarActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    return-void
.end method

.method private setSearchNetBars(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/NetBar;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "ls":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/NetBar;>;"
    const/4 v2, 0x1

    .line 292
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->limit:I

    if-ne v0, v1, :cond_2

    .line 293
    iput-boolean v2, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->hasMore:Z

    .line 294
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->recordView:Lcom/dodonew/online/view/SearchRecordView;

    if-eqz v0, :cond_0

    .line 295
    invoke-direct {p0, v2}, Lcom/dodonew/online/ui/SearchNetBarActivity;->AddFooterloading(I)V

    .line 302
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->searchNetBars:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 303
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->searchNetBars:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 304
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->recordView:Lcom/dodonew/online/view/SearchRecordView;

    iget-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->searchNetBars:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/view/SearchRecordView;->setNetBars(Ljava/util/List;)V

    .line 305
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->recordView:Lcom/dodonew/online/view/SearchRecordView;

    invoke-virtual {v0}, Lcom/dodonew/online/view/SearchRecordView;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->recordView:Lcom/dodonew/online/view/SearchRecordView;

    iget-object v2, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    :cond_1
    :goto_1
    return-void

    .line 298
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->hasMore:Z

    .line 299
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->recordView:Lcom/dodonew/online/view/SearchRecordView;

    if-eqz v0, :cond_0

    .line 300
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/dodonew/online/ui/SearchNetBarActivity;->AddFooterloading(I)V

    goto :goto_0

    .line 309
    :cond_3
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->recordView:Lcom/dodonew/online/view/SearchRecordView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->recordView:Lcom/dodonew/online/view/SearchRecordView;

    invoke-virtual {v0}, Lcom/dodonew/online/view/SearchRecordView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->recordView:Lcom/dodonew/online/view/SearchRecordView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 485
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 497
    :goto_0
    return-void

    .line 487
    :sswitch_0
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->recordView:Lcom/dodonew/online/view/SearchRecordView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->recordView:Lcom/dodonew/online/view/SearchRecordView;

    invoke-virtual {v0}, Lcom/dodonew/online/view/SearchRecordView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->recordView:Lcom/dodonew/online/view/SearchRecordView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 490
    :cond_0
    invoke-virtual {p0}, Lcom/dodonew/online/ui/SearchNetBarActivity;->finish()V

    goto :goto_0

    .line 494
    :sswitch_1
    invoke-direct {p0}, Lcom/dodonew/online/ui/SearchNetBarActivity;->delRecord()V

    goto :goto_0

    .line 485
    :sswitch_data_0
    .sparse-switch
        0x7f0d010e -> :sswitch_0
        0x7f0d0112 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/dodonew/online/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const v0, 0x7f030044

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/SearchNetBarActivity;->setContentView(I)V

    .line 94
    invoke-static {p0}, Lcom/dodonew/online/db/DodonewonlineSQLiteOpenHelper;->getInstanse(Landroid/content/Context;)Lcom/dodonew/online/db/DodonewonlineSQLiteOpenHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->helper:Lcom/dodonew/online/db/DodonewonlineSQLiteOpenHelper;

    .line 95
    invoke-direct {p0}, Lcom/dodonew/online/ui/SearchNetBarActivity;->initView()V

    .line 96
    invoke-direct {p0}, Lcom/dodonew/online/ui/SearchNetBarActivity;->initEvent()V

    .line 97
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 501
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->recordView:Lcom/dodonew/online/view/SearchRecordView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->recordView:Lcom/dodonew/online/view/SearchRecordView;

    invoke-virtual {v0}, Lcom/dodonew/online/view/SearchRecordView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity;->recordView:Lcom/dodonew/online/view/SearchRecordView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 504
    const/4 v0, 0x1

    .line 507
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/dodonew/online/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 430
    invoke-super {p0}, Lcom/dodonew/online/base/BaseActivity;->onPause()V

    .line 431
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 433
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 424
    invoke-super {p0}, Lcom/dodonew/online/base/BaseActivity;->onResume()V

    .line 425
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 427
    return-void
.end method
