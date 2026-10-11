.class Lcom/dodonew/online/view/GameDataView$6;
.super Ljava/lang/Object;
.source "GameDataView.java"

# interfaces
.implements Lcom/dodonew/online/interfaces/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/view/GameDataView;->initAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/view/GameDataView;


# direct methods
.method constructor <init>(Lcom/dodonew/online/view/GameDataView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/view/GameDataView;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/dodonew/online/view/GameDataView$6;->this$0:Lcom/dodonew/online/view/GameDataView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 205
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dodonew/online/view/GameDataView$6;->this$0:Lcom/dodonew/online/view/GameDataView;

    invoke-static {v1}, Lcom/dodonew/online/view/GameDataView;->access$900(Lcom/dodonew/online/view/GameDataView;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/dodonew/online/ui/GamePlayActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 206
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "gameDetail"

    iget-object v1, p0, Lcom/dodonew/online/view/GameDataView$6;->this$0:Lcom/dodonew/online/view/GameDataView;

    invoke-static {v1}, Lcom/dodonew/online/view/GameDataView;->access$1000(Lcom/dodonew/online/view/GameDataView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 207
    iget-object v1, p0, Lcom/dodonew/online/view/GameDataView$6;->this$0:Lcom/dodonew/online/view/GameDataView;

    invoke-static {v1}, Lcom/dodonew/online/view/GameDataView;->access$900(Lcom/dodonew/online/view/GameDataView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 208
    return-void
.end method
