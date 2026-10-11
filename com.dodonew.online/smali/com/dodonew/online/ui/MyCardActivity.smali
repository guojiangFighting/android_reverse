.class public Lcom/dodonew/online/ui/MyCardActivity;
.super Lcom/dodonew/online/base/TitleActivity;
.source "MyCardActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private DEFAULT_TYPE:Ljava/lang/reflect/Type;

.field private cardAdapter:Lcom/dodonew/online/adapter/CardAdapter;

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

.field private isShow:Z

.field private listView:Landroid/widget/ListView;

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

.field private pos:I

.field private request:Lcom/dodonew/online/http/JsonRequest;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/dodonew/online/base/TitleActivity;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dodonew/online/ui/MyCardActivity;->isShow:Z

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/dodonew/online/ui/MyCardActivity;->pos:I

    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/ui/MyCardActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/MyCardActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCardActivity;->cards:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dodonew/online/ui/MyCardActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/MyCardActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/MyCardActivity;->setCards(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/dodonew/online/ui/MyCardActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/MyCardActivity;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/dodonew/online/ui/MyCardActivity;->setCardAdapter()V

    return-void
.end method

.method static synthetic access$300(Lcom/dodonew/online/ui/MyCardActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/MyCardActivity;

    .prologue
    .line 39
    iget v0, p0, Lcom/dodonew/online/ui/MyCardActivity;->pos:I

    return v0
.end method

.method static synthetic access$302(Lcom/dodonew/online/ui/MyCardActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/MyCardActivity;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/dodonew/online/ui/MyCardActivity;->pos:I

    return p1
.end method

.method static synthetic access$400(Lcom/dodonew/online/ui/MyCardActivity;Lcom/dodonew/online/bean/Card;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/MyCardActivity;
    .param p1, "x1"    # Lcom/dodonew/online/bean/Card;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/MyCardActivity;->doDelResult(Lcom/dodonew/online/bean/Card;)V

    return-void
.end method

.method static synthetic access$500(Lcom/dodonew/online/ui/MyCardActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/MyCardActivity;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/dodonew/online/ui/MyCardActivity;->isShow:Z

    return v0
.end method

.method static synthetic access$600(Lcom/dodonew/online/ui/MyCardActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/MyCardActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/MyCardActivity;->delCard(Ljava/lang/String;)V

    return-void
.end method

.method private delCard(Ljava/lang/String;)V
    .locals 3
    .param p1, "cardId"    # Ljava/lang/String;

    .prologue
    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/ui/MyCardActivity;->isShow:Z

    .line 114
    new-instance v0, Lcom/dodonew/online/ui/MyCardActivity$3;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/MyCardActivity$3;-><init>(Lcom/dodonew/online/ui/MyCardActivity;)V

    .line 115
    invoke-virtual {v0}, Lcom/dodonew/online/ui/MyCardActivity$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/MyCardActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 116
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCardActivity;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 117
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCardActivity;->para:Ljava/util/Map;

    const-string v1, "urAssid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v0, "netCard/delCard"

    iget-object v1, p0, Lcom/dodonew/online/ui/MyCardActivity;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/ui/MyCardActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/ui/MyCardActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 119
    return-void
.end method

.method private doDelResult(Lcom/dodonew/online/bean/Card;)V
    .locals 2
    .param p1, "data"    # Lcom/dodonew/online/bean/Card;

    .prologue
    .line 176
    const-string v0, "true"

    invoke-virtual {p1, v0}, Lcom/dodonew/online/bean/Card;->setDel(Ljava/lang/String;)V

    .line 177
    invoke-static {}, Lcom/dodonew/online/bean/EventBusManager;->getInstace()Lcom/dodonew/online/bean/EventBusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dodonew/online/bean/EventBusManager;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/dodonew/online/bean/CardEvent;

    invoke-direct {v1, p1}, Lcom/dodonew/online/bean/CardEvent;-><init>(Lcom/dodonew/online/bean/Card;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    .line 178
    return-void
.end method

.method private initEvent()V
    .locals 2

    .prologue
    .line 76
    const v0, 0x7f0d00c7

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/MyCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v0, 0x7f0d00c8

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/MyCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCardActivity;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/dodonew/online/ui/MyCardActivity$1;

    invoke-direct {v1, p0}, Lcom/dodonew/online/ui/MyCardActivity$1;-><init>(Lcom/dodonew/online/ui/MyCardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 90
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 65
    const-string v0, "\u4f1a\u5458\u5361"

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/MyCardActivity;->setTitle(Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/MyCardActivity;->setNavigationIcon(I)V

    .line 67
    const v0, 0x7f0d00c5

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/MyCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/MultiStateView;

    iput-object v0, p0, Lcom/dodonew/online/ui/MyCardActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    .line 68
    const v0, 0x7f0d00c6

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/MyCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/dodonew/online/ui/MyCardActivity;->listView:Landroid/widget/ListView;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/ui/MyCardActivity;->para:Ljava/util/Map;

    .line 70
    return-void
.end method

.method private queryMyCard(Ljava/lang/String;)V
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dodonew/online/ui/MyCardActivity;->isShow:Z

    .line 100
    new-instance v0, Lcom/dodonew/online/ui/MyCardActivity$2;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/MyCardActivity$2;-><init>(Lcom/dodonew/online/ui/MyCardActivity;)V

    .line 101
    invoke-virtual {v0}, Lcom/dodonew/online/ui/MyCardActivity$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/MyCardActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 102
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCardActivity;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 103
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCardActivity;->para:Ljava/util/Map;

    const-string v1, "userId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v0, "netCard/cards"

    iget-object v1, p0, Lcom/dodonew/online/ui/MyCardActivity;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/ui/MyCardActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/ui/MyCardActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 105
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
    .line 128
    .local p2, "para":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/dodonew/online/ui/MyCardActivity;->isShow:Z

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/dodonew/online/ui/MyCardActivity;->showProgress()V

    .line 132
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

    .line 133
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/dodonew/online/http/JsonRequest;

    const-string v3, ""

    new-instance v4, Lcom/dodonew/online/ui/MyCardActivity$4;

    invoke-direct {v4, p0, p1}, Lcom/dodonew/online/ui/MyCardActivity$4;-><init>(Lcom/dodonew/online/ui/MyCardActivity;Ljava/lang/String;)V

    new-instance v5, Lcom/dodonew/online/ui/MyCardActivity$5;

    invoke-direct {v5, p0}, Lcom/dodonew/online/ui/MyCardActivity$5;-><init>(Lcom/dodonew/online/ui/MyCardActivity;)V

    move-object v1, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/dodonew/online/http/JsonRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/MyCardActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    .line 164
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCardActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-virtual {v0, p2}, Lcom/dodonew/online/http/JsonRequest;->addRequestMap(Ljava/util/Map;)V

    .line 165
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCardActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-static {v0, p0}, Lcom/dodonew/online/DodonewOnlineApplication;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    .line 166
    return-void
.end method

.method private setCardAdapter()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCardActivity;->cards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCardActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->CONTENT:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    .line 186
    :goto_0
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCardActivity;->cardAdapter:Lcom/dodonew/online/adapter/CardAdapter;

    if-nez v0, :cond_0

    .line 187
    new-instance v0, Lcom/dodonew/online/adapter/CardAdapter;

    iget-object v1, p0, Lcom/dodonew/online/ui/MyCardActivity;->cards:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/dodonew/online/adapter/CardAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/MyCardActivity;->cardAdapter:Lcom/dodonew/online/adapter/CardAdapter;

    .line 188
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCardActivity;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/dodonew/online/ui/MyCardActivity;->cardAdapter:Lcom/dodonew/online/adapter/CardAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 189
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCardActivity;->cardAdapter:Lcom/dodonew/online/adapter/CardAdapter;

    new-instance v1, Lcom/dodonew/online/ui/MyCardActivity$6;

    invoke-direct {v1, p0}, Lcom/dodonew/online/ui/MyCardActivity$6;-><init>(Lcom/dodonew/online/ui/MyCardActivity;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/adapter/CardAdapter;->setmListener(Lcom/dodonew/online/widget/swipelayout/IOnItemRightClickListener;)V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCardActivity;->cardAdapter:Lcom/dodonew/online/adapter/CardAdapter;

    invoke-virtual {v0}, Lcom/dodonew/online/adapter/CardAdapter;->notifyDataSetChanged()V

    .line 200
    return-void

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCardActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->EMPTY:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    goto :goto_0
.end method

.method private setCards(Ljava/util/List;)V
    .locals 1
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
    .line 169
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/Card;>;"
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCardActivity;->cards:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/ui/MyCardActivity;->cards:Ljava/util/ArrayList;

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCardActivity;->cards:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 173
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 222
    invoke-super {p0, p1, p2, p3}, Lcom/dodonew/online/base/TitleActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 223
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 224
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCardActivity;->cards:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/ui/MyCardActivity;->cards:Ljava/util/ArrayList;

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/dodonew/online/ui/MyCardActivity;->cards:Ljava/util/ArrayList;

    const-string v0, "card"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/bean/Card;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    invoke-direct {p0}, Lcom/dodonew/online/ui/MyCardActivity;->setCardAdapter()V

    .line 232
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 205
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 218
    :goto_0
    return-void

    .line 207
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dodonew/online/ui/MyAddCardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 208
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/dodonew/online/ui/MyCardActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 211
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dodonew/online/ui/PayActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 212
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/MyCardActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d00c7
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/dodonew/online/base/TitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v0, 0x7f030033

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/MyCardActivity;->setContentView(I)V

    .line 56
    invoke-direct {p0}, Lcom/dodonew/online/ui/MyCardActivity;->initView()V

    .line 57
    invoke-direct {p0}, Lcom/dodonew/online/ui/MyCardActivity;->initEvent()V

    .line 58
    sget-object v0, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/User;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dodonew/online/ui/MyCardActivity;->queryMyCard(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 245
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onPause()V

    .line 246
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 248
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 239
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onResume()V

    .line 240
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 242
    return-void
.end method
