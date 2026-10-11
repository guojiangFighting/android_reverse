.class Lcom/dodonew/online/ui/PayActivity$1;
.super Ljava/lang/Object;
.source "PayActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/PayActivity;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/PayActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/PayActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/PayActivity;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/dodonew/online/ui/PayActivity$1;->this$0:Lcom/dodonew/online/ui/PayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
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
    .line 159
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/dodonew/online/ui/PayActivity$1;->this$0:Lcom/dodonew/online/ui/PayActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/PayActivity;->access$000(Lcom/dodonew/online/ui/PayActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/dodonew/online/ui/PayActivity$1;->this$0:Lcom/dodonew/online/ui/PayActivity;

    invoke-static {v0, p3}, Lcom/dodonew/online/ui/PayActivity;->access$100(Lcom/dodonew/online/ui/PayActivity;I)V

    .line 162
    :cond_0
    return-void
.end method
