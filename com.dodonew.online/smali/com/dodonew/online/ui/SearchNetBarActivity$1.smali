.class Lcom/dodonew/online/ui/SearchNetBarActivity$1;
.super Ljava/lang/Object;
.source "SearchNetBarActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/SearchNetBarActivity;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/SearchNetBarActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/SearchNetBarActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/SearchNetBarActivity;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity$1;->this$0:Lcom/dodonew/online/ui/SearchNetBarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 137
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity$1;->this$0:Lcom/dodonew/online/ui/SearchNetBarActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/SearchNetBarActivity;->access$000(Lcom/dodonew/online/ui/SearchNetBarActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/bean/NetBar;

    .line 138
    .local v0, "netBar":Lcom/dodonew/online/bean/NetBar;
    iget-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity$1;->this$0:Lcom/dodonew/online/ui/SearchNetBarActivity;

    invoke-static {v1, v0}, Lcom/dodonew/online/ui/SearchNetBarActivity;->access$100(Lcom/dodonew/online/ui/SearchNetBarActivity;Lcom/dodonew/online/bean/NetBar;)V

    .line 139
    return-void
.end method
