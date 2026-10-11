.class Lcom/dodonew/online/manager/ShortMsgHelper$2;
.super Landroid/database/ContentObserver;
.source "ShortMsgHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/manager/ShortMsgHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/manager/ShortMsgHelper;


# direct methods
.method constructor <init>(Lcom/dodonew/online/manager/ShortMsgHelper;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/manager/ShortMsgHelper;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/dodonew/online/manager/ShortMsgHelper$2;->this$0:Lcom/dodonew/online/manager/ShortMsgHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 67
    iget-object v0, p0, Lcom/dodonew/online/manager/ShortMsgHelper$2;->this$0:Lcom/dodonew/online/manager/ShortMsgHelper;

    invoke-static {v0}, Lcom/dodonew/online/manager/ShortMsgHelper;->access$600(Lcom/dodonew/online/manager/ShortMsgHelper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 68
    return-void
.end method
