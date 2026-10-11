.class Lcom/dodonew/online/adapter/CardAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "CardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/adapter/CardAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field container:Landroid/view/View;

.field imageView:Landroid/widget/ImageView;

.field item_right:Landroid/view/View;

.field swipeLayout:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

.field final synthetic this$0:Lcom/dodonew/online/adapter/CardAdapter;

.field tvAccount:Landroid/widget/TextView;

.field tvBalance:Landroid/widget/TextView;

.field tvName:Landroid/widget/TextView;

.field tvType:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/dodonew/online/adapter/CardAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/adapter/CardAdapter;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/dodonew/online/adapter/CardAdapter$ViewHolder;->this$0:Lcom/dodonew/online/adapter/CardAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
