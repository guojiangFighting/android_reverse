.class public Lcom/dodonew/online/payzfb/ZFBPayUtils;
.super Ljava/lang/Object;
.source "ZFBPayUtils.java"


# instance fields
.field private context:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private onZFBPayListener:Lcom/dodonew/online/interfaces/OnZFBPayListener;

.field private payTask:Lcom/alipay/sdk/app/PayTask;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/dodonew/online/payzfb/ZFBPayUtils$2;

    invoke-direct {v0, p0}, Lcom/dodonew/online/payzfb/ZFBPayUtils$2;-><init>(Lcom/dodonew/online/payzfb/ZFBPayUtils;)V

    iput-object v0, p0, Lcom/dodonew/online/payzfb/ZFBPayUtils;->mHandler:Landroid/os/Handler;

    .line 22
    iput-object p1, p0, Lcom/dodonew/online/payzfb/ZFBPayUtils;->context:Landroid/content/Context;

    .line 23
    new-instance v0, Lcom/alipay/sdk/app/PayTask;

    invoke-direct {v0, p1}, Lcom/alipay/sdk/app/PayTask;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/dodonew/online/payzfb/ZFBPayUtils;->payTask:Lcom/alipay/sdk/app/PayTask;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/payzfb/ZFBPayUtils;)Lcom/alipay/sdk/app/PayTask;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/payzfb/ZFBPayUtils;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/dodonew/online/payzfb/ZFBPayUtils;->payTask:Lcom/alipay/sdk/app/PayTask;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dodonew/online/payzfb/ZFBPayUtils;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/payzfb/ZFBPayUtils;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/dodonew/online/payzfb/ZFBPayUtils;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dodonew/online/payzfb/ZFBPayUtils;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/payzfb/ZFBPayUtils;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/dodonew/online/payzfb/ZFBPayUtils;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dodonew/online/payzfb/ZFBPayUtils;)Lcom/dodonew/online/interfaces/OnZFBPayListener;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/payzfb/ZFBPayUtils;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/dodonew/online/payzfb/ZFBPayUtils;->onZFBPayListener:Lcom/dodonew/online/interfaces/OnZFBPayListener;

    return-object v0
.end method


# virtual methods
.method public setOnZFBPayListener(Lcom/dodonew/online/interfaces/OnZFBPayListener;)V
    .locals 0
    .param p1, "onZFBPayListener"    # Lcom/dodonew/online/interfaces/OnZFBPayListener;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/dodonew/online/payzfb/ZFBPayUtils;->onZFBPayListener:Lcom/dodonew/online/interfaces/OnZFBPayListener;

    .line 79
    return-void
.end method

.method public setOrderInfo(Ljava/lang/String;)V
    .locals 2
    .param p1, "zfbparam"    # Ljava/lang/String;

    .prologue
    .line 31
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/dodonew/online/payzfb/ZFBPayUtils$1;

    invoke-direct {v1, p0, p1}, Lcom/dodonew/online/payzfb/ZFBPayUtils$1;-><init>(Lcom/dodonew/online/payzfb/ZFBPayUtils;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 40
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 41
    return-void
.end method
