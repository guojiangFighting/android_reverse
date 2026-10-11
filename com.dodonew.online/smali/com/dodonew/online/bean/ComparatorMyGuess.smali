.class public Lcom/dodonew/online/bean/ComparatorMyGuess;
.super Ljava/lang/Object;
.source "ComparatorMyGuess.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/dodonew/online/bean/MyGuessDetail;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/dodonew/online/bean/MyGuessDetail;Lcom/dodonew/online/bean/MyGuessDetail;)I
    .locals 5
    .param p1, "lhs"    # Lcom/dodonew/online/bean/MyGuessDetail;
    .param p2, "rhs"    # Lcom/dodonew/online/bean/MyGuessDetail;

    .prologue
    .line 15
    invoke-virtual {p1}, Lcom/dodonew/online/bean/MyGuessDetail;->getType()Ljava/lang/String;

    move-result-object v0

    .line 16
    .local v0, "a":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/dodonew/online/bean/MyGuessDetail;->getType()Ljava/lang/String;

    move-result-object v3

    .line 17
    .local v3, "b":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 18
    .local v1, "a1":I
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 19
    .local v2, "a2":I
    sub-int v4, v1, v2

    return v4
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 12
    check-cast p1, Lcom/dodonew/online/bean/MyGuessDetail;

    check-cast p2, Lcom/dodonew/online/bean/MyGuessDetail;

    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/bean/ComparatorMyGuess;->compare(Lcom/dodonew/online/bean/MyGuessDetail;Lcom/dodonew/online/bean/MyGuessDetail;)I

    move-result v0

    return v0
.end method
