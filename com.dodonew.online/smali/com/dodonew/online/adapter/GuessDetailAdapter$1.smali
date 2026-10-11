.class Lcom/dodonew/online/adapter/GuessDetailAdapter$1;
.super Ljava/lang/Object;
.source "GuessDetailAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/adapter/GuessDetailAdapter;->onBindViewHolder(Lcom/dodonew/online/adapter/GuessDetailAdapter$Viewholder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/adapter/GuessDetailAdapter;

.field final synthetic val$guessScoreAdapter:Lcom/dodonew/online/adapter/GuessScoreAdapter;

.field final synthetic val$position:I

.field final synthetic val$scoreCategorylist:Ljava/util/List;

.field final synthetic val$scoreData:Lcom/dodonew/online/bean/ScoreData;


# direct methods
.method constructor <init>(Lcom/dodonew/online/adapter/GuessDetailAdapter;Lcom/dodonew/online/adapter/GuessScoreAdapter;Ljava/util/List;Lcom/dodonew/online/bean/ScoreData;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/adapter/GuessDetailAdapter;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter$1;->this$0:Lcom/dodonew/online/adapter/GuessDetailAdapter;

    iput-object p2, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter$1;->val$guessScoreAdapter:Lcom/dodonew/online/adapter/GuessScoreAdapter;

    iput-object p3, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter$1;->val$scoreCategorylist:Ljava/util/List;

    iput-object p4, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter$1;->val$scoreData:Lcom/dodonew/online/bean/ScoreData;

    iput p5, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter$1;->val$guessScoreAdapter:Lcom/dodonew/online/adapter/GuessScoreAdapter;

    invoke-virtual {v1, p3}, Lcom/dodonew/online/adapter/GuessScoreAdapter;->setPos(I)V

    .line 83
    iget-object v1, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter$1;->this$0:Lcom/dodonew/online/adapter/GuessDetailAdapter;

    iget-object v2, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter$1;->val$guessScoreAdapter:Lcom/dodonew/online/adapter/GuessScoreAdapter;

    invoke-static {v1, v2}, Lcom/dodonew/online/adapter/GuessDetailAdapter;->access$002(Lcom/dodonew/online/adapter/GuessDetailAdapter;Lcom/dodonew/online/adapter/GuessScoreAdapter;)Lcom/dodonew/online/adapter/GuessScoreAdapter;

    .line 84
    iget-object v1, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter$1;->this$0:Lcom/dodonew/online/adapter/GuessDetailAdapter;

    invoke-static {v1, p3}, Lcom/dodonew/online/adapter/GuessDetailAdapter;->access$102(Lcom/dodonew/online/adapter/GuessDetailAdapter;I)I

    .line 85
    iget-object v1, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter$1;->val$scoreCategorylist:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/bean/ScoreCategory;

    .line 86
    .local v0, "scoreCategory":Lcom/dodonew/online/bean/ScoreCategory;
    iget-object v1, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter$1;->this$0:Lcom/dodonew/online/adapter/GuessDetailAdapter;

    iget-object v2, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter$1;->val$scoreData:Lcom/dodonew/online/bean/ScoreData;

    invoke-virtual {v2}, Lcom/dodonew/online/bean/ScoreData;->getTotalScore()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/dodonew/online/widget/dialog/VoteDialog;->newInstance(Lcom/dodonew/online/bean/ScoreCategory;Ljava/lang/String;)Lcom/dodonew/online/widget/dialog/VoteDialog;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dodonew/online/adapter/GuessDetailAdapter;->access$202(Lcom/dodonew/online/adapter/GuessDetailAdapter;Lcom/dodonew/online/widget/dialog/VoteDialog;)Lcom/dodonew/online/widget/dialog/VoteDialog;

    .line 87
    iget-object v1, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter$1;->this$0:Lcom/dodonew/online/adapter/GuessDetailAdapter;

    invoke-static {v1}, Lcom/dodonew/online/adapter/GuessDetailAdapter;->access$200(Lcom/dodonew/online/adapter/GuessDetailAdapter;)Lcom/dodonew/online/widget/dialog/VoteDialog;

    move-result-object v1

    new-instance v2, Lcom/dodonew/online/adapter/GuessDetailAdapter$1$1;

    invoke-direct {v2, p0, v0}, Lcom/dodonew/online/adapter/GuessDetailAdapter$1$1;-><init>(Lcom/dodonew/online/adapter/GuessDetailAdapter$1;Lcom/dodonew/online/bean/ScoreCategory;)V

    invoke-virtual {v1, v2}, Lcom/dodonew/online/widget/dialog/VoteDialog;->setOnVoteClickListener(Lcom/dodonew/online/widget/dialog/VoteDialog$OnVoteClickListener;)V

    .line 115
    iget-object v1, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter$1;->this$0:Lcom/dodonew/online/adapter/GuessDetailAdapter;

    invoke-static {v1}, Lcom/dodonew/online/adapter/GuessDetailAdapter;->access$200(Lcom/dodonew/online/adapter/GuessDetailAdapter;)Lcom/dodonew/online/widget/dialog/VoteDialog;

    move-result-object v2

    iget-object v1, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter$1;->this$0:Lcom/dodonew/online/adapter/GuessDetailAdapter;

    invoke-static {v1}, Lcom/dodonew/online/adapter/GuessDetailAdapter;->access$500(Lcom/dodonew/online/adapter/GuessDetailAdapter;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v3, "VoteDialog"

    invoke-virtual {v2, v1, v3}, Lcom/dodonew/online/widget/dialog/VoteDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 116
    return-void
.end method
