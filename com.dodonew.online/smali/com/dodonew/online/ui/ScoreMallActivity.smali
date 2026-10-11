.class public Lcom/dodonew/online/ui/ScoreMallActivity;
.super Lcom/dodonew/online/base/TitleActivity;
.source "ScoreMallActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final REQUESTCODE:I = 0x16


# instance fields
.field private DEFAULT_TYPE:Ljava/lang/reflect/Type;

.field private convertSum:I

.field private gifts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Gift;",
            ">;"
        }
    .end annotation
.end field

.field private gridView:Landroid/widget/GridView;

.field private isShow:Z

.field private isSign:Z

.field private mallGiftAdapter:Lcom/dodonew/online/adapter/MallGiftAdapter;

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

.field pos:I

.field private request:Lcom/dodonew/online/http/JsonRequest;

.field private tvExchange:Landroid/widget/TextView;

.field private tvScore:Landroid/widget/TextView;

.field private tvSign:Landroid/widget/TextView;

.field private tvSignTxt:Landroid/widget/TextView;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Lcom/dodonew/online/base/TitleActivity;-><init>()V

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->pos:I

    .line 61
    iput-boolean v1, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->isSign:Z

    .line 64
    iput-boolean v1, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->isShow:Z

    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/ui/ScoreMallActivity;Lcom/dodonew/online/bean/Gifts;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/ScoreMallActivity;
    .param p1, "x1"    # Lcom/dodonew/online/bean/Gifts;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/ScoreMallActivity;->setGifts(Lcom/dodonew/online/bean/Gifts;)V

    return-void
.end method

.method static synthetic access$100(Lcom/dodonew/online/ui/ScoreMallActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/ScoreMallActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/dodonew/online/ui/ScoreMallActivity;->setMallGiftAdapter()V

    return-void
.end method

.method static synthetic access$200(Lcom/dodonew/online/ui/ScoreMallActivity;Lcom/dodonew/online/bean/ExchangeResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/ScoreMallActivity;
    .param p1, "x1"    # Lcom/dodonew/online/bean/ExchangeResult;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/ScoreMallActivity;->setExchangeResult(Lcom/dodonew/online/bean/ExchangeResult;)V

    return-void
.end method

.method static synthetic access$300(Lcom/dodonew/online/ui/ScoreMallActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/ScoreMallActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/dodonew/online/ui/ScoreMallActivity;->setSign()V

    return-void
.end method

.method static synthetic access$400(Lcom/dodonew/online/ui/ScoreMallActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/ScoreMallActivity;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->isShow:Z

    return v0
.end method

.method private exchangeGift(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "giftId"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "addressId"    # Ljava/lang/String;

    .prologue
    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->isShow:Z

    .line 136
    new-instance v0, Lcom/dodonew/online/ui/ScoreMallActivity$2;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/ScoreMallActivity$2;-><init>(Lcom/dodonew/online/ui/ScoreMallActivity;)V

    .line 137
    invoke-virtual {v0}, Lcom/dodonew/online/ui/ScoreMallActivity$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 138
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 139
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->para:Ljava/util/Map;

    const-string v1, "giftId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->para:Ljava/util/Map;

    const-string v1, "userId"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->para:Ljava/util/Map;

    const-string v1, "addressId"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v0, "gift/exchangeGift"

    iget-object v1, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/ui/ScoreMallActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 143
    return-void
.end method

.method private getMallGift(Ljava/lang/String;)V
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->isShow:Z

    .line 121
    new-instance v0, Lcom/dodonew/online/ui/ScoreMallActivity$1;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/ScoreMallActivity$1;-><init>(Lcom/dodonew/online/ui/ScoreMallActivity;)V

    .line 122
    invoke-virtual {v0}, Lcom/dodonew/online/ui/ScoreMallActivity$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 123
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 124
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->para:Ljava/util/Map;

    const-string v1, "userId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v0, "gift/fillData"

    iget-object v1, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/ui/ScoreMallActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 127
    return-void
.end method

.method private initEvent()V
    .locals 1

    .prologue
    .line 108
    const v0, 0x7f0d0104

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/ScoreMallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const v0, 0x7f0d0107

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/ScoreMallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const v0, 0x7f0d0108

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/ScoreMallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 75
    const-string v0, "\u79ef\u5206\u5546\u57ce"

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/ScoreMallActivity;->setTitle(Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/ScoreMallActivity;->setNavigationIcon(I)V

    .line 77
    const v0, 0x7f0d0103

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/ScoreMallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->tvScore:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f0d0105

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/ScoreMallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->tvSignTxt:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f0d0106

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/ScoreMallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->tvSign:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f0d010a

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/ScoreMallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/MultiStateView;

    iput-object v0, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    .line 81
    const v0, 0x7f0d010b

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/ScoreMallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->gridView:Landroid/widget/GridView;

    .line 82
    const v0, 0x7f0d0109

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/ScoreMallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->tvExchange:Landroid/widget/TextView;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->para:Ljava/util/Map;

    .line 84
    sget-object v0, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/User;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->userId:Ljava/lang/String;

    .line 86
    invoke-direct {p0}, Lcom/dodonew/online/ui/ScoreMallActivity;->setSign()V

    .line 87
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->userId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/dodonew/online/ui/ScoreMallActivity;->getMallGift(Ljava/lang/String;)V

    .line 89
    :cond_0
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
    .line 161
    .local p2, "para":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->isShow:Z

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/dodonew/online/ui/ScoreMallActivity;->showProgress()V

    .line 165
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

    .line 166
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/dodonew/online/http/JsonRequest;

    const-string v3, ""

    new-instance v4, Lcom/dodonew/online/ui/ScoreMallActivity$4;

    invoke-direct {v4, p0, p1}, Lcom/dodonew/online/ui/ScoreMallActivity$4;-><init>(Lcom/dodonew/online/ui/ScoreMallActivity;Ljava/lang/String;)V

    new-instance v5, Lcom/dodonew/online/ui/ScoreMallActivity$5;

    invoke-direct {v5, p0}, Lcom/dodonew/online/ui/ScoreMallActivity$5;-><init>(Lcom/dodonew/online/ui/ScoreMallActivity;)V

    move-object v1, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/dodonew/online/http/JsonRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    .line 197
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-virtual {v0, p2}, Lcom/dodonew/online/http/JsonRequest;->addRequestMap(Ljava/util/Map;)V

    .line 198
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-static {v0, p0}, Lcom/dodonew/online/DodonewOnlineApplication;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    .line 199
    return-void
.end method

.method private setExchangeResult(Lcom/dodonew/online/bean/ExchangeResult;)V
    .locals 3
    .param p1, "exchangeResult"    # Lcom/dodonew/online/bean/ExchangeResult;

    .prologue
    .line 202
    iget-object v0, p1, Lcom/dodonew/online/bean/ExchangeResult;->user:Lcom/dodonew/online/bean/User;

    sput-object v0, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    .line 203
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->tvScore:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6211\u7684\u79ef\u5206: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v2}, Lcom/dodonew/online/bean/User;->getScore()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    div-int/lit8 v2, v2, 0x64

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget v0, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->convertSum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->convertSum:I

    .line 205
    iget-object v0, p1, Lcom/dodonew/online/bean/ExchangeResult;->gifts:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/dodonew/online/ui/ScoreMallActivity;->setGifts(Ljava/util/List;)V

    .line 206
    return-void
.end method

.method private setGifts(Lcom/dodonew/online/bean/Gifts;)V
    .locals 1
    .param p1, "data"    # Lcom/dodonew/online/bean/Gifts;

    .prologue
    .line 209
    invoke-virtual {p1}, Lcom/dodonew/online/bean/Gifts;->getConvertSum()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->convertSum:I

    .line 210
    invoke-virtual {p1}, Lcom/dodonew/online/bean/Gifts;->getGifts()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dodonew/online/ui/ScoreMallActivity;->setGifts(Ljava/util/List;)V

    .line 211
    return-void
.end method

.method private setGifts(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Gift;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 214
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/Gift;>;"
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->tvExchange:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->convertSum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->gifts:Ljava/util/List;

    if-nez v0, :cond_0

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->gifts:Ljava/util/List;

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->gifts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 219
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->gifts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 220
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->gifts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->CONTENT:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    .line 225
    :goto_0
    return-void

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->EMPTY:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    goto :goto_0
.end method

.method private setMallGiftAdapter()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->mallGiftAdapter:Lcom/dodonew/online/adapter/MallGiftAdapter;

    if-nez v0, :cond_0

    .line 230
    new-instance v0, Lcom/dodonew/online/adapter/MallGiftAdapter;

    iget-object v1, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->gifts:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/dodonew/online/adapter/MallGiftAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->mallGiftAdapter:Lcom/dodonew/online/adapter/MallGiftAdapter;

    .line 231
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->gridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->mallGiftAdapter:Lcom/dodonew/online/adapter/MallGiftAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 232
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->mallGiftAdapter:Lcom/dodonew/online/adapter/MallGiftAdapter;

    new-instance v1, Lcom/dodonew/online/ui/ScoreMallActivity$6;

    invoke-direct {v1, p0}, Lcom/dodonew/online/ui/ScoreMallActivity$6;-><init>(Lcom/dodonew/online/ui/ScoreMallActivity;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/adapter/MallGiftAdapter;->setOnItemClickListener(Lcom/dodonew/online/interfaces/OnItemClickListener;)V

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->mallGiftAdapter:Lcom/dodonew/online/adapter/MallGiftAdapter;

    invoke-virtual {v0}, Lcom/dodonew/online/adapter/MallGiftAdapter;->notifyDataSetChanged()V

    .line 242
    return-void
.end method

.method private setScore(Lcom/dodonew/online/bean/Gift;)V
    .locals 4
    .param p1, "gift"    # Lcom/dodonew/online/bean/Gift;

    .prologue
    .line 102
    sget-object v1, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/User;->getScore()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1}, Lcom/dodonew/online/bean/Gift;->getScore()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sub-int v0, v1, v2

    .line 103
    .local v0, "score":I
    sget-object v1, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v3, v0, 0x64

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dodonew/online/bean/User;->setScore(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->tvScore:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6211\u7684\u79ef\u5206: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    return-void
.end method

.method private setSign()V
    .locals 4

    .prologue
    .line 92
    iget-object v1, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->tvScore:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6211\u7684\u79ef\u5206: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v3}, Lcom/dodonew/online/bean/User;->getScore()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    div-int/lit8 v3, v3, 0x64

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    sget-object v1, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/User;->getIsSign()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "isSignStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\u662f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->isSign:Z

    .line 96
    iget-object v1, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->tvSignTxt:Landroid/widget/TextView;

    const-string v2, "\u5df2\u7b7e\u5230"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v1, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->tvSign:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    :cond_0
    return-void
.end method

.method private sign()V
    .locals 3

    .prologue
    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->isShow:Z

    .line 148
    new-instance v0, Lcom/dodonew/online/ui/ScoreMallActivity$3;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/ScoreMallActivity$3;-><init>(Lcom/dodonew/online/ui/ScoreMallActivity;)V

    .line 149
    invoke-virtual {v0}, Lcom/dodonew/online/ui/ScoreMallActivity$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 150
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 151
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->para:Ljava/util/Map;

    const-string v1, "userId"

    iget-object v2, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v0, "user/signin"

    iget-object v1, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/ui/ScoreMallActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 153
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 246
    invoke-super {p0, p1, p2, p3}, Lcom/dodonew/online/base/TitleActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 247
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 248
    const/16 v1, 0x16

    if-ne p1, v1, :cond_0

    .line 249
    const-string v1, "address"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/bean/Address;

    .line 250
    .local v0, "address":Lcom/dodonew/online/bean/Address;
    if-eqz v0, :cond_0

    .line 251
    iget-object v1, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->gifts:Ljava/util/List;

    iget v2, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->pos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/bean/Gift;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/Gift;->getGiftId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->userId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/Address;->getAddressId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/dodonew/online/ui/ScoreMallActivity;->exchangeGift(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .end local v0    # "address":Lcom/dodonew/online/bean/Address;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 265
    const/4 v0, 0x0

    .line 266
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 284
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 268
    :pswitch_1
    iget-boolean v1, p0, Lcom/dodonew/online/ui/ScoreMallActivity;->isSign:Z

    if-nez v1, :cond_0

    .line 269
    invoke-direct {p0}, Lcom/dodonew/online/ui/ScoreMallActivity;->sign()V

    goto :goto_0

    .line 273
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v1, Lcom/dodonew/online/ui/ScoreRecordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 274
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/ScoreMallActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 277
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v1, Lcom/dodonew/online/ui/ExchangeRecordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 278
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/ScoreMallActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0104
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/dodonew/online/base/TitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v0, 0x7f030042

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/ScoreMallActivity;->setContentView(I)V

    .line 70
    invoke-direct {p0}, Lcom/dodonew/online/ui/ScoreMallActivity;->initView()V

    .line 71
    invoke-direct {p0}, Lcom/dodonew/online/ui/ScoreMallActivity;->initEvent()V

    .line 72
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 260
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onDestroy()V

    .line 261
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 297
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onPause()V

    .line 298
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 300
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 291
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onResume()V

    .line 292
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 294
    return-void
.end method
