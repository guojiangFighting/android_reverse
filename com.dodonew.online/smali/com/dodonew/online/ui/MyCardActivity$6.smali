.class Lcom/dodonew/online/ui/MyCardActivity$6;
.super Ljava/lang/Object;
.source "MyCardActivity.java"

# interfaces
.implements Lcom/dodonew/online/widget/swipelayout/IOnItemRightClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/MyCardActivity;->setCardAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/MyCardActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/MyCardActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/MyCardActivity;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/dodonew/online/ui/MyCardActivity$6;->this$0:Lcom/dodonew/online/ui/MyCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRightClick(Landroid/view/View;I)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 192
    iget-object v1, p0, Lcom/dodonew/online/ui/MyCardActivity$6;->this$0:Lcom/dodonew/online/ui/MyCardActivity;

    invoke-static {v1, p2}, Lcom/dodonew/online/ui/MyCardActivity;->access$302(Lcom/dodonew/online/ui/MyCardActivity;I)I

    .line 193
    iget-object v1, p0, Lcom/dodonew/online/ui/MyCardActivity$6;->this$0:Lcom/dodonew/online/ui/MyCardActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/MyCardActivity;->access$000(Lcom/dodonew/online/ui/MyCardActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/bean/Card;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/Card;->getId()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->close()V

    .line 195
    iget-object v1, p0, Lcom/dodonew/online/ui/MyCardActivity$6;->this$0:Lcom/dodonew/online/ui/MyCardActivity;

    invoke-static {v1, v0}, Lcom/dodonew/online/ui/MyCardActivity;->access$600(Lcom/dodonew/online/ui/MyCardActivity;Ljava/lang/String;)V

    .line 196
    return-void
.end method
