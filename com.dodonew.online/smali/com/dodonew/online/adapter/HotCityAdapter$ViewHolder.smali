.class Lcom/dodonew/online/adapter/HotCityAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "HotCityAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/adapter/HotCityAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/adapter/HotCityAdapter;

.field tvName:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/dodonew/online/adapter/HotCityAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/adapter/HotCityAdapter;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/dodonew/online/adapter/HotCityAdapter$ViewHolder;->this$0:Lcom/dodonew/online/adapter/HotCityAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
