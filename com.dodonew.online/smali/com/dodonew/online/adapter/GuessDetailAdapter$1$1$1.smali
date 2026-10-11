.class Lcom/dodonew/online/adapter/GuessDetailAdapter$1$1$1;
.super Ljava/lang/Object;
.source "GuessDetailAdapter.java"

# interfaces
.implements Lcom/dodonew/online/widget/dialog/InformationDialog$OnOkClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/adapter/GuessDetailAdapter$1$1;->vote(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/dodonew/online/adapter/GuessDetailAdapter$1$1;

.field final synthetic val$betNum:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dodonew/online/adapter/GuessDetailAdapter$1$1;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$2"    # Lcom/dodonew/online/adapter/GuessDetailAdapter$1$1;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter$1$1$1;->this$2:Lcom/dodonew/online/adapter/GuessDetailAdapter$1$1;

    iput-object p2, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter$1$1$1;->val$betNum:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOk(Z)V
    .locals 4
    .param p1, "isOk"    # Z

    .prologue
    .line 101
    if-eqz p1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter$1$1$1;->this$2:Lcom/dodonew/online/adapter/GuessDetailAdapter$1$1;

    iget-object v0, v0, Lcom/dodonew/online/adapter/GuessDetailAdapter$1$1;->this$1:Lcom/dodonew/online/adapter/GuessDetailAdapter$1;

    iget-object v0, v0, Lcom/dodonew/online/adapter/GuessDetailAdapter$1;->this$0:Lcom/dodonew/online/adapter/GuessDetailAdapter;

    iget-object v0, v0, Lcom/dodonew/online/adapter/GuessDetailAdapter;->onConfirmClickListener:Lcom/dodonew/online/adapter/GuessDetailAdapter$OnConfirmClickListener;

    iget-object v1, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter$1$1$1;->this$2:Lcom/dodonew/online/adapter/GuessDetailAdapter$1$1;

    iget-object v1, v1, Lcom/dodonew/online/adapter/GuessDetailAdapter$1$1;->val$scoreCategory:Lcom/dodonew/online/bean/ScoreCategory;

    iget-object v2, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter$1$1$1;->val$betNum:Ljava/lang/String;

    iget-object v3, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter$1$1$1;->this$2:Lcom/dodonew/online/adapter/GuessDetailAdapter$1$1;

    iget-object v3, v3, Lcom/dodonew/online/adapter/GuessDetailAdapter$1$1;->this$1:Lcom/dodonew/online/adapter/GuessDetailAdapter$1;

    iget v3, v3, Lcom/dodonew/online/adapter/GuessDetailAdapter$1;->val$position:I

    invoke-interface {v0, v1, v2, v3}, Lcom/dodonew/online/adapter/GuessDetailAdapter$OnConfirmClickListener;->confirm(Lcom/dodonew/online/bean/ScoreCategory;Ljava/lang/String;I)V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter$1$1$1;->this$2:Lcom/dodonew/online/adapter/GuessDetailAdapter$1$1;

    iget-object v0, v0, Lcom/dodonew/online/adapter/GuessDetailAdapter$1$1;->this$1:Lcom/dodonew/online/adapter/GuessDetailAdapter$1;

    iget-object v0, v0, Lcom/dodonew/online/adapter/GuessDetailAdapter$1;->val$guessScoreAdapter:Lcom/dodonew/online/adapter/GuessScoreAdapter;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/dodonew/online/adapter/GuessScoreAdapter;->setPos(I)V

    goto :goto_0
.end method
