.class Lcom/dodonew/online/fragment/MyFragment$4;
.super Landroid/os/Handler;
.source "MyFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/fragment/MyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/fragment/MyFragment;


# direct methods
.method constructor <init>(Lcom/dodonew/online/fragment/MyFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/fragment/MyFragment;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/dodonew/online/fragment/MyFragment$4;->this$0:Lcom/dodonew/online/fragment/MyFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 268
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 269
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/dodonew/online/bean/CardEvent;

    .line 270
    .local v0, "cardEvent":Lcom/dodonew/online/bean/CardEvent;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/dodonew/online/fragment/MyFragment$4;->this$0:Lcom/dodonew/online/fragment/MyFragment;

    invoke-static {v4}, Lcom/dodonew/online/fragment/MyFragment;->access$200(Lcom/dodonew/online/fragment/MyFragment;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 271
    .local v2, "text":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 272
    const-string v2, "0"

    .line 274
    :cond_0
    invoke-virtual {v0}, Lcom/dodonew/online/bean/CardEvent;->getCard()Lcom/dodonew/online/bean/Card;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dodonew/online/bean/Card;->isDel()Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, "isDel":Ljava/lang/String;
    const-string v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 276
    sget-object v3, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/dodonew/online/bean/User;->setMemberCardCount(Ljava/lang/String;)V

    .line 280
    :goto_0
    iget-object v3, p0, Lcom/dodonew/online/fragment/MyFragment$4;->this$0:Lcom/dodonew/online/fragment/MyFragment;

    invoke-static {v3}, Lcom/dodonew/online/fragment/MyFragment;->access$200(Lcom/dodonew/online/fragment/MyFragment;)Landroid/widget/TextView;

    move-result-object v3

    sget-object v4, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v4}, Lcom/dodonew/online/bean/User;->getMemberCardCount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    return-void

    .line 278
    :cond_1
    sget-object v3, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/dodonew/online/bean/User;->setMemberCardCount(Ljava/lang/String;)V

    goto :goto_0
.end method
