.class public Lcom/dodonew/online/util/AppInitUtils;
.super Ljava/lang/Object;
.source "AppInitUtils.java"


# static fields
.field private static initUitls:Lcom/dodonew/online/util/AppInitUtils; = null

.field public static final result_OK:Ljava/lang/String; = "OK"

.field public static final result_error:Ljava/lang/String; = "ERROR"


# instance fields
.field private appInitInterface:Lcom/dodonew/online/interfaces/AppInitInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/dodonew/online/util/AppInitUtils;->initUitls:Lcom/dodonew/online/util/AppInitUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dodonew/online/util/AppInitUtils;->appInitInterface:Lcom/dodonew/online/interfaces/AppInitInterface;

    .line 20
    return-void
.end method

.method public static getInstance()Lcom/dodonew/online/util/AppInitUtils;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/dodonew/online/util/AppInitUtils;->initUitls:Lcom/dodonew/online/util/AppInitUtils;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/dodonew/online/util/AppInitUtils;

    invoke-direct {v0}, Lcom/dodonew/online/util/AppInitUtils;-><init>()V

    sput-object v0, Lcom/dodonew/online/util/AppInitUtils;->initUitls:Lcom/dodonew/online/util/AppInitUtils;

    .line 26
    :cond_0
    sget-object v0, Lcom/dodonew/online/util/AppInitUtils;->initUitls:Lcom/dodonew/online/util/AppInitUtils;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/dodonew/online/util/AppInitUtils;->appInitInterface:Lcom/dodonew/online/interfaces/AppInitInterface;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/dodonew/online/util/AppInitUtils;->appInitInterface:Lcom/dodonew/online/interfaces/AppInitInterface;

    const-string v1, "OK"

    invoke-interface {v0, v1}, Lcom/dodonew/online/interfaces/AppInitInterface;->onResult(Ljava/lang/String;)V

    .line 36
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/dodonew/online/interfaces/AppInitInterface;)V
    .locals 0
    .param p1, "appInitInterface"    # Lcom/dodonew/online/interfaces/AppInitInterface;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/dodonew/online/util/AppInitUtils;->appInitInterface:Lcom/dodonew/online/interfaces/AppInitInterface;

    .line 31
    return-void
.end method
