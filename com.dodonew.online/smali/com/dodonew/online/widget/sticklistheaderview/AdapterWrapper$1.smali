.class Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper$1;
.super Landroid/database/DataSetObserver;
.source "AdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper$1;->this$0:Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper$1;->this$0:Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;

    invoke-static {v0}, Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;->access$201(Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;)V

    .line 49
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper$1;->this$0:Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;

    invoke-static {v0}, Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;->access$000(Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 43
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper$1;->this$0:Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;

    invoke-static {v0}, Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;->access$101(Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;)V

    .line 44
    return-void
.end method
