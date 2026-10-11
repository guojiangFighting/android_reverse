.class Lcom/dodonew/online/widget/PinnedSectionListView$2;
.super Landroid/database/DataSetObserver;
.source "PinnedSectionListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/widget/PinnedSectionListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/PinnedSectionListView;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/PinnedSectionListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/PinnedSectionListView;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/dodonew/online/widget/PinnedSectionListView$2;->this$0:Lcom/dodonew/online/widget/PinnedSectionListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/dodonew/online/widget/PinnedSectionListView$2;->this$0:Lcom/dodonew/online/widget/PinnedSectionListView;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/PinnedSectionListView;->recreatePinnedShadow()V

    .line 135
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/dodonew/online/widget/PinnedSectionListView$2;->this$0:Lcom/dodonew/online/widget/PinnedSectionListView;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/PinnedSectionListView;->recreatePinnedShadow()V

    .line 138
    return-void
.end method
