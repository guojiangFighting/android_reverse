.class public Lcom/dodonew/online/receiver/XiaoMiPushReceiver$XiaoMiHandler;
.super Landroid/os/Handler;
.source "XiaoMiPushReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/receiver/XiaoMiPushReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XiaoMiHandler"
.end annotation


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 204
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 205
    iput-object p1, p0, Lcom/dodonew/online/receiver/XiaoMiPushReceiver$XiaoMiHandler;->context:Landroid/content/Context;

    .line 206
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 211
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 212
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 213
    .local v0, "s":Ljava/lang/String;
    const-string v2, "XiaoMiHandler"

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .end local v0    # "s":Ljava/lang/String;
    :goto_0
    return-void

    .line 215
    :cond_0
    const-string v2, "XiaoMiHandler"

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
