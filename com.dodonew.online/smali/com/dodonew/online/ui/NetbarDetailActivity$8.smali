.class Lcom/dodonew/online/ui/NetbarDetailActivity$8;
.super Landroid/os/Handler;
.source "NetbarDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/ui/NetbarDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/NetbarDetailActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/NetbarDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/NetbarDetailActivity;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/dodonew/online/ui/NetbarDetailActivity$8;->this$0:Lcom/dodonew/online/ui/NetbarDetailActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 289
    iget v2, p1, Landroid/os/Message;->what:I

    if-nez v2, :cond_1

    .line 290
    iget-object v2, p0, Lcom/dodonew/online/ui/NetbarDetailActivity$8;->this$0:Lcom/dodonew/online/ui/NetbarDetailActivity;

    invoke-static {v2}, Lcom/dodonew/online/ui/NetbarDetailActivity;->access$1100(Lcom/dodonew/online/ui/NetbarDetailActivity;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    .line 291
    iget-object v2, p0, Lcom/dodonew/online/ui/NetbarDetailActivity$8;->this$0:Lcom/dodonew/online/ui/NetbarDetailActivity;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v3}, Lcom/dodonew/online/ui/NetbarDetailActivity;->access$1102(Lcom/dodonew/online/ui/NetbarDetailActivity;Ljava/util/List;)Ljava/util/List;

    .line 293
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/dodonew/online/bean/Card;

    .line 294
    .local v0, "card":Lcom/dodonew/online/bean/Card;
    invoke-virtual {v0}, Lcom/dodonew/online/bean/Card;->isDel()Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 295
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/dodonew/online/ui/NetbarDetailActivity$8;->this$0:Lcom/dodonew/online/ui/NetbarDetailActivity;

    invoke-static {v2}, Lcom/dodonew/online/ui/NetbarDetailActivity;->access$1100(Lcom/dodonew/online/ui/NetbarDetailActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 296
    invoke-virtual {v0}, Lcom/dodonew/online/bean/Card;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/dodonew/online/ui/NetbarDetailActivity$8;->this$0:Lcom/dodonew/online/ui/NetbarDetailActivity;

    invoke-static {v2}, Lcom/dodonew/online/ui/NetbarDetailActivity;->access$1100(Lcom/dodonew/online/ui/NetbarDetailActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dodonew/online/bean/Card;

    invoke-virtual {v2}, Lcom/dodonew/online/bean/Card;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 297
    iget-object v2, p0, Lcom/dodonew/online/ui/NetbarDetailActivity$8;->this$0:Lcom/dodonew/online/ui/NetbarDetailActivity;

    invoke-static {v2}, Lcom/dodonew/online/ui/NetbarDetailActivity;->access$1100(Lcom/dodonew/online/ui/NetbarDetailActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 308
    .end local v0    # "card":Lcom/dodonew/online/bean/Card;
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-void

    .line 295
    .restart local v0    # "card":Lcom/dodonew/online/bean/Card;
    .restart local v1    # "i":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 302
    .end local v1    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/dodonew/online/ui/NetbarDetailActivity$8;->this$0:Lcom/dodonew/online/ui/NetbarDetailActivity;

    invoke-static {v2}, Lcom/dodonew/online/ui/NetbarDetailActivity;->access$1100(Lcom/dodonew/online/ui/NetbarDetailActivity;)Ljava/util/List;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/dodonew/online/bean/Card;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    :cond_4
    iget-object v2, p0, Lcom/dodonew/online/ui/NetbarDetailActivity$8;->this$0:Lcom/dodonew/online/ui/NetbarDetailActivity;

    invoke-static {v2}, Lcom/dodonew/online/ui/NetbarDetailActivity;->access$800(Lcom/dodonew/online/ui/NetbarDetailActivity;)Lcom/dodonew/online/view/NetbarDetailTopView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 305
    iget-object v2, p0, Lcom/dodonew/online/ui/NetbarDetailActivity$8;->this$0:Lcom/dodonew/online/ui/NetbarDetailActivity;

    invoke-static {v2}, Lcom/dodonew/online/ui/NetbarDetailActivity;->access$800(Lcom/dodonew/online/ui/NetbarDetailActivity;)Lcom/dodonew/online/view/NetbarDetailTopView;

    move-result-object v2

    iget-object v3, p0, Lcom/dodonew/online/ui/NetbarDetailActivity$8;->this$0:Lcom/dodonew/online/ui/NetbarDetailActivity;

    invoke-static {v3}, Lcom/dodonew/online/ui/NetbarDetailActivity;->access$1100(Lcom/dodonew/online/ui/NetbarDetailActivity;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/dodonew/online/view/NetbarDetailTopView;->setCards(Ljava/util/List;)V

    goto :goto_1
.end method
