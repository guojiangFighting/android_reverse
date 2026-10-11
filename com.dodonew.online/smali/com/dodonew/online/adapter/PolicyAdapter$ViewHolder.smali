.class Lcom/dodonew/online/adapter/PolicyAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "PolicyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/adapter/PolicyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field editText:Landroid/widget/EditText;

.field final synthetic this$0:Lcom/dodonew/online/adapter/PolicyAdapter;

.field tvName:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/dodonew/online/adapter/PolicyAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/adapter/PolicyAdapter;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/dodonew/online/adapter/PolicyAdapter$ViewHolder;->this$0:Lcom/dodonew/online/adapter/PolicyAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
