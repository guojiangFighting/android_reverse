.class public Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter$FixedViewInfo;
.super Ljava/lang/Object;
.source "WrapAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FixedViewInfo"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;

.field public view:Landroid/view/View;

.field public viewType:I


# direct methods
.method public constructor <init>(Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;

    .prologue
    .line 33
    .local p0, "this":Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter$FixedViewInfo;, "Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter<TT;>.FixedViewInfo;"
    iput-object p1, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter$FixedViewInfo;->this$0:Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
