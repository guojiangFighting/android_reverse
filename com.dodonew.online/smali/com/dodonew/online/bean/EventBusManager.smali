.class public Lcom/dodonew/online/bean/EventBusManager;
.super Ljava/lang/Object;
.source "EventBusManager.java"


# static fields
.field private static mInstance:Lcom/dodonew/online/bean/EventBusManager;


# instance fields
.field private mEventBus:Lde/greenrobot/event/EventBus;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lde/greenrobot/event/EventBus;

    invoke-direct {v0}, Lde/greenrobot/event/EventBus;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/bean/EventBusManager;->mEventBus:Lde/greenrobot/event/EventBus;

    .line 15
    return-void
.end method

.method public static getInstace()Lcom/dodonew/online/bean/EventBusManager;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/dodonew/online/bean/EventBusManager;->mInstance:Lcom/dodonew/online/bean/EventBusManager;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/dodonew/online/bean/EventBusManager;

    invoke-direct {v0}, Lcom/dodonew/online/bean/EventBusManager;-><init>()V

    sput-object v0, Lcom/dodonew/online/bean/EventBusManager;->mInstance:Lcom/dodonew/online/bean/EventBusManager;

    .line 21
    :cond_0
    sget-object v0, Lcom/dodonew/online/bean/EventBusManager;->mInstance:Lcom/dodonew/online/bean/EventBusManager;

    return-object v0
.end method


# virtual methods
.method public getEventBus()Lde/greenrobot/event/EventBus;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dodonew/online/bean/EventBusManager;->mEventBus:Lde/greenrobot/event/EventBus;

    return-object v0
.end method
