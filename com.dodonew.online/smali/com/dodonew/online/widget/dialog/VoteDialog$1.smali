.class Lcom/dodonew/online/widget/dialog/VoteDialog$1;
.super Ljava/lang/Object;
.source "VoteDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/widget/dialog/VoteDialog;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/dialog/VoteDialog;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/dialog/VoteDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/dialog/VoteDialog;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/dodonew/online/widget/dialog/VoteDialog$1;->this$0:Lcom/dodonew/online/widget/dialog/VoteDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 129
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 107
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 111
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 112
    const-string p1, "0"

    .line 113
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/VoteDialog$1;->this$0:Lcom/dodonew/online/widget/dialog/VoteDialog;

    invoke-static {v0}, Lcom/dodonew/online/widget/dialog/VoteDialog;->access$000(Lcom/dodonew/online/widget/dialog/VoteDialog;)Lcom/dodonew/online/adapter/VoteScoreAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dodonew/online/adapter/VoteScoreAdapter;->noneChoose()V

    .line 114
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/VoteDialog$1;->this$0:Lcom/dodonew/online/widget/dialog/VoteDialog;

    invoke-static {v0}, Lcom/dodonew/online/widget/dialog/VoteDialog;->access$100(Lcom/dodonew/online/widget/dialog/VoteDialog;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f02005e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 115
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/VoteDialog$1;->this$0:Lcom/dodonew/online/widget/dialog/VoteDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dodonew/online/widget/dialog/VoteDialog;->access$202(Lcom/dodonew/online/widget/dialog/VoteDialog;Z)Z

    .line 122
    :goto_0
    const-string v0, "yang"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/dodonew/online/widget/dialog/VoteDialog$1;->this$0:Lcom/dodonew/online/widget/dialog/VoteDialog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/dodonew/online/widget/dialog/VoteDialog;->access$300(Lcom/dodonew/online/widget/dialog/VoteDialog;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "        getCanGetScore..... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/VoteDialog$1;->this$0:Lcom/dodonew/online/widget/dialog/VoteDialog;

    invoke-static {v0}, Lcom/dodonew/online/widget/dialog/VoteDialog;->access$400(Lcom/dodonew/online/widget/dialog/VoteDialog;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/dodonew/online/widget/dialog/VoteDialog$1;->this$0:Lcom/dodonew/online/widget/dialog/VoteDialog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/dodonew/online/widget/dialog/VoteDialog;->access$300(Lcom/dodonew/online/widget/dialog/VoteDialog;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/VoteDialog$1;->this$0:Lcom/dodonew/online/widget/dialog/VoteDialog;

    invoke-static {v0}, Lcom/dodonew/online/widget/dialog/VoteDialog;->access$200(Lcom/dodonew/online/widget/dialog/VoteDialog;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/VoteDialog$1;->this$0:Lcom/dodonew/online/widget/dialog/VoteDialog;

    invoke-static {v0}, Lcom/dodonew/online/widget/dialog/VoteDialog;->access$100(Lcom/dodonew/online/widget/dialog/VoteDialog;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f020062

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/VoteDialog$1;->this$0:Lcom/dodonew/online/widget/dialog/VoteDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dodonew/online/widget/dialog/VoteDialog;->access$202(Lcom/dodonew/online/widget/dialog/VoteDialog;Z)Z

    goto/16 :goto_0
.end method
