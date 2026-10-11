.class Lcom/dodonew/online/ui/SearchNetBarActivity$7;
.super Ljava/lang/Object;
.source "SearchNetBarActivity.java"

# interfaces
.implements Lcom/dodonew/online/interfaces/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/SearchNetBarActivity;->setNetBarRecentlyAdapter()V
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
    .line 335
    iput-object p1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity$7;->this$0:Lcom/dodonew/online/ui/SearchNetBarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 338
    iget-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity$7;->this$0:Lcom/dodonew/online/ui/SearchNetBarActivity;

    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity$7;->this$0:Lcom/dodonew/online/ui/SearchNetBarActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/SearchNetBarActivity;->access$1200(Lcom/dodonew/online/ui/SearchNetBarActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/bean/NetBar;

    invoke-static {v1, v0}, Lcom/dodonew/online/ui/SearchNetBarActivity;->access$100(Lcom/dodonew/online/ui/SearchNetBarActivity;Lcom/dodonew/online/bean/NetBar;)V

    .line 339
    return-void
.end method
