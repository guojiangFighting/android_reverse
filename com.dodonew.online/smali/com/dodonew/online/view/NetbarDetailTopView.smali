.class public Lcom/dodonew/online/view/NetbarDetailTopView;
.super Landroid/widget/LinearLayout;
.source "NetbarDetailTopView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private DEFAULT_TYPE:Ljava/lang/reflect/Type;

.field private cards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Card;",
            ">;"
        }
    .end annotation
.end field

.field private collectionCount:I

.field context:Landroid/content/Context;

.field private domianId:Ljava/lang/String;

.field private emptyView:Landroid/view/View;

.field private imageView:Landroid/widget/ImageView;

.field private likeButtonView:Lcom/dodonew/online/widget/likeanimation/LikeButtonView;

.field private limit:Ljava/lang/String;

.field private memberId:Ljava/lang/String;

.field private netBar:Lcom/dodonew/online/bean/NetBar;

.field private netbarAddress:Ljava/lang/String;

.field private netbarId:Ljava/lang/String;

.field private netbarMaxPrice:Ljava/lang/String;

.field private netbarMinPrice:Ljava/lang/String;

.field private netbarName:Ljava/lang/String;

.field private netbarPicUrl:Ljava/lang/String;

.field private netbarTel:Ljava/lang/String;

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

.field private request:Lcom/dodonew/online/http/JsonRequest;

.field private shoView:Landroid/view/View;

.field private tickets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Ticket;",
            ">;"
        }
    .end annotation
.end field

.field private tvBarAddress:Landroid/widget/TextView;

.field private tvBarCost:Landroid/widget/TextView;

.field private tvBarCoupon:Landroid/widget/TextView;

.field private tvBarName:Landroid/widget/TextView;

.field private tvBarScore:Landroid/widget/TextView;

.field private tvBarTel:Landroid/widget/TextView;

.field private tvUsergetCount:Landroid/widget/TextView;

.field private userId:Ljava/lang/String;

.field private viewBarCoupon:Landroid/view/View;

.field private viewBarOrder:Landroid/view/View;

.field private viewBarPay:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    const-string v0, "10"

    iput-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->limit:Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->page:I

    .line 85
    invoke-direct {p0, p1}, Lcom/dodonew/online/view/NetbarDetailTopView;->init(Landroid/content/Context;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "shoView"    # Landroid/view/View;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 65
    const-string v0, "10"

    iput-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->limit:Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->page:I

    .line 78
    iput-object p2, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->shoView:Landroid/view/View;

    .line 79
    invoke-direct {p0, p1}, Lcom/dodonew/online/view/NetbarDetailTopView;->init(Landroid/content/Context;)V

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/view/NetbarDetailTopView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/view/NetbarDetailTopView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->userId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dodonew/online/view/NetbarDetailTopView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/view/NetbarDetailTopView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->netbarId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/dodonew/online/view/NetbarDetailTopView;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/view/NetbarDetailTopView;

    .prologue
    .line 54
    iget v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->collectionCount:I

    return v0
.end method

.method static synthetic access$1002(Lcom/dodonew/online/view/NetbarDetailTopView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/view/NetbarDetailTopView;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->collectionCount:I

    return p1
.end method

.method static synthetic access$1100(Lcom/dodonew/online/view/NetbarDetailTopView;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/view/NetbarDetailTopView;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/dodonew/online/view/NetbarDetailTopView;->setCollectionCount()V

    return-void
.end method

.method static synthetic access$1200(Lcom/dodonew/online/view/NetbarDetailTopView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/view/NetbarDetailTopView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/dodonew/online/view/NetbarDetailTopView;->setLinkbtnChecked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/dodonew/online/view/NetbarDetailTopView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/view/NetbarDetailTopView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->netbarName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dodonew/online/view/NetbarDetailTopView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/view/NetbarDetailTopView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->netbarAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/dodonew/online/view/NetbarDetailTopView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/view/NetbarDetailTopView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->netbarMaxPrice:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/dodonew/online/view/NetbarDetailTopView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/view/NetbarDetailTopView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->netbarMinPrice:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/dodonew/online/view/NetbarDetailTopView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/view/NetbarDetailTopView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->netbarPicUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/dodonew/online/view/NetbarDetailTopView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/view/NetbarDetailTopView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Ljava/lang/String;
    .param p8, "x8"    # Ljava/lang/String;
    .param p9, "x9"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct/range {p0 .. p9}, Lcom/dodonew/online/view/NetbarDetailTopView;->addCollection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/dodonew/online/view/NetbarDetailTopView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/view/NetbarDetailTopView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/dodonew/online/view/NetbarDetailTopView;->delCollection(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/dodonew/online/view/NetbarDetailTopView;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/view/NetbarDetailTopView;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/dodonew/online/view/NetbarDetailTopView;->setTickets(Ljava/util/List;)V

    return-void
.end method

.method private addCollection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "netbarId"    # Ljava/lang/String;
    .param p3, "netbarName"    # Ljava/lang/String;
    .param p4, "domainId"    # Ljava/lang/String;
    .param p5, "netbarAddress"    # Ljava/lang/String;
    .param p6, "netbarDistance"    # Ljava/lang/String;
    .param p7, "netbarMaxPrice"    # Ljava/lang/String;
    .param p8, "netbarMinPrice"    # Ljava/lang/String;
    .param p9, "netbarPicUrl"    # Ljava/lang/String;

    .prologue
    .line 213
    new-instance v0, Lcom/dodonew/online/view/NetbarDetailTopView$4;

    invoke-direct {v0, p0}, Lcom/dodonew/online/view/NetbarDetailTopView$4;-><init>(Lcom/dodonew/online/view/NetbarDetailTopView;)V

    .line 214
    invoke-virtual {v0}, Lcom/dodonew/online/view/NetbarDetailTopView$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 215
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 216
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->para:Ljava/util/Map;

    const-string v1, "userId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->para:Ljava/util/Map;

    const-string v1, "netbarId"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->para:Ljava/util/Map;

    const-string v1, "netbarName"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->para:Ljava/util/Map;

    const-string v1, "domainId"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->para:Ljava/util/Map;

    const-string v1, "netbarAddress"

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->para:Ljava/util/Map;

    const-string v1, "netbarDistance"

    invoke-interface {v0, v1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->para:Ljava/util/Map;

    const-string v1, "netbarMaxPrice"

    invoke-interface {v0, v1, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->para:Ljava/util/Map;

    const-string v1, "netbarMinPrice"

    invoke-interface {v0, v1, p8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->para:Ljava/util/Map;

    const-string v1, "netbarPicUrl"

    invoke-interface {v0, v1, p9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const-string v0, "collect/add"

    iget-object v1, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/dodonew/online/view/NetbarDetailTopView;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;Z)V

    .line 226
    return-void
.end method

.method private delCollection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "domainId"    # Ljava/lang/String;
    .param p2, "netBarId"    # Ljava/lang/String;

    .prologue
    .line 230
    new-instance v0, Lcom/dodonew/online/view/NetbarDetailTopView$5;

    invoke-direct {v0, p0}, Lcom/dodonew/online/view/NetbarDetailTopView$5;-><init>(Lcom/dodonew/online/view/NetbarDetailTopView;)V

    .line 231
    invoke-virtual {v0}, Lcom/dodonew/online/view/NetbarDetailTopView$5;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 232
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 233
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->para:Ljava/util/Map;

    const-string v1, "userId"

    iget-object v2, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->para:Ljava/util/Map;

    const-string v1, "domainId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->para:Ljava/util/Map;

    const-string v1, "netbarId"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string v0, "collect/close"

    iget-object v1, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/dodonew/online/view/NetbarDetailTopView;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;Z)V

    .line 237
    return-void
.end method

.method private hasCard()Z
    .locals 4

    .prologue
    .line 325
    iget-object v1, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->cards:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 326
    iget-object v1, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->cards:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/bean/Card;

    .line 327
    .local v0, "cd":Lcom/dodonew/online/bean/Card;
    invoke-virtual {v0}, Lcom/dodonew/online/bean/Card;->getNetBarID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->netBar:Lcom/dodonew/online/bean/NetBar;

    invoke-virtual {v3}, Lcom/dodonew/online/bean/NetBar;->getNetBarId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 328
    iget-object v1, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->netBar:Lcom/dodonew/online/bean/NetBar;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/Card;->getNetAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dodonew/online/bean/NetBar;->setNetAccount(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v0}, Lcom/dodonew/online/bean/Card;->getMemberNo()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->memberId:Ljava/lang/String;

    .line 330
    const/4 v1, 0x1

    .line 334
    .end local v0    # "cd":Lcom/dodonew/online/bean/Card;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->context:Landroid/content/Context;

    .line 90
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300b8

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 91
    const v0, 0x7f0d0210

    invoke-virtual {p0, v0}, Lcom/dodonew/online/view/NetbarDetailTopView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    .line 92
    invoke-static {p1}, Lcom/dodonew/online/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    div-int/lit16 v3, v3, 0x258

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 91
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    const v0, 0x7f0d0211

    invoke-virtual {p0, v0}, Lcom/dodonew/online/view/NetbarDetailTopView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->imageView:Landroid/widget/ImageView;

    .line 94
    const v0, 0x7f0d0212

    invoke-virtual {p0, v0}, Lcom/dodonew/online/view/NetbarDetailTopView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->tvBarName:Landroid/widget/TextView;

    .line 95
    const v0, 0x7f0d0213

    invoke-virtual {p0, v0}, Lcom/dodonew/online/view/NetbarDetailTopView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->tvBarScore:Landroid/widget/TextView;

    .line 96
    const v0, 0x7f0d0214

    invoke-virtual {p0, v0}, Lcom/dodonew/online/view/NetbarDetailTopView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->tvBarCost:Landroid/widget/TextView;

    .line 97
    const v0, 0x7f0d0215

    invoke-virtual {p0, v0}, Lcom/dodonew/online/view/NetbarDetailTopView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;

    iput-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->likeButtonView:Lcom/dodonew/online/widget/likeanimation/LikeButtonView;

    .line 98
    const v0, 0x7f0d0216

    invoke-virtual {p0, v0}, Lcom/dodonew/online/view/NetbarDetailTopView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->tvBarAddress:Landroid/widget/TextView;

    .line 99
    const v0, 0x7f0d0217

    invoke-virtual {p0, v0}, Lcom/dodonew/online/view/NetbarDetailTopView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->tvBarTel:Landroid/widget/TextView;

    .line 100
    const v0, 0x7f0d0218

    invoke-virtual {p0, v0}, Lcom/dodonew/online/view/NetbarDetailTopView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->viewBarPay:Landroid/view/View;

    .line 101
    const v0, 0x7f0d0219

    invoke-virtual {p0, v0}, Lcom/dodonew/online/view/NetbarDetailTopView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->viewBarOrder:Landroid/view/View;

    .line 102
    const v0, 0x7f0d021c

    invoke-virtual {p0, v0}, Lcom/dodonew/online/view/NetbarDetailTopView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->tvBarCoupon:Landroid/widget/TextView;

    .line 103
    const v0, 0x7f0d021a

    invoke-virtual {p0, v0}, Lcom/dodonew/online/view/NetbarDetailTopView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->viewBarCoupon:Landroid/view/View;

    .line 104
    const v0, 0x7f0d021d

    invoke-virtual {p0, v0}, Lcom/dodonew/online/view/NetbarDetailTopView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->tvUsergetCount:Landroid/widget/TextView;

    .line 105
    const v0, 0x7f0d021e

    invoke-virtual {p0, v0}, Lcom/dodonew/online/view/NetbarDetailTopView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->emptyView:Landroid/view/View;

    .line 106
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->tvBarAddress:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->tvBarTel:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->viewBarPay:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->viewBarOrder:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->viewBarCoupon:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->para:Ljava/util/Map;

    .line 112
    sget-object v0, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/User;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->userId:Ljava/lang/String;

    .line 113
    return-void
.end method

.method private queryIsCollectioned(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "domainId"    # Ljava/lang/String;
    .param p2, "netBarId"    # Ljava/lang/String;

    .prologue
    .line 202
    new-instance v0, Lcom/dodonew/online/view/NetbarDetailTopView$3;

    invoke-direct {v0, p0}, Lcom/dodonew/online/view/NetbarDetailTopView$3;-><init>(Lcom/dodonew/online/view/NetbarDetailTopView;)V

    .line 203
    invoke-virtual {v0}, Lcom/dodonew/online/view/NetbarDetailTopView$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 204
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 205
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->para:Ljava/util/Map;

    const-string v1, "userId"

    iget-object v2, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->para:Ljava/util/Map;

    const-string v1, "domainId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->para:Ljava/util/Map;

    const-string v1, "netbarId"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v0, "collect/exist"

    iget-object v1, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/dodonew/online/view/NetbarDetailTopView;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;Z)V

    .line 209
    return-void
.end method

.method private queryTicket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "netBarId"    # Ljava/lang/String;
    .param p2, "domainId"    # Ljava/lang/String;
    .param p3, "limit"    # Ljava/lang/String;
    .param p4, "page"    # Ljava/lang/String;

    .prologue
    .line 190
    new-instance v0, Lcom/dodonew/online/view/NetbarDetailTopView$2;

    invoke-direct {v0, p0}, Lcom/dodonew/online/view/NetbarDetailTopView$2;-><init>(Lcom/dodonew/online/view/NetbarDetailTopView;)V

    .line 191
    invoke-virtual {v0}, Lcom/dodonew/online/view/NetbarDetailTopView$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 192
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 193
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->para:Ljava/util/Map;

    const-string v1, "netBarId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->para:Ljava/util/Map;

    const-string v1, "domainId"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->para:Ljava/util/Map;

    const-string v1, "limit"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->para:Ljava/util/Map;

    const-string v1, "userAccount"

    sget-object v2, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v2}, Lcom/dodonew/online/bean/User;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->para:Ljava/util/Map;

    const-string v1, "page"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string v0, "oth/ticket/list"

    iget-object v1, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/dodonew/online/view/NetbarDetailTopView;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;Z)V

    .line 199
    return-void
.end method

.method private requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;Z)V
    .locals 7
    .param p1, "cmd"    # Ljava/lang/String;
    .param p3, "DEFAULT_TYPE"    # Ljava/lang/reflect/Type;
    .param p4, "isShow"    # Z
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
            "Z)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p2, "para":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p4, :cond_0

    .line 246
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->context:Landroid/content/Context;

    check-cast v0, Lcom/dodonew/online/base/ProgressActivity;

    invoke-virtual {v0}, Lcom/dodonew/online/base/ProgressActivity;->showProgress()V

    .line 248
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://api.dodovip.com/api/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/dodonew/online/http/JsonRequest;

    iget-object v1, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->context:Landroid/content/Context;

    const-string v3, ""

    new-instance v4, Lcom/dodonew/online/view/NetbarDetailTopView$6;

    invoke-direct {v4, p0, p1, p4}, Lcom/dodonew/online/view/NetbarDetailTopView$6;-><init>(Lcom/dodonew/online/view/NetbarDetailTopView;Ljava/lang/String;Z)V

    new-instance v5, Lcom/dodonew/online/view/NetbarDetailTopView$7;

    invoke-direct {v5, p0, p4}, Lcom/dodonew/online/view/NetbarDetailTopView$7;-><init>(Lcom/dodonew/online/view/NetbarDetailTopView;Z)V

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/dodonew/online/http/JsonRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->request:Lcom/dodonew/online/http/JsonRequest;

    .line 286
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-virtual {v0, p2}, Lcom/dodonew/online/http/JsonRequest;->addRequestMap(Ljava/util/Map;)V

    .line 287
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-static {v0, p0}, Lcom/dodonew/online/DodonewOnlineApplication;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    .line 288
    return-void
.end method

.method private setCollectionCount()V
    .locals 3

    .prologue
    .line 182
    iget v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->collectionCount:I

    if-lez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->tvBarScore:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5df2\u6709"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->collectionCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u4eba\u6536\u85cf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->tvBarScore:Landroid/widget/TextView;

    const-string v1, "\u6682\u65e0\u6536\u85cf"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setLinkbtnChecked(Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 292
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->likeButtonView:Lcom/dodonew/online/widget/likeanimation/LikeButtonView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->setChecked(Z)V

    .line 295
    :cond_0
    return-void
.end method

.method private setTickets(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Ticket;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "ls":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/Ticket;>;"
    const/4 v8, 0x0

    .line 298
    iget-object v2, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->tickets:Ljava/util/List;

    if-nez v2, :cond_0

    .line 299
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->tickets:Ljava/util/List;

    .line 301
    :cond_0
    iget-object v2, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->tickets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 303
    .local v0, "temp":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/Ticket;>;"
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 304
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/bean/Ticket;

    .line 305
    .local v1, "ticket":Lcom/dodonew/online/bean/Ticket;
    invoke-virtual {v1}, Lcom/dodonew/online/bean/Ticket;->getNetBarId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->netbarId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/dodonew/online/bean/Ticket;->getDomainId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->netBar:Lcom/dodonew/online/bean/NetBar;

    invoke-virtual {v4}, Lcom/dodonew/online/bean/NetBar;->getDomainId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/dodonew/online/bean/Ticket;->getEndTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dodonew/online/util/Utils;->formatTime(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gtz v3, :cond_1

    .line 307
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 312
    .end local v1    # "ticket":Lcom/dodonew/online/bean/Ticket;
    :cond_2
    iget-object v2, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->tickets:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 313
    iget-object v2, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->tickets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 314
    iget-object v2, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->viewBarCoupon:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 315
    iget-object v2, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->tickets:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/bean/Ticket;

    .line 316
    .restart local v1    # "ticket":Lcom/dodonew/online/bean/Ticket;
    iget-object v2, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->tvBarCoupon:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/dodonew/online/bean/Ticket;->getPresentAmount()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u5143\u7f51\u8d39\u5238"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v2, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->tvUsergetCount:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5df2\u9886\u53d6  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/dodonew/online/bean/Ticket;->getUsergetCount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    .end local v1    # "ticket":Lcom/dodonew/online/bean/Ticket;
    :goto_1
    return-void

    .line 319
    :cond_3
    iget-object v2, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->viewBarCoupon:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 340
    const/4 v0, 0x0

    .line 341
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 381
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 382
    iget-object v1, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 385
    :cond_1
    return-void

    .line 343
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->context:Landroid/content/Context;

    const-class v2, Lcom/dodonew/online/ui/MapActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 344
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "netBar"

    iget-object v2, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->netBar:Lcom/dodonew/online/bean/NetBar;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 347
    :pswitch_1
    iget-object v1, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->netbarTel:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 348
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.DIAL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->netbarTel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 349
    .restart local v0    # "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 353
    :pswitch_2
    invoke-direct {p0}, Lcom/dodonew/online/view/NetbarDetailTopView;->hasCard()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 354
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->context:Landroid/content/Context;

    const-class v2, Lcom/dodonew/online/ui/PayActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 359
    .restart local v0    # "intent":Landroid/content/Intent;
    :goto_1
    const-string v1, "netBar"

    iget-object v2, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->netBar:Lcom/dodonew/online/bean/NetBar;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 356
    :cond_2
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->context:Landroid/content/Context;

    const-class v2, Lcom/dodonew/online/ui/MyAddCardActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 357
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "intentActivity"

    const-class v2, Lcom/dodonew/online/ui/PayActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 362
    :pswitch_3
    invoke-direct {p0}, Lcom/dodonew/online/view/NetbarDetailTopView;->hasCard()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 363
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->context:Landroid/content/Context;

    const-class v2, Lcom/dodonew/online/ui/OrderBarActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 364
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "netBarId"

    iget-object v2, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->netBar:Lcom/dodonew/online/bean/NetBar;

    invoke-virtual {v2}, Lcom/dodonew/online/bean/NetBar;->getNetBarId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    const-string v1, "domainId"

    iget-object v2, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->netBar:Lcom/dodonew/online/bean/NetBar;

    invoke-virtual {v2}, Lcom/dodonew/online/bean/NetBar;->getDomainId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    const-string v1, "memberId"

    iget-object v2, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->memberId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 368
    :cond_3
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->context:Landroid/content/Context;

    const-class v2, Lcom/dodonew/online/ui/MyAddCardActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 369
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "intentActivity"

    const-class v2, Lcom/dodonew/online/ui/OrderBarActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 370
    const-string v1, "netBar"

    iget-object v2, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->netBar:Lcom/dodonew/online/bean/NetBar;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 374
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->context:Landroid/content/Context;

    const-class v2, Lcom/dodonew/online/ui/TicketActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 375
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "netBarId"

    iget-object v2, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->netBar:Lcom/dodonew/online/bean/NetBar;

    invoke-virtual {v2}, Lcom/dodonew/online/bean/NetBar;->getNetBarId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    const-string v1, "domainId"

    iget-object v2, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->netBar:Lcom/dodonew/online/bean/NetBar;

    invoke-virtual {v2}, Lcom/dodonew/online/bean/NetBar;->getDomainId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 341
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0216
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setCards(Ljava/util/List;)V
    .locals 0
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
    .line 388
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/Card;>;"
    iput-object p1, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->cards:Ljava/util/List;

    .line 389
    return-void
.end method

.method public setEmptyView()V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->emptyView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 393
    return-void
.end method

.method public setNetBar(Lcom/dodonew/online/bean/NetBar;)V
    .locals 13
    .param p1, "netBar"    # Lcom/dodonew/online/bean/NetBar;

    .prologue
    const v8, 0x7f0200b8

    const/4 v12, 0x0

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    .line 117
    iput-object p1, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->netBar:Lcom/dodonew/online/bean/NetBar;

    .line 118
    invoke-virtual {p1}, Lcom/dodonew/online/bean/NetBar;->getNetBarCaption()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->netbarName:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Lcom/dodonew/online/bean/NetBar;->getNetBarId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->netbarId:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Lcom/dodonew/online/bean/NetBar;->getDomainId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->domianId:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Lcom/dodonew/online/bean/NetBar;->getAddress()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->netbarAddress:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Lcom/dodonew/online/bean/NetBar;->getMaxPrice()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->netbarMaxPrice:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Lcom/dodonew/online/bean/NetBar;->getMinPrice()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->netbarMinPrice:Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Lcom/dodonew/online/bean/NetBar;->getPicUrl()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->netbarPicUrl:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Lcom/dodonew/online/bean/NetBar;->getRegularTel()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->netbarTel:Ljava/lang/String;

    .line 126
    iget-object v6, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->netbarPicUrl:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 127
    iget-object v6, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v6

    iget-object v7, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->netbarPicUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v6

    .line 128
    invoke-virtual {v6, v8}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v6

    .line 129
    invoke-virtual {v6, v8}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v6

    iget-object v7, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 132
    :cond_0
    iget-object v6, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->tvBarName:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->netbarName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    invoke-virtual {p1}, Lcom/dodonew/online/bean/NetBar;->getCollectCount()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->collectionCount:I

    .line 134
    invoke-direct {p0}, Lcom/dodonew/online/view/NetbarDetailTopView;->setCollectionCount()V

    .line 135
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v6, "#.0"

    invoke-direct {v0, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 137
    .local v0, "df":Ljava/text/DecimalFormat;
    iget-object v6, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->netbarMinPrice:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->netbarMinPrice:Ljava/lang/String;

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 138
    :cond_1
    const-string v5, "0"

    .line 142
    .local v5, "min":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->netbarMaxPrice:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->netbarMaxPrice:Ljava/lang/String;

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 143
    :cond_2
    const-string v4, "0"

    .line 147
    .local v4, "max":Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->tvBarCost:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u4e0a\u7f51\u8d39\u7387:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\u5143"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    invoke-virtual {p1}, Lcom/dodonew/online/bean/NetBar;->getCollectStatus()I

    move-result v6

    if-lez v6, :cond_3

    .line 149
    iget-object v6, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->likeButtonView:Lcom/dodonew/online/widget/likeanimation/LikeButtonView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->setChecked(Z)V

    .line 151
    :cond_3
    iget-object v6, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->tvBarAddress:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->netbarAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v6, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->netbarTel:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 153
    iget-object v6, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->tvBarTel:Landroid/widget/TextView;

    const-string v7, "\u6682\u65e0\u8054\u7cfb\u65b9\u5f0f"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    :goto_2
    invoke-virtual {p1}, Lcom/dodonew/online/bean/NetBar;->getIsSupportOrderOnline()Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "isOrder":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/dodonew/online/bean/NetBar;->getIsSupportPayByPhone()Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, "isPay":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/dodonew/online/bean/NetBar;->getIsSupportSale()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "isCoupon":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/dodonew/online/bean/NetBar;->getDomainId()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->netbarId:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/dodonew/online/view/NetbarDetailTopView;->queryIsCollectioned(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v6, "1"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 163
    iget-object v6, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->viewBarOrder:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    .line 165
    :cond_4
    const-string v6, "1"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 166
    iget-object v6, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->viewBarPay:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    .line 168
    :cond_5
    invoke-virtual {p1}, Lcom/dodonew/online/bean/NetBar;->getNetBarId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/dodonew/online/bean/NetBar;->getDomainId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->limit:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->page:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/dodonew/online/view/NetbarDetailTopView;->queryTicket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v6, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->likeButtonView:Lcom/dodonew/online/widget/likeanimation/LikeButtonView;

    new-instance v7, Lcom/dodonew/online/view/NetbarDetailTopView$1;

    invoke-direct {v7, p0, p1}, Lcom/dodonew/online/view/NetbarDetailTopView$1;-><init>(Lcom/dodonew/online/view/NetbarDetailTopView;Lcom/dodonew/online/bean/NetBar;)V

    invoke-virtual {v6, v7}, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->setOnClickListener(Lcom/dodonew/online/widget/likeanimation/LikeButtonView$OnClickListener;)V

    .line 179
    return-void

    .line 140
    .end local v1    # "isCoupon":Ljava/lang/String;
    .end local v2    # "isOrder":Ljava/lang/String;
    .end local v3    # "isPay":Ljava/lang/String;
    .end local v4    # "max":Ljava/lang/String;
    .end local v5    # "min":Ljava/lang/String;
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->netbarMinPrice:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    div-double/2addr v8, v10

    invoke-virtual {v0, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "min":Ljava/lang/String;
    goto/16 :goto_0

    .line 145
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->netbarMaxPrice:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    div-double/2addr v8, v10

    invoke-virtual {v0, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "max":Ljava/lang/String;
    goto/16 :goto_1

    .line 155
    :cond_8
    iget-object v6, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->tvBarTel:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/dodonew/online/view/NetbarDetailTopView;->netbarTel:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method
