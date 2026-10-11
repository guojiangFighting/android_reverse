.class Lcom/dodonew/online/payzfb/ZFBPayUtils$1;
.super Ljava/lang/Object;
.source "ZFBPayUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/payzfb/ZFBPayUtils;->setOrderInfo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/payzfb/ZFBPayUtils;

.field final synthetic val$zfbparam:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dodonew/online/payzfb/ZFBPayUtils;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/payzfb/ZFBPayUtils;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/dodonew/online/payzfb/ZFBPayUtils$1;->this$0:Lcom/dodonew/online/payzfb/ZFBPayUtils;

    iput-object p2, p0, Lcom/dodonew/online/payzfb/ZFBPayUtils$1;->val$zfbparam:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 34
    iget-object v2, p0, Lcom/dodonew/online/payzfb/ZFBPayUtils$1;->this$0:Lcom/dodonew/online/payzfb/ZFBPayUtils;

    invoke-static {v2}, Lcom/dodonew/online/payzfb/ZFBPayUtils;->access$000(Lcom/dodonew/online/payzfb/ZFBPayUtils;)Lcom/alipay/sdk/app/PayTask;

    move-result-object v2

    iget-object v3, p0, Lcom/dodonew/online/payzfb/ZFBPayUtils$1;->val$zfbparam:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alipay/sdk/app/PayTask;->pay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "isSuccess":Ljava/lang/String;
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 36
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 37
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 38
    iget-object v2, p0, Lcom/dodonew/online/payzfb/ZFBPayUtils$1;->this$0:Lcom/dodonew/online/payzfb/ZFBPayUtils;

    invoke-static {v2}, Lcom/dodonew/online/payzfb/ZFBPayUtils;->access$100(Lcom/dodonew/online/payzfb/ZFBPayUtils;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 39
    return-void
.end method
