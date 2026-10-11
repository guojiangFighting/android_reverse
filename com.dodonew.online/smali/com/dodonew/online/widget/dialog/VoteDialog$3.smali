.class Lcom/dodonew/online/widget/dialog/VoteDialog$3;
.super Ljava/lang/Object;
.source "VoteDialog.java"

# interfaces
.implements Lcom/dodonew/online/interfaces/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/widget/dialog/VoteDialog;->setAdapter()V
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
    .line 164
    iput-object p1, p0, Lcom/dodonew/online/widget/dialog/VoteDialog$3;->this$0:Lcom/dodonew/online/widget/dialog/VoteDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 167
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/VoteDialog$3;->this$0:Lcom/dodonew/online/widget/dialog/VoteDialog;

    invoke-static {v0}, Lcom/dodonew/online/widget/dialog/VoteDialog;->access$000(Lcom/dodonew/online/widget/dialog/VoteDialog;)Lcom/dodonew/online/adapter/VoteScoreAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/dodonew/online/adapter/VoteScoreAdapter;->setPos(I)V

    .line 168
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/VoteDialog$3;->this$0:Lcom/dodonew/online/widget/dialog/VoteDialog;

    invoke-static {v0}, Lcom/dodonew/online/widget/dialog/VoteDialog;->access$800(Lcom/dodonew/online/widget/dialog/VoteDialog;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/dodonew/online/widget/dialog/VoteDialog$3;->this$0:Lcom/dodonew/online/widget/dialog/VoteDialog;

    invoke-static {v1}, Lcom/dodonew/online/widget/dialog/VoteDialog;->access$700(Lcom/dodonew/online/widget/dialog/VoteDialog;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 169
    return-void
.end method
