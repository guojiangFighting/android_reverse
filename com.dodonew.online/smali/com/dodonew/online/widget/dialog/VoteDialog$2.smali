.class Lcom/dodonew/online/widget/dialog/VoteDialog$2;
.super Ljava/lang/Object;
.source "VoteDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 132
    iput-object p1, p0, Lcom/dodonew/online/widget/dialog/VoteDialog$2;->this$0:Lcom/dodonew/online/widget/dialog/VoteDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/VoteDialog$2;->this$0:Lcom/dodonew/online/widget/dialog/VoteDialog;

    invoke-static {v0}, Lcom/dodonew/online/widget/dialog/VoteDialog;->access$500(Lcom/dodonew/online/widget/dialog/VoteDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/VoteDialog$2;->this$0:Lcom/dodonew/online/widget/dialog/VoteDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dodonew/online/widget/dialog/VoteDialog;->access$602(Lcom/dodonew/online/widget/dialog/VoteDialog;Z)Z

    .line 137
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/VoteDialog$2;->this$0:Lcom/dodonew/online/widget/dialog/VoteDialog;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/dialog/VoteDialog;->dismiss()V

    .line 139
    :cond_0
    return-void
.end method
