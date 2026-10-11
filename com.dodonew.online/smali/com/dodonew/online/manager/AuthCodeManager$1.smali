.class Lcom/dodonew/online/manager/AuthCodeManager$1;
.super Landroid/os/Handler;
.source "AuthCodeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/manager/AuthCodeManager;->createHandler()Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/manager/AuthCodeManager;


# direct methods
.method constructor <init>(Lcom/dodonew/online/manager/AuthCodeManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/manager/AuthCodeManager;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/dodonew/online/manager/AuthCodeManager$1;->this$0:Lcom/dodonew/online/manager/AuthCodeManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 89
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 90
    .local v1, "type":Ljava/lang/String;
    iget-object v2, p0, Lcom/dodonew/online/manager/AuthCodeManager$1;->this$0:Lcom/dodonew/online/manager/AuthCodeManager;

    invoke-static {v2, v1, v5}, Lcom/dodonew/online/manager/AuthCodeManager;->access$000(Lcom/dodonew/online/manager/AuthCodeManager;Ljava/lang/String;I)I

    move-result v0

    .line 91
    .local v0, "count":I
    invoke-static {}, Lcom/dodonew/online/manager/EGLogger;->getLogger()Lcom/dodonew/online/manager/EGLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/dodonew/online/manager/EGLogger;->e(Ljava/lang/String;)V

    .line 92
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    .line 93
    iget-object v2, p0, Lcom/dodonew/online/manager/AuthCodeManager$1;->this$0:Lcom/dodonew/online/manager/AuthCodeManager;

    invoke-static {v2}, Lcom/dodonew/online/manager/AuthCodeManager;->access$100(Lcom/dodonew/online/manager/AuthCodeManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 94
    iget-object v2, p0, Lcom/dodonew/online/manager/AuthCodeManager$1;->this$0:Lcom/dodonew/online/manager/AuthCodeManager;

    invoke-static {v2}, Lcom/dodonew/online/manager/AuthCodeManager;->access$100(Lcom/dodonew/online/manager/AuthCodeManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dodonew/online/manager/AuthCodeManager$OnCountdownListener;

    invoke-interface {v2, v5}, Lcom/dodonew/online/manager/AuthCodeManager$OnCountdownListener;->onCountDown(I)V

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-object v2, p0, Lcom/dodonew/online/manager/AuthCodeManager$1;->this$0:Lcom/dodonew/online/manager/AuthCodeManager;

    invoke-static {v2}, Lcom/dodonew/online/manager/AuthCodeManager;->access$200(Lcom/dodonew/online/manager/AuthCodeManager;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v2, p0, Lcom/dodonew/online/manager/AuthCodeManager$1;->this$0:Lcom/dodonew/online/manager/AuthCodeManager;

    invoke-static {v2}, Lcom/dodonew/online/manager/AuthCodeManager;->access$100(Lcom/dodonew/online/manager/AuthCodeManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 101
    iget-object v2, p0, Lcom/dodonew/online/manager/AuthCodeManager$1;->this$0:Lcom/dodonew/online/manager/AuthCodeManager;

    invoke-static {v2}, Lcom/dodonew/online/manager/AuthCodeManager;->access$100(Lcom/dodonew/online/manager/AuthCodeManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dodonew/online/manager/AuthCodeManager$OnCountdownListener;

    invoke-interface {v2, v0}, Lcom/dodonew/online/manager/AuthCodeManager$OnCountdownListener;->onCountDown(I)V

    .line 103
    :cond_2
    iget-object v2, p0, Lcom/dodonew/online/manager/AuthCodeManager$1;->this$0:Lcom/dodonew/online/manager/AuthCodeManager;

    invoke-static {v2, v1}, Lcom/dodonew/online/manager/AuthCodeManager;->access$300(Lcom/dodonew/online/manager/AuthCodeManager;Ljava/lang/String;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    invoke-virtual {p0, v2, v4, v5}, Lcom/dodonew/online/manager/AuthCodeManager$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
