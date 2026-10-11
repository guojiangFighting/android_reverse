.class Lcom/dodonew/online/ui/ScoreMallActivity$6;
.super Ljava/lang/Object;
.source "ScoreMallActivity.java"

# interfaces
.implements Lcom/dodonew/online/interfaces/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/ScoreMallActivity;->setMallGiftAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/ScoreMallActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/ScoreMallActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/ScoreMallActivity;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/dodonew/online/ui/ScoreMallActivity$6;->this$0:Lcom/dodonew/online/ui/ScoreMallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 235
    iget-object v1, p0, Lcom/dodonew/online/ui/ScoreMallActivity$6;->this$0:Lcom/dodonew/online/ui/ScoreMallActivity;

    iput p2, v1, Lcom/dodonew/online/ui/ScoreMallActivity;->pos:I

    .line 236
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dodonew/online/ui/ScoreMallActivity$6;->this$0:Lcom/dodonew/online/ui/ScoreMallActivity;

    const-class v2, Lcom/dodonew/online/ui/AddressActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 237
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/dodonew/online/ui/ScoreMallActivity$6;->this$0:Lcom/dodonew/online/ui/ScoreMallActivity;

    const/16 v2, 0x16

    invoke-virtual {v1, v0, v2}, Lcom/dodonew/online/ui/ScoreMallActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 238
    return-void
.end method
