.class public Lcom/dodonew/online/manager/AuthCodeManager;
.super Ljava/lang/Object;
.source "AuthCodeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/manager/AuthCodeManager$OnCountdownListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_COUNT:I = 0x3c

.field private static mInstance:Lcom/dodonew/online/manager/AuthCodeManager;


# instance fields
.field private mCountArray:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mListenerArray:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/dodonew/online/manager/AuthCodeManager$OnCountdownListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/manager/AuthCodeManager;->mCountArray:Ljava/util/Map;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/manager/AuthCodeManager;->mListenerArray:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/manager/AuthCodeManager;->mHandlerMap:Ljava/util/Map;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/manager/AuthCodeManager;Ljava/lang/String;I)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/manager/AuthCodeManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/dodonew/online/manager/AuthCodeManager;->countGet(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/dodonew/online/manager/AuthCodeManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/manager/AuthCodeManager;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/dodonew/online/manager/AuthCodeManager;->mListenerArray:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dodonew/online/manager/AuthCodeManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/manager/AuthCodeManager;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/dodonew/online/manager/AuthCodeManager;->mCountArray:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dodonew/online/manager/AuthCodeManager;Ljava/lang/String;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/manager/AuthCodeManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/dodonew/online/manager/AuthCodeManager;->buildMsg(Ljava/lang/String;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method private buildMsg(Ljava/lang/String;)Landroid/os/Message;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 66
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 67
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 68
    return-object v0
.end method

.method private countGet(Ljava/lang/String;I)I
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/dodonew/online/manager/AuthCodeManager;->mCountArray:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .end local p2    # "defaultValue":I
    :goto_0
    return p2

    .restart local p2    # "defaultValue":I
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/manager/AuthCodeManager;->mCountArray:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0
.end method

.method private createHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/dodonew/online/manager/AuthCodeManager$1;

    invoke-direct {v0, p0}, Lcom/dodonew/online/manager/AuthCodeManager$1;-><init>(Lcom/dodonew/online/manager/AuthCodeManager;)V

    .line 107
    .local v0, "mHandler":Landroid/os/Handler;
    return-object v0
.end method

.method public static getInstance()Lcom/dodonew/online/manager/AuthCodeManager;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/dodonew/online/manager/AuthCodeManager;->mInstance:Lcom/dodonew/online/manager/AuthCodeManager;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/dodonew/online/manager/AuthCodeManager;

    invoke-direct {v0}, Lcom/dodonew/online/manager/AuthCodeManager;-><init>()V

    sput-object v0, Lcom/dodonew/online/manager/AuthCodeManager;->mInstance:Lcom/dodonew/online/manager/AuthCodeManager;

    .line 33
    :cond_0
    sget-object v0, Lcom/dodonew/online/manager/AuthCodeManager;->mInstance:Lcom/dodonew/online/manager/AuthCodeManager;

    return-object v0
.end method


# virtual methods
.method public canCountDown(Ljava/lang/String;)Z
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/dodonew/online/manager/AuthCodeManager;->countGet(Ljava/lang/String;I)I

    move-result v1

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getCountDown(Ljava/lang/String;)I
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 46
    const/16 v0, 0x3c

    invoke-direct {p0, p1, v0}, Lcom/dodonew/online/manager/AuthCodeManager;->countGet(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public resetData(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/dodonew/online/manager/AuthCodeManager;->mCountArray:Ljava/util/Map;

    const/16 v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method

.method public setOnCountdownListener(Ljava/lang/String;Lcom/dodonew/online/manager/AuthCodeManager$OnCountdownListener;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/dodonew/online/manager/AuthCodeManager$OnCountdownListener;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dodonew/online/manager/AuthCodeManager;->mListenerArray:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-void
.end method

.method public startCountDown(Ljava/lang/String;Lcom/dodonew/online/manager/AuthCodeManager$OnCountdownListener;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/dodonew/online/manager/AuthCodeManager$OnCountdownListener;

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/manager/AuthCodeManager;->setOnCountdownListener(Ljava/lang/String;Lcom/dodonew/online/manager/AuthCodeManager$OnCountdownListener;)V

    .line 55
    iget-object v1, p0, Lcom/dodonew/online/manager/AuthCodeManager;->mCountArray:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/dodonew/online/manager/AuthCodeManager;->getCountDown(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v1, p0, Lcom/dodonew/online/manager/AuthCodeManager;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/dodonew/online/manager/AuthCodeManager;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 58
    iget-object v1, p0, Lcom/dodonew/online/manager/AuthCodeManager;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_0
    invoke-direct {p0}, Lcom/dodonew/online/manager/AuthCodeManager;->createHandler()Landroid/os/Handler;

    move-result-object v0

    .line 61
    .local v0, "handler":Landroid/os/Handler;
    iget-object v1, p0, Lcom/dodonew/online/manager/AuthCodeManager;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-direct {p0, p1}, Lcom/dodonew/online/manager/AuthCodeManager;->buildMsg(Ljava/lang/String;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 63
    return-void
.end method

.method public stopCountDown(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/dodonew/online/manager/AuthCodeManager;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/dodonew/online/manager/AuthCodeManager;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/dodonew/online/manager/AuthCodeManager;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_0
    return-void
.end method
