.class Lcom/dodonew/online/ui/ShopActivity$7;
.super Ljava/lang/Object;
.source "ShopActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/ShopActivity;->queryMenu()V
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
        "Lcom/dodonew/online/bean/RequestResult",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/dodonew/online/bean/Menu;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/ShopActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/ShopActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/ShopActivity;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/dodonew/online/ui/ShopActivity$7;->this$0:Lcom/dodonew/online/ui/ShopActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/dodonew/online/bean/RequestResult;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dodonew/online/bean/RequestResult",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Menu;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, "requestResult":Lcom/dodonew/online/bean/RequestResult;, "Lcom/dodonew/online/bean/RequestResult<Ljava/util/List<Lcom/dodonew/online/bean/Menu;>;>;"
    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->code:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v1, p0, Lcom/dodonew/online/ui/ShopActivity$7;->this$0:Lcom/dodonew/online/ui/ShopActivity;

    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->data:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/dodonew/online/ui/ShopActivity;->access$900(Lcom/dodonew/online/ui/ShopActivity;Ljava/util/List;)V

    .line 206
    iget-object v0, p0, Lcom/dodonew/online/ui/ShopActivity$7;->this$0:Lcom/dodonew/online/ui/ShopActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/ShopActivity;->access$1000(Lcom/dodonew/online/ui/ShopActivity;)V

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/ShopActivity$7;->this$0:Lcom/dodonew/online/ui/ShopActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/ShopActivity;->access$1100(Lcom/dodonew/online/ui/ShopActivity;)Lcom/dodonew/online/widget/MultiStateView;

    move-result-object v0

    iget-object v1, p1, Lcom/dodonew/online/bean/RequestResult;->message:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 201
    check-cast p1, Lcom/dodonew/online/bean/RequestResult;

    invoke-virtual {p0, p1}, Lcom/dodonew/online/ui/ShopActivity$7;->onResponse(Lcom/dodonew/online/bean/RequestResult;)V

    return-void
.end method
