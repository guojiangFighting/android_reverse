.class Lcom/dodonew/online/fragment/VideoFragment$1;
.super Ljava/lang/Object;
.source "VideoFragment.java"

# interfaces
.implements Lcom/dodonew/online/interfaces/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/fragment/VideoFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/fragment/VideoFragment;


# direct methods
.method constructor <init>(Lcom/dodonew/online/fragment/VideoFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/fragment/VideoFragment;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/dodonew/online/fragment/VideoFragment$1;->this$0:Lcom/dodonew/online/fragment/VideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 115
    iget-object v1, p0, Lcom/dodonew/online/fragment/VideoFragment$1;->this$0:Lcom/dodonew/online/fragment/VideoFragment;

    iget-object v0, p0, Lcom/dodonew/online/fragment/VideoFragment$1;->this$0:Lcom/dodonew/online/fragment/VideoFragment;

    invoke-static {v0}, Lcom/dodonew/online/fragment/VideoFragment;->access$100(Lcom/dodonew/online/fragment/VideoFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/bean/Game;

    invoke-static {v1, v0}, Lcom/dodonew/online/fragment/VideoFragment;->access$002(Lcom/dodonew/online/fragment/VideoFragment;Lcom/dodonew/online/bean/Game;)Lcom/dodonew/online/bean/Game;

    .line 116
    iget-object v0, p0, Lcom/dodonew/online/fragment/VideoFragment$1;->this$0:Lcom/dodonew/online/fragment/VideoFragment;

    invoke-static {v0}, Lcom/dodonew/online/fragment/VideoFragment;->access$200(Lcom/dodonew/online/fragment/VideoFragment;)Lcom/dodonew/online/adapter/GameTitleAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/dodonew/online/adapter/GameTitleAdapter;->setPosition(I)V

    .line 117
    iget-object v0, p0, Lcom/dodonew/online/fragment/VideoFragment$1;->this$0:Lcom/dodonew/online/fragment/VideoFragment;

    invoke-static {v0}, Lcom/dodonew/online/fragment/VideoFragment;->access$300(Lcom/dodonew/online/fragment/VideoFragment;)Lcom/dodonew/online/view/GameDataView;

    move-result-object v0

    iget-object v1, p0, Lcom/dodonew/online/fragment/VideoFragment$1;->this$0:Lcom/dodonew/online/fragment/VideoFragment;

    invoke-static {v1}, Lcom/dodonew/online/fragment/VideoFragment;->access$000(Lcom/dodonew/online/fragment/VideoFragment;)Lcom/dodonew/online/bean/Game;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dodonew/online/view/GameDataView;->setGame(Lcom/dodonew/online/bean/Game;)V

    .line 118
    return-void
.end method
