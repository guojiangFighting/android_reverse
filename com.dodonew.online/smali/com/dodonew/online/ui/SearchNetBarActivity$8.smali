.class Lcom/dodonew/online/ui/SearchNetBarActivity$8;
.super Ljava/lang/Object;
.source "SearchNetBarActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/SearchNetBarActivity;->setResultViewEvent()V
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
    .line 371
    iput-object p1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity$8;->this$0:Lcom/dodonew/online/ui/SearchNetBarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "checkId"    # I
    .param p4, "arg3"    # J
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
    .line 375
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity$8;->this$0:Lcom/dodonew/online/ui/SearchNetBarActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/SearchNetBarActivity;->access$500(Lcom/dodonew/online/ui/SearchNetBarActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_0

    .line 376
    iget-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity$8;->this$0:Lcom/dodonew/online/ui/SearchNetBarActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/SearchNetBarActivity;->access$700(Lcom/dodonew/online/ui/SearchNetBarActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/dodonew/online/ui/SearchNetBarActivity$8;->this$0:Lcom/dodonew/online/ui/SearchNetBarActivity;

    invoke-static {v2}, Lcom/dodonew/online/ui/SearchNetBarActivity;->access$600(Lcom/dodonew/online/ui/SearchNetBarActivity;)Lcom/dodonew/online/view/SearchRecordView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 377
    iget-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity$8;->this$0:Lcom/dodonew/online/ui/SearchNetBarActivity;

    iget-object v2, p0, Lcom/dodonew/online/ui/SearchNetBarActivity$8;->this$0:Lcom/dodonew/online/ui/SearchNetBarActivity;

    invoke-static {v2}, Lcom/dodonew/online/ui/SearchNetBarActivity;->access$200(Lcom/dodonew/online/ui/SearchNetBarActivity;)Lcom/dodonew/online/view/SearchView;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dodonew/online/util/Utils;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 378
    iget-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity$8;->this$0:Lcom/dodonew/online/ui/SearchNetBarActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/SearchNetBarActivity;->access$500(Lcom/dodonew/online/ui/SearchNetBarActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/bean/NetBar;

    .line 379
    .local v0, "netBar":Lcom/dodonew/online/bean/NetBar;
    iget-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity$8;->this$0:Lcom/dodonew/online/ui/SearchNetBarActivity;

    invoke-static {v1, v0}, Lcom/dodonew/online/ui/SearchNetBarActivity;->access$100(Lcom/dodonew/online/ui/SearchNetBarActivity;Lcom/dodonew/online/bean/NetBar;)V

    .line 381
    .end local v0    # "netBar":Lcom/dodonew/online/bean/NetBar;
    :cond_0
    return-void
.end method
