.class Lcom/dodonew/online/ui/ScoreMallActivity$4;
.super Ljava/lang/Object;
.source "ScoreMallActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/ScoreMallActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V
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
.field final synthetic this$0:Lcom/dodonew/online/ui/ScoreMallActivity;

.field final synthetic val$cmd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/ScoreMallActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/ScoreMallActivity;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/dodonew/online/ui/ScoreMallActivity$4;->this$0:Lcom/dodonew/online/ui/ScoreMallActivity;

    iput-object p2, p0, Lcom/dodonew/online/ui/ScoreMallActivity$4;->val$cmd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/dodonew/online/bean/RequestResult;)V
    .locals 2
    .param p1, "requestResult"    # Lcom/dodonew/online/bean/RequestResult;

    .prologue
    .line 169
    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->code:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 170
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreMallActivity$4;->val$cmd:Ljava/lang/String;

    const-string v1, "gift/fillData"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    iget-object v1, p0, Lcom/dodonew/online/ui/ScoreMallActivity$4;->this$0:Lcom/dodonew/online/ui/ScoreMallActivity;

    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->data:Ljava/lang/Object;

    check-cast v0, Lcom/dodonew/online/bean/Gifts;

    invoke-static {v1, v0}, Lcom/dodonew/online/ui/ScoreMallActivity;->access$000(Lcom/dodonew/online/ui/ScoreMallActivity;Lcom/dodonew/online/bean/Gifts;)V

    .line 172
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreMallActivity$4;->this$0:Lcom/dodonew/online/ui/ScoreMallActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/ScoreMallActivity;->access$100(Lcom/dodonew/online/ui/ScoreMallActivity;)V

    .line 183
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreMallActivity$4;->this$0:Lcom/dodonew/online/ui/ScoreMallActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/ScoreMallActivity;->access$400(Lcom/dodonew/online/ui/ScoreMallActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreMallActivity$4;->this$0:Lcom/dodonew/online/ui/ScoreMallActivity;

    invoke-virtual {v0}, Lcom/dodonew/online/ui/ScoreMallActivity;->dissProgress()V

    .line 186
    :cond_1
    return-void

    .line 173
    :cond_2
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreMallActivity$4;->val$cmd:Ljava/lang/String;

    const-string v1, "gift/exchangeGift"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 174
    iget-object v1, p0, Lcom/dodonew/online/ui/ScoreMallActivity$4;->this$0:Lcom/dodonew/online/ui/ScoreMallActivity;

    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->data:Ljava/lang/Object;

    check-cast v0, Lcom/dodonew/online/bean/ExchangeResult;

    invoke-static {v1, v0}, Lcom/dodonew/online/ui/ScoreMallActivity;->access$200(Lcom/dodonew/online/ui/ScoreMallActivity;Lcom/dodonew/online/bean/ExchangeResult;)V

    .line 175
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreMallActivity$4;->this$0:Lcom/dodonew/online/ui/ScoreMallActivity;

    iget-object v1, p1, Lcom/dodonew/online/bean/RequestResult;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/ui/ScoreMallActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :cond_3
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreMallActivity$4;->val$cmd:Ljava/lang/String;

    const-string v1, "user/signin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->data:Ljava/lang/Object;

    check-cast v0, Lcom/dodonew/online/bean/User;

    sput-object v0, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    .line 178
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreMallActivity$4;->this$0:Lcom/dodonew/online/ui/ScoreMallActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/ScoreMallActivity;->access$300(Lcom/dodonew/online/ui/ScoreMallActivity;)V

    goto :goto_0

    .line 181
    :cond_4
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreMallActivity$4;->this$0:Lcom/dodonew/online/ui/ScoreMallActivity;

    iget-object v1, p1, Lcom/dodonew/online/bean/RequestResult;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/ui/ScoreMallActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 166
    check-cast p1, Lcom/dodonew/online/bean/RequestResult;

    invoke-virtual {p0, p1}, Lcom/dodonew/online/ui/ScoreMallActivity$4;->onResponse(Lcom/dodonew/online/bean/RequestResult;)V

    return-void
.end method
