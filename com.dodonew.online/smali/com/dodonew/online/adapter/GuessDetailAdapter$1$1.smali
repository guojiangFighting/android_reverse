.class Lcom/dodonew/online/adapter/GuessDetailAdapter$1$1;
.super Ljava/lang/Object;
.source "GuessDetailAdapter.java"

# interfaces
.implements Lcom/dodonew/online/widget/dialog/VoteDialog$OnVoteClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/adapter/GuessDetailAdapter$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/dodonew/online/adapter/GuessDetailAdapter$1;

.field final synthetic val$scoreCategory:Lcom/dodonew/online/bean/ScoreCategory;


# direct methods
.method constructor <init>(Lcom/dodonew/online/adapter/GuessDetailAdapter$1;Lcom/dodonew/online/bean/ScoreCategory;)V
    .locals 0
    .param p1, "this$1"    # Lcom/dodonew/online/adapter/GuessDetailAdapter$1;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter$1$1;->this$1:Lcom/dodonew/online/adapter/GuessDetailAdapter$1;

    iput-object p2, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter$1$1;->val$scoreCategory:Lcom/dodonew/online/bean/ScoreCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public vote(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "betNum"    # Ljava/lang/String;
    .param p2, "isClick"    # Z

    .prologue
    .line 90
    if-eqz p2, :cond_1

    .line 91
    iget-object v0, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter$1$1;->this$1:Lcom/dodonew/online/adapter/GuessDetailAdapter$1;

    iget-object v0, v0, Lcom/dodonew/online/adapter/GuessDetailAdapter$1;->this$0:Lcom/dodonew/online/adapter/GuessDetailAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6295\u6ce8"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/dodonew/online/adapter/GuessDetailAdapter;->access$302(Lcom/dodonew/online/adapter/GuessDetailAdapter;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 92
    iget-object v0, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter$1$1;->this$1:Lcom/dodonew/online/adapter/GuessDetailAdapter$1;

    iget v0, v0, Lcom/dodonew/online/adapter/GuessDetailAdapter$1;->val$position:I

    if-lez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter$1$1;->this$1:Lcom/dodonew/online/adapter/GuessDetailAdapter$1;

    iget-object v0, v0, Lcom/dodonew/online/adapter/GuessDetailAdapter$1;->this$0:Lcom/dodonew/online/adapter/GuessDetailAdapter;

    invoke-static {v0}, Lcom/dodonew/online/adapter/GuessDetailAdapter;->access$300(Lcom/dodonew/online/adapter/GuessDetailAdapter;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u6bd4\u8d5b\u7ed3\u679c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter$1$1;->this$1:Lcom/dodonew/online/adapter/GuessDetailAdapter$1;

    iget-object v0, v0, Lcom/dodonew/online/adapter/GuessDetailAdapter$1;->this$0:Lcom/dodonew/online/adapter/GuessDetailAdapter;

    invoke-static {v0}, Lcom/dodonew/online/adapter/GuessDetailAdapter;->access$300(Lcom/dodonew/online/adapter/GuessDetailAdapter;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter$1$1;->val$scoreCategory:Lcom/dodonew/online/bean/ScoreCategory;

    invoke-virtual {v2}, Lcom/dodonew/online/bean/ScoreCategory;->getRaceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget-object v0, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter$1$1;->this$1:Lcom/dodonew/online/adapter/GuessDetailAdapter$1;

    iget-object v0, v0, Lcom/dodonew/online/adapter/GuessDetailAdapter$1;->this$0:Lcom/dodonew/online/adapter/GuessDetailAdapter;

    invoke-static {v0}, Lcom/dodonew/online/adapter/GuessDetailAdapter;->access$300(Lcom/dodonew/online/adapter/GuessDetailAdapter;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u79ef\u5206"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget-object v0, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter$1$1;->this$1:Lcom/dodonew/online/adapter/GuessDetailAdapter$1;

    iget-object v0, v0, Lcom/dodonew/online/adapter/GuessDetailAdapter$1;->this$0:Lcom/dodonew/online/adapter/GuessDetailAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter$1$1;->this$1:Lcom/dodonew/online/adapter/GuessDetailAdapter$1;

    iget-object v2, v2, Lcom/dodonew/online/adapter/GuessDetailAdapter$1;->this$0:Lcom/dodonew/online/adapter/GuessDetailAdapter;

    invoke-static {v2}, Lcom/dodonew/online/adapter/GuessDetailAdapter;->access$300(Lcom/dodonew/online/adapter/GuessDetailAdapter;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dodonew/online/widget/dialog/InformationDialog;->newInstance(Ljava/lang/String;)Lcom/dodonew/online/widget/dialog/InformationDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dodonew/online/adapter/GuessDetailAdapter;->access$402(Lcom/dodonew/online/adapter/GuessDetailAdapter;Lcom/dodonew/online/widget/dialog/InformationDialog;)Lcom/dodonew/online/widget/dialog/InformationDialog;

    .line 98
    iget-object v0, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter$1$1;->this$1:Lcom/dodonew/online/adapter/GuessDetailAdapter$1;

    iget-object v0, v0, Lcom/dodonew/online/adapter/GuessDetailAdapter$1;->this$0:Lcom/dodonew/online/adapter/GuessDetailAdapter;

    invoke-static {v0}, Lcom/dodonew/online/adapter/GuessDetailAdapter;->access$400(Lcom/dodonew/online/adapter/GuessDetailAdapter;)Lcom/dodonew/online/widget/dialog/InformationDialog;

    move-result-object v0

    new-instance v1, Lcom/dodonew/online/adapter/GuessDetailAdapter$1$1$1;

    invoke-direct {v1, p0, p1}, Lcom/dodonew/online/adapter/GuessDetailAdapter$1$1$1;-><init>(Lcom/dodonew/online/adapter/GuessDetailAdapter$1$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/dialog/InformationDialog;->setOnOkClickListener(Lcom/dodonew/online/widget/dialog/InformationDialog$OnOkClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter$1$1;->this$1:Lcom/dodonew/online/adapter/GuessDetailAdapter$1;

    iget-object v0, v0, Lcom/dodonew/online/adapter/GuessDetailAdapter$1;->this$0:Lcom/dodonew/online/adapter/GuessDetailAdapter;

    invoke-static {v0}, Lcom/dodonew/online/adapter/GuessDetailAdapter;->access$400(Lcom/dodonew/online/adapter/GuessDetailAdapter;)Lcom/dodonew/online/widget/dialog/InformationDialog;

    move-result-object v1

    iget-object v0, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter$1$1;->this$1:Lcom/dodonew/online/adapter/GuessDetailAdapter$1;

    iget-object v0, v0, Lcom/dodonew/online/adapter/GuessDetailAdapter$1;->this$0:Lcom/dodonew/online/adapter/GuessDetailAdapter;

    invoke-static {v0}, Lcom/dodonew/online/adapter/GuessDetailAdapter;->access$500(Lcom/dodonew/online/adapter/GuessDetailAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v2, "InformationDialog"

    invoke-virtual {v1, v0, v2}, Lcom/dodonew/online/widget/dialog/InformationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 113
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter$1$1;->this$1:Lcom/dodonew/online/adapter/GuessDetailAdapter$1;

    iget-object v0, v0, Lcom/dodonew/online/adapter/GuessDetailAdapter$1;->val$guessScoreAdapter:Lcom/dodonew/online/adapter/GuessScoreAdapter;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/dodonew/online/adapter/GuessScoreAdapter;->setPos(I)V

    goto :goto_0
.end method
