.class Lcom/dodonew/online/adapter/AddressAdapter$1;
.super Lcom/dodonew/online/widget/swipelayout/SimpleSwipeListener;
.source "AddressAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/adapter/AddressAdapter;->onBindViewHolder(Lcom/dodonew/online/adapter/AddressAdapter$Viewholder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/adapter/AddressAdapter;


# direct methods
.method constructor <init>(Lcom/dodonew/online/adapter/AddressAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/adapter/AddressAdapter;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/dodonew/online/adapter/AddressAdapter$1;->this$0:Lcom/dodonew/online/adapter/AddressAdapter;

    invoke-direct {p0}, Lcom/dodonew/online/widget/swipelayout/SimpleSwipeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpen(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)V
    .locals 4
    .param p1, "layout"    # Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    .prologue
    .line 60
    sget-object v0, Lcom/dodonew/online/widget/swipelayout/Techniques;->Tada:Lcom/dodonew/online/widget/swipelayout/Techniques;

    invoke-static {v0}, Lcom/dodonew/online/widget/swipelayout/YoYo;->with(Lcom/dodonew/online/widget/swipelayout/Techniques;)Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;->duration(J)Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;->delay(J)Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;

    move-result-object v0

    const v1, 0x7f0d0149

    .line 61
    invoke-virtual {p1, v1}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;->playOn(Landroid/view/View;)Lcom/dodonew/online/widget/swipelayout/YoYo$YoYoString;

    .line 62
    return-void
.end method
