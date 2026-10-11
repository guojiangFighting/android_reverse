.class Lcom/dodonew/online/manager/ShortMsgHelper$1;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/dodonew/online/manager/ShortMsgHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/manager/ShortMsgHelper;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/dodonew/online/manager/ShortMsgHelper$1;->this$0:Lcom/dodonew/online/manager/ShortMsgHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 50
    const-string v0, ""

    .line 51
    .local v0, "authCode":Ljava/lang/String;
    iget-object v1, p0, Lcom/dodonew/online/manager/ShortMsgHelper$1;->this$0:Lcom/dodonew/online/manager/ShortMsgHelper;

    invoke-static {v1}, Lcom/dodonew/online/manager/ShortMsgHelper;->access$000(Lcom/dodonew/online/manager/ShortMsgHelper;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dodonew/online/util/EmptyUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 52
    iget-object v1, p0, Lcom/dodonew/online/manager/ShortMsgHelper$1;->this$0:Lcom/dodonew/online/manager/ShortMsgHelper;

    iget-object v2, p0, Lcom/dodonew/online/manager/ShortMsgHelper$1;->this$0:Lcom/dodonew/online/manager/ShortMsgHelper;

    invoke-static {v2}, Lcom/dodonew/online/manager/ShortMsgHelper;->access$100(Lcom/dodonew/online/manager/ShortMsgHelper;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/dodonew/online/manager/ShortMsgHelper$1;->this$0:Lcom/dodonew/online/manager/ShortMsgHelper;

    invoke-static {v3}, Lcom/dodonew/online/manager/ShortMsgHelper;->access$000(Lcom/dodonew/online/manager/ShortMsgHelper;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/dodonew/online/manager/ShortMsgHelper;->access$200(Lcom/dodonew/online/manager/ShortMsgHelper;Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    :cond_0
    :goto_0
    invoke-static {}, Lcom/dodonew/online/manager/EGLogger;->getLogger()Lcom/dodonew/online/manager/EGLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "authCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dodonew/online/manager/EGLogger;->d(Ljava/lang/String;)V

    .line 58
    invoke-static {v0}, Lcom/dodonew/online/util/EmptyUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/dodonew/online/manager/ShortMsgHelper$1;->this$0:Lcom/dodonew/online/manager/ShortMsgHelper;

    invoke-static {v1}, Lcom/dodonew/online/manager/ShortMsgHelper;->access$500(Lcom/dodonew/online/manager/ShortMsgHelper;)Lcom/dodonew/online/manager/ShortMsgHelper$OnSmsAuthCodeListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 59
    iget-object v1, p0, Lcom/dodonew/online/manager/ShortMsgHelper$1;->this$0:Lcom/dodonew/online/manager/ShortMsgHelper;

    invoke-static {v1}, Lcom/dodonew/online/manager/ShortMsgHelper;->access$500(Lcom/dodonew/online/manager/ShortMsgHelper;)Lcom/dodonew/online/manager/ShortMsgHelper$OnSmsAuthCodeListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/dodonew/online/manager/ShortMsgHelper$OnSmsAuthCodeListener;->onSms(Ljava/lang/String;)V

    .line 61
    :cond_1
    return-void

    .line 53
    :cond_2
    iget-object v1, p0, Lcom/dodonew/online/manager/ShortMsgHelper$1;->this$0:Lcom/dodonew/online/manager/ShortMsgHelper;

    invoke-static {v1}, Lcom/dodonew/online/manager/ShortMsgHelper;->access$300(Lcom/dodonew/online/manager/ShortMsgHelper;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dodonew/online/util/EmptyUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/dodonew/online/manager/ShortMsgHelper$1;->this$0:Lcom/dodonew/online/manager/ShortMsgHelper;

    iget-object v2, p0, Lcom/dodonew/online/manager/ShortMsgHelper$1;->this$0:Lcom/dodonew/online/manager/ShortMsgHelper;

    invoke-static {v2}, Lcom/dodonew/online/manager/ShortMsgHelper;->access$300(Lcom/dodonew/online/manager/ShortMsgHelper;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dodonew/online/manager/ShortMsgHelper;->access$400(Lcom/dodonew/online/manager/ShortMsgHelper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
