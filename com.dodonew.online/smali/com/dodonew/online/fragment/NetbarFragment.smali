.class public Lcom/dodonew/online/fragment/NetbarFragment;
.super Landroid/support/v4/app/Fragment;
.source "NetbarFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static requestCode:I


# instance fields
.field private activity:Landroid/app/Activity;

.field private city:Lcom/dodonew/online/bean/City;

.field private container:Landroid/widget/FrameLayout;

.field private fileName:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private netbarView:Lcom/dodonew/online/view/NetbarView;

.field private netbarWelfareView:Lcom/dodonew/online/view/NetbarWelfareView;

.field private tvCity:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x2

    sput v0, Lcom/dodonew/online/fragment/NetbarFragment;->requestCode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 37
    const-string v0, "ddnCity.plist"

    iput-object v0, p0, Lcom/dodonew/online/fragment/NetbarFragment;->fileName:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/dodonew/online/fragment/NetbarFragment;->location:Ljava/lang/String;

    .line 112
    new-instance v0, Lcom/dodonew/online/fragment/NetbarFragment$2;

    invoke-direct {v0, p0}, Lcom/dodonew/online/fragment/NetbarFragment$2;-><init>(Lcom/dodonew/online/fragment/NetbarFragment;)V

    iput-object v0, p0, Lcom/dodonew/online/fragment/NetbarFragment;->mHandler:Landroid/os/Handler;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/fragment/NetbarFragment;)Lcom/dodonew/online/view/NetbarView;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/fragment/NetbarFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dodonew/online/fragment/NetbarFragment;->netbarView:Lcom/dodonew/online/view/NetbarView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dodonew/online/fragment/NetbarFragment;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/fragment/NetbarFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/dodonew/online/fragment/NetbarFragment;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/dodonew/online/fragment/NetbarFragment;)Lcom/dodonew/online/view/NetbarWelfareView;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/fragment/NetbarFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dodonew/online/fragment/NetbarFragment;->netbarWelfareView:Lcom/dodonew/online/view/NetbarWelfareView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dodonew/online/fragment/NetbarFragment;)Lcom/dodonew/online/bean/City;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/fragment/NetbarFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dodonew/online/fragment/NetbarFragment;->city:Lcom/dodonew/online/bean/City;

    return-object v0
.end method

.method static synthetic access$302(Lcom/dodonew/online/fragment/NetbarFragment;Lcom/dodonew/online/bean/City;)Lcom/dodonew/online/bean/City;
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/fragment/NetbarFragment;
    .param p1, "x1"    # Lcom/dodonew/online/bean/City;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/dodonew/online/fragment/NetbarFragment;->city:Lcom/dodonew/online/bean/City;

    return-object p1
.end method

.method static synthetic access$400(Lcom/dodonew/online/fragment/NetbarFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/fragment/NetbarFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dodonew/online/fragment/NetbarFragment;->location:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/dodonew/online/fragment/NetbarFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/fragment/NetbarFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/dodonew/online/fragment/NetbarFragment;->location:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/dodonew/online/fragment/NetbarFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/fragment/NetbarFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dodonew/online/fragment/NetbarFragment;->tvCity:Landroid/widget/TextView;

    return-object v0
.end method

.method private addView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/dodonew/online/fragment/NetbarFragment;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 108
    iget-object v0, p0, Lcom/dodonew/online/fragment/NetbarFragment;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 109
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 80
    const v0, 0x7f0d01ae

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/dodonew/online/fragment/NetbarFragment;->container:Landroid/widget/FrameLayout;

    .line 81
    const v0, 0x7f0d01d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/fragment/NetbarFragment;->tvCity:Landroid/widget/TextView;

    .line 82
    new-instance v0, Lcom/dodonew/online/view/NetbarView;

    iget-object v1, p0, Lcom/dodonew/online/fragment/NetbarFragment;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/dodonew/online/view/NetbarView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dodonew/online/fragment/NetbarFragment;->netbarView:Lcom/dodonew/online/view/NetbarView;

    .line 83
    new-instance v0, Lcom/dodonew/online/view/NetbarWelfareView;

    iget-object v1, p0, Lcom/dodonew/online/fragment/NetbarFragment;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/dodonew/online/view/NetbarWelfareView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dodonew/online/fragment/NetbarFragment;->netbarWelfareView:Lcom/dodonew/online/view/NetbarWelfareView;

    .line 84
    iget-object v0, p0, Lcom/dodonew/online/fragment/NetbarFragment;->tvCity:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const v0, 0x7f0d01d3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/dodonew/online/fragment/NetbarFragment;->netbarView:Lcom/dodonew/online/view/NetbarView;

    invoke-direct {p0, v0}, Lcom/dodonew/online/fragment/NetbarFragment;->addView(Landroid/view/View;)V

    .line 87
    const v0, 0x7f0d01d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    new-instance v1, Lcom/dodonew/online/fragment/NetbarFragment$1;

    invoke-direct {v1, p0}, Lcom/dodonew/online/fragment/NetbarFragment$1;-><init>(Lcom/dodonew/online/fragment/NetbarFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 104
    return-void
.end method

.method public static newInstance()Lcom/dodonew/online/fragment/NetbarFragment;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/dodonew/online/fragment/NetbarFragment;

    invoke-direct {v0}, Lcom/dodonew/online/fragment/NetbarFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 63
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 142
    :goto_0
    return-void

    .line 131
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/dodonew/online/fragment/NetbarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/dodonew/online/ui/ChooseCityActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "fileName"

    iget-object v3, p0, Lcom/dodonew/online/fragment/NetbarFragment;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    sget v2, Lcom/dodonew/online/fragment/NetbarFragment;->requestCode:I

    invoke-virtual {p0, v0, v2}, Lcom/dodonew/online/fragment/NetbarFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 136
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/dodonew/online/fragment/NetbarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/dodonew/online/ui/SearchNetBarActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    .local v1, "it":Landroid/content/Intent;
    const-string v2, "location"

    iget-object v3, p0, Lcom/dodonew/online/fragment/NetbarFragment;->location:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    invoke-virtual {p0, v1}, Lcom/dodonew/online/fragment/NetbarFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x7f0d01d2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/dodonew/online/fragment/NetbarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/fragment/NetbarFragment;->activity:Landroid/app/Activity;

    .line 57
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 68
    const v1, 0x7f03008a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 69
    .local v0, "view":Landroid/view/View;
    invoke-static {}, Lcom/dodonew/online/bean/EventBusManager;->getInstace()Lcom/dodonew/online/bean/EventBusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dodonew/online/bean/EventBusManager;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lde/greenrobot/event/EventBus;->registerSticky(Ljava/lang/Object;)V

    .line 70
    invoke-direct {p0, v0}, Lcom/dodonew/online/fragment/NetbarFragment;->initView(Landroid/view/View;)V

    .line 71
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 151
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 152
    invoke-static {}, Lcom/dodonew/online/bean/EventBusManager;->getInstace()Lcom/dodonew/online/bean/EventBusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dodonew/online/bean/EventBusManager;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 153
    return-void
.end method

.method public onEventMainThread(Lcom/dodonew/online/bean/LocationEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/dodonew/online/bean/LocationEvent;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/dodonew/online/fragment/NetbarFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 147
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 175
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 176
    invoke-virtual {p0}, Lcom/dodonew/online/fragment/NetbarFragment;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 169
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 170
    invoke-virtual {p0}, Lcom/dodonew/online/fragment/NetbarFragment;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public setCity(Lcom/dodonew/online/bean/City;)V
    .locals 2
    .param p1, "city"    # Lcom/dodonew/online/bean/City;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/dodonew/online/fragment/NetbarFragment;->city:Lcom/dodonew/online/bean/City;

    .line 163
    iget-object v0, p0, Lcom/dodonew/online/fragment/NetbarFragment;->tvCity:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dodonew/online/fragment/NetbarFragment;->city:Lcom/dodonew/online/bean/City;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/City;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, p0, Lcom/dodonew/online/fragment/NetbarFragment;->netbarView:Lcom/dodonew/online/view/NetbarView;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/view/NetbarView;->setCity(Lcom/dodonew/online/bean/City;)V

    .line 165
    return-void
.end method
