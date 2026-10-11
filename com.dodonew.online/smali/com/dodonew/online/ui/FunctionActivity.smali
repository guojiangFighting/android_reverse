.class public Lcom/dodonew/online/ui/FunctionActivity;
.super Lcom/dodonew/online/base/TitleActivity;
.source "FunctionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private DEFAULT_TYPE:Ljava/lang/reflect/Type;

.field private btnOff:Landroid/widget/Button;

.field private informationDialog:Lcom/dodonew/online/widget/dialog/InformationDialog;

.field private isClick:Z

.field private memberNo:Ljava/lang/String;

.field private netBar:Lcom/dodonew/online/bean/NetBar;

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

.field private sb:Ljava/lang/StringBuilder;

.field private tvTip:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/dodonew/online/base/TitleActivity;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/ui/FunctionActivity;->para:Ljava/util/Map;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dodonew/online/ui/FunctionActivity;->isClick:Z

    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/ui/FunctionActivity;Lcom/dodonew/online/bean/OnlineState;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/FunctionActivity;
    .param p1, "x1"    # Lcom/dodonew/online/bean/OnlineState;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/FunctionActivity;->setOnlineState(Lcom/dodonew/online/bean/OnlineState;)V

    return-void
.end method

.method static synthetic access$100(Lcom/dodonew/online/ui/FunctionActivity;Lcom/dodonew/online/bean/Offline;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/FunctionActivity;
    .param p1, "x1"    # Lcom/dodonew/online/bean/Offline;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/FunctionActivity;->setOffline(Lcom/dodonew/online/bean/Offline;)V

    return-void
.end method

.method static synthetic access$200(Lcom/dodonew/online/ui/FunctionActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/FunctionActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/dodonew/online/ui/FunctionActivity;->tvTip:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dodonew/online/ui/FunctionActivity;)Lcom/dodonew/online/bean/NetBar;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/FunctionActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/dodonew/online/ui/FunctionActivity;->netBar:Lcom/dodonew/online/bean/NetBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/dodonew/online/ui/FunctionActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/FunctionActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/dodonew/online/ui/FunctionActivity;->memberNo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/dodonew/online/ui/FunctionActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/FunctionActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/dodonew/online/ui/FunctionActivity;->offLine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initEvent()V
    .locals 1

    .prologue
    .line 79
    const v0, 0x7f0d00b6

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/FunctionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    const v0, 0x7f0d00b7

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/FunctionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    const v0, 0x7f0d00b8

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/FunctionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/FunctionActivity;->setNavigationIcon(I)V

    .line 65
    const v0, 0x7f0d00b5

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/FunctionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/ui/FunctionActivity;->tvTip:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f0d00b6

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/FunctionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dodonew/online/ui/FunctionActivity;->btnOff:Landroid/widget/Button;

    .line 67
    invoke-virtual {p0}, Lcom/dodonew/online/ui/FunctionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "netBar"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/bean/NetBar;

    iput-object v0, p0, Lcom/dodonew/online/ui/FunctionActivity;->netBar:Lcom/dodonew/online/bean/NetBar;

    .line 68
    invoke-virtual {p0}, Lcom/dodonew/online/ui/FunctionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "memberNo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/FunctionActivity;->memberNo:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/dodonew/online/ui/FunctionActivity;->netBar:Lcom/dodonew/online/bean/NetBar;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/dodonew/online/ui/FunctionActivity;->netBar:Lcom/dodonew/online/bean/NetBar;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/NetBar;->getNetBarCaption()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/FunctionActivity;->setTitle(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/dodonew/online/ui/FunctionActivity;->netBar:Lcom/dodonew/online/bean/NetBar;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/NetBar;->getDomainId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/dodonew/online/ui/FunctionActivity;->netBar:Lcom/dodonew/online/bean/NetBar;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/NetBar;->getNetBarId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dodonew/online/ui/FunctionActivity;->memberNo:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/ui/FunctionActivity;->queryLineStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_0
    return-void
.end method

.method private offLine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "domainId"    # Ljava/lang/String;
    .param p2, "netBarId"    # Ljava/lang/String;
    .param p3, "memberId"    # Ljava/lang/String;

    .prologue
    .line 109
    new-instance v0, Lcom/dodonew/online/ui/FunctionActivity$2;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/FunctionActivity$2;-><init>(Lcom/dodonew/online/ui/FunctionActivity;)V

    .line 110
    invoke-virtual {v0}, Lcom/dodonew/online/ui/FunctionActivity$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/FunctionActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 111
    iget-object v0, p0, Lcom/dodonew/online/ui/FunctionActivity;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 112
    iget-object v0, p0, Lcom/dodonew/online/ui/FunctionActivity;->para:Ljava/util/Map;

    const-string v1, "domainId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/dodonew/online/ui/FunctionActivity;->para:Ljava/util/Map;

    const-string v1, "netBarId"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lcom/dodonew/online/ui/FunctionActivity;->para:Ljava/util/Map;

    const-string v1, "memberId"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v0, "oth/online/end"

    iget-object v1, p0, Lcom/dodonew/online/ui/FunctionActivity;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/ui/FunctionActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/ui/FunctionActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 117
    return-void
.end method

.method private queryLineStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "domainId"    # Ljava/lang/String;
    .param p2, "netBarId"    # Ljava/lang/String;
    .param p3, "memberId"    # Ljava/lang/String;

    .prologue
    .line 92
    new-instance v0, Lcom/dodonew/online/ui/FunctionActivity$1;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/FunctionActivity$1;-><init>(Lcom/dodonew/online/ui/FunctionActivity;)V

    .line 93
    invoke-virtual {v0}, Lcom/dodonew/online/ui/FunctionActivity$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/FunctionActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 94
    iget-object v0, p0, Lcom/dodonew/online/ui/FunctionActivity;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 95
    iget-object v0, p0, Lcom/dodonew/online/ui/FunctionActivity;->para:Ljava/util/Map;

    const-string v1, "domainId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lcom/dodonew/online/ui/FunctionActivity;->para:Ljava/util/Map;

    const-string v1, "netBarId"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lcom/dodonew/online/ui/FunctionActivity;->para:Ljava/util/Map;

    const-string v1, "memberId"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v0, "oth/online/state"

    iget-object v1, p0, Lcom/dodonew/online/ui/FunctionActivity;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/ui/FunctionActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/ui/FunctionActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 99
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
    .line 125
    .local p2, "para":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/dodonew/online/ui/FunctionActivity;->showProgress()V

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://api.dodovip.com/api/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/dodonew/online/http/JsonRequest;

    const-string v3, ""

    new-instance v4, Lcom/dodonew/online/ui/FunctionActivity$3;

    invoke-direct {v4, p0, p1}, Lcom/dodonew/online/ui/FunctionActivity$3;-><init>(Lcom/dodonew/online/ui/FunctionActivity;Ljava/lang/String;)V

    new-instance v5, Lcom/dodonew/online/ui/FunctionActivity$4;

    invoke-direct {v5, p0}, Lcom/dodonew/online/ui/FunctionActivity$4;-><init>(Lcom/dodonew/online/ui/FunctionActivity;)V

    move-object v1, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/dodonew/online/http/JsonRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/FunctionActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    .line 149
    iget-object v0, p0, Lcom/dodonew/online/ui/FunctionActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-virtual {v0, p2}, Lcom/dodonew/online/http/JsonRequest;->addRequestMap(Ljava/util/Map;)V

    .line 150
    iget-object v0, p0, Lcom/dodonew/online/ui/FunctionActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-static {v0, p0}, Lcom/dodonew/online/DodonewOnlineApplication;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    .line 151
    return-void
.end method

.method private setOffline(Lcom/dodonew/online/bean/Offline;)V
    .locals 3
    .param p1, "offline"    # Lcom/dodonew/online/bean/Offline;

    .prologue
    .line 170
    if-nez p1, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget-object v0, p1, Lcom/dodonew/online/bean/Offline;->info:Ljava/lang/String;

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-static {}, Lcom/dodonew/online/bean/EventBusManager;->getInstace()Lcom/dodonew/online/bean/EventBusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dodonew/online/bean/EventBusManager;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/dodonew/online/bean/OfflineEvent;

    iget-object v2, p1, Lcom/dodonew/online/bean/Offline;->info:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/dodonew/online/bean/OfflineEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    .line 175
    invoke-virtual {p0}, Lcom/dodonew/online/ui/FunctionActivity;->finish()V

    goto :goto_0
.end method

.method private setOnlineState(Lcom/dodonew/online/bean/OnlineState;)V
    .locals 3
    .param p1, "onlineState"    # Lcom/dodonew/online/bean/OnlineState;

    .prologue
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dodonew/online/ui/FunctionActivity;->netBar:Lcom/dodonew/online/bean/NetBar;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/NetBar;->getNetBarCaption()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/FunctionActivity;->sb:Ljava/lang/StringBuilder;

    .line 155
    if-nez p1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/dodonew/online/ui/FunctionActivity;->sb:Ljava/lang/StringBuilder;

    const-string v1, "   \u672a\u4e0a\u673a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p1, Lcom/dodonew/online/bean/OnlineState;->termId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/dodonew/online/ui/FunctionActivity;->sb:Ljava/lang/StringBuilder;

    const-string v1, "   \u672a\u4e0a\u673a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    :goto_1
    iget-object v0, p0, Lcom/dodonew/online/ui/FunctionActivity;->tvTip:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/dodonew/online/ui/FunctionActivity;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/ui/FunctionActivity;->sb:Ljava/lang/StringBuilder;

    const-string v1, "   \u6b63\u5728\u4e0a\u7f51"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/ui/FunctionActivity;->isClick:Z

    .line 164
    iget-object v0, p0, Lcom/dodonew/online/ui/FunctionActivity;->btnOff:Landroid/widget/Button;

    const v1, 0x7f020062

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 204
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 185
    :pswitch_1
    iget-boolean v1, p0, Lcom/dodonew/online/ui/FunctionActivity;->isClick:Z

    if-eqz v1, :cond_0

    .line 186
    const-string v1, "\u7ed3\u8d26\u4e0b\u673a?"

    invoke-static {v1}, Lcom/dodonew/online/widget/dialog/InformationDialog;->newInstance(Ljava/lang/String;)Lcom/dodonew/online/widget/dialog/InformationDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/dodonew/online/ui/FunctionActivity;->informationDialog:Lcom/dodonew/online/widget/dialog/InformationDialog;

    .line 187
    iget-object v1, p0, Lcom/dodonew/online/ui/FunctionActivity;->informationDialog:Lcom/dodonew/online/widget/dialog/InformationDialog;

    invoke-virtual {p0}, Lcom/dodonew/online/ui/FunctionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "informationDialog"

    invoke-virtual {v1, v2, v3}, Lcom/dodonew/online/widget/dialog/InformationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Lcom/dodonew/online/ui/FunctionActivity;->informationDialog:Lcom/dodonew/online/widget/dialog/InformationDialog;

    new-instance v2, Lcom/dodonew/online/ui/FunctionActivity$5;

    invoke-direct {v2, p0}, Lcom/dodonew/online/ui/FunctionActivity$5;-><init>(Lcom/dodonew/online/ui/FunctionActivity;)V

    invoke-virtual {v1, v2}, Lcom/dodonew/online/widget/dialog/InformationDialog;->setOnOkClickListener(Lcom/dodonew/online/widget/dialog/InformationDialog$OnOkClickListener;)V

    goto :goto_0

    .line 199
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dodonew/online/ui/ShopActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/FunctionActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d00b6
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/dodonew/online/base/TitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v0, 0x7f03002a

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/FunctionActivity;->setContentView(I)V

    .line 56
    invoke-direct {p0}, Lcom/dodonew/online/ui/FunctionActivity;->initView()V

    .line 57
    invoke-direct {p0}, Lcom/dodonew/online/ui/FunctionActivity;->initEvent()V

    .line 58
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 217
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onPause()V

    .line 218
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 220
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 211
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onResume()V

    .line 212
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 214
    return-void
.end method
