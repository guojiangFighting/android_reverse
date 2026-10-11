.class Lcom/dodonew/online/widget/sticklistheaderview/DistinctMultiHashMap$1;
.super Ljava/lang/Object;
.source "DistinctMultiHashMap.java"

# interfaces
.implements Lcom/dodonew/online/widget/sticklistheaderview/DistinctMultiHashMap$IDMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/widget/sticklistheaderview/DistinctMultiHashMap;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dodonew/online/widget/sticklistheaderview/DistinctMultiHashMap$IDMapper",
        "<TTKey;TTItemValue;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    .local p0, "this":Lcom/dodonew/online/widget/sticklistheaderview/DistinctMultiHashMap$1;, "Lcom/dodonew/online/widget/sticklistheaderview/DistinctMultiHashMap$1;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public keyIdToKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "keyId"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TTKey;"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lcom/dodonew/online/widget/sticklistheaderview/DistinctMultiHashMap$1;, "Lcom/dodonew/online/widget/sticklistheaderview/DistinctMultiHashMap$1;"
    return-object p1
.end method

.method public keyToKeyId(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lcom/dodonew/online/widget/sticklistheaderview/DistinctMultiHashMap$1;, "Lcom/dodonew/online/widget/sticklistheaderview/DistinctMultiHashMap$1;"
    .local p1, "key":Ljava/lang/Object;, "TTKey;"
    return-object p1
.end method

.method public valueIdToValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "valueId"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TTItemValue;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/dodonew/online/widget/sticklistheaderview/DistinctMultiHashMap$1;, "Lcom/dodonew/online/widget/sticklistheaderview/DistinctMultiHashMap$1;"
    return-object p1
.end method

.method public valueToValueId(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTItemValue;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/dodonew/online/widget/sticklistheaderview/DistinctMultiHashMap$1;, "Lcom/dodonew/online/widget/sticklistheaderview/DistinctMultiHashMap$1;"
    .local p1, "value":Ljava/lang/Object;, "TTItemValue;"
    return-object p1
.end method
