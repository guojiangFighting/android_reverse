.class Lcom/dodonew/online/ui/MyCollectionActivity$7;
.super Ljava/lang/Object;
.source "MyCollectionActivity.java"

# interfaces
.implements Lcom/dodonew/online/widget/swipelayout/IOnItemRightClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/MyCollectionActivity;->setMyCollectionAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/MyCollectionActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/MyCollectionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/MyCollectionActivity;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/dodonew/online/ui/MyCollectionActivity$7;->this$0:Lcom/dodonew/online/ui/MyCollectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRightClick(Landroid/view/View;I)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 225
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->close()V

    .line 226
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity$7;->this$0:Lcom/dodonew/online/ui/MyCollectionActivity;

    invoke-static {v0, p2}, Lcom/dodonew/online/ui/MyCollectionActivity;->access$502(Lcom/dodonew/online/ui/MyCollectionActivity;I)I

    .line 227
    iget-object v1, p0, Lcom/dodonew/online/ui/MyCollectionActivity$7;->this$0:Lcom/dodonew/online/ui/MyCollectionActivity;

    iget-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity$7;->this$0:Lcom/dodonew/online/ui/MyCollectionActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/MyCollectionActivity;->access$900(Lcom/dodonew/online/ui/MyCollectionActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity$7;->this$0:Lcom/dodonew/online/ui/MyCollectionActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/MyCollectionActivity;->access$600(Lcom/dodonew/online/ui/MyCollectionActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/bean/Collection;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/Collection;->getCid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/dodonew/online/ui/MyCollectionActivity;->access$1000(Lcom/dodonew/online/ui/MyCollectionActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    return-void
.end method
