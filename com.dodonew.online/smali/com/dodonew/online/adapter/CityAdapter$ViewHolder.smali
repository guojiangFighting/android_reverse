.class Lcom/dodonew/online/adapter/CityAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "CityAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/adapter/CityAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field text:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/dodonew/online/adapter/CityAdapter;


# direct methods
.method constructor <init>(Lcom/dodonew/online/adapter/CityAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/adapter/CityAdapter;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/dodonew/online/adapter/CityAdapter$ViewHolder;->this$0:Lcom/dodonew/online/adapter/CityAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
