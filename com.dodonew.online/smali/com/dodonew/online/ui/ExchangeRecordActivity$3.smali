.class Lcom/dodonew/online/ui/ExchangeRecordActivity$3;
.super Ljava/lang/Object;
.source "ExchangeRecordActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/ExchangeRecordActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/dodonew/online/bean/RequestResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/ExchangeRecordActivity;

.field final synthetic val$cmd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/ExchangeRecordActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/ExchangeRecordActivity;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity$3;->this$0:Lcom/dodonew/online/ui/ExchangeRecordActivity;

    iput-object p2, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity$3;->val$cmd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/dodonew/online/bean/RequestResult;)V
    .locals 2
    .param p1, "requestResult"    # Lcom/dodonew/online/bean/RequestResult;

    .prologue
    .line 130
    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->code:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity$3;->val$cmd:Ljava/lang/String;

    const-string v1, "gift/exchangeInfo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v1, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity$3;->this$0:Lcom/dodonew/online/ui/ExchangeRecordActivity;

    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->data:Ljava/lang/Object;

    check-cast v0, Lcom/dodonew/online/bean/ExchangeRecordResult;

    iget-object v0, v0, Lcom/dodonew/online/bean/ExchangeRecordResult;->convrecords:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/dodonew/online/ui/ExchangeRecordActivity;->access$400(Lcom/dodonew/online/ui/ExchangeRecordActivity;Ljava/util/List;)V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity$3;->this$0:Lcom/dodonew/online/ui/ExchangeRecordActivity;

    iget-object v1, p1, Lcom/dodonew/online/bean/RequestResult;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/ui/ExchangeRecordActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 127
    check-cast p1, Lcom/dodonew/online/bean/RequestResult;

    invoke-virtual {p0, p1}, Lcom/dodonew/online/ui/ExchangeRecordActivity$3;->onResponse(Lcom/dodonew/online/bean/RequestResult;)V

    return-void
.end method
