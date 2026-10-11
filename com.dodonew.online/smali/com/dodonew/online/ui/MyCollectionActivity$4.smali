.class Lcom/dodonew/online/ui/MyCollectionActivity$4;
.super Ljava/lang/Object;
.source "MyCollectionActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/MyCollectionActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V
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
.field final synthetic this$0:Lcom/dodonew/online/ui/MyCollectionActivity;

.field final synthetic val$cmd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/MyCollectionActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/MyCollectionActivity;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/dodonew/online/ui/MyCollectionActivity$4;->this$0:Lcom/dodonew/online/ui/MyCollectionActivity;

    iput-object p2, p0, Lcom/dodonew/online/ui/MyCollectionActivity$4;->val$cmd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/dodonew/online/bean/RequestResult;)V
    .locals 2
    .param p1, "requestResult"    # Lcom/dodonew/online/bean/RequestResult;

    .prologue
    .line 155
    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->code:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity$4;->val$cmd:Ljava/lang/String;

    const-string v1, "collect/list"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    iget-object v1, p0, Lcom/dodonew/online/ui/MyCollectionActivity$4;->this$0:Lcom/dodonew/online/ui/MyCollectionActivity;

    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->data:Ljava/lang/Object;

    check-cast v0, Lcom/dodonew/online/bean/CollectionResult;

    iget-object v0, v0, Lcom/dodonew/online/bean/CollectionResult;->result:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/dodonew/online/ui/MyCollectionActivity;->access$400(Lcom/dodonew/online/ui/MyCollectionActivity;Ljava/util/List;)V

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity$4;->val$cmd:Ljava/lang/String;

    const-string v1, "collect/delete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity$4;->this$0:Lcom/dodonew/online/ui/MyCollectionActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/MyCollectionActivity;->access$600(Lcom/dodonew/online/ui/MyCollectionActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/dodonew/online/ui/MyCollectionActivity$4;->this$0:Lcom/dodonew/online/ui/MyCollectionActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/MyCollectionActivity;->access$500(Lcom/dodonew/online/ui/MyCollectionActivity;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity$4;->this$0:Lcom/dodonew/online/ui/MyCollectionActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/MyCollectionActivity;->access$700(Lcom/dodonew/online/ui/MyCollectionActivity;)V

    .line 161
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity$4;->this$0:Lcom/dodonew/online/ui/MyCollectionActivity;

    iget-object v1, p1, Lcom/dodonew/online/bean/RequestResult;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/ui/MyCollectionActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity$4;->this$0:Lcom/dodonew/online/ui/MyCollectionActivity;

    iget-object v1, p1, Lcom/dodonew/online/bean/RequestResult;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/ui/MyCollectionActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 152
    check-cast p1, Lcom/dodonew/online/bean/RequestResult;

    invoke-virtual {p0, p1}, Lcom/dodonew/online/ui/MyCollectionActivity$4;->onResponse(Lcom/dodonew/online/bean/RequestResult;)V

    return-void
.end method
