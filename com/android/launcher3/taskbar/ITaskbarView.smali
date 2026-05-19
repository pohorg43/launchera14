.class public interface abstract Lcom/android/launcher3/taskbar/ITaskbarView;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract addItems(Ljava/util/List;IZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;IZ)V"
        }
    .end annotation
.end method

.method public abstract removeItems(IIZ)V
.end method

.method public abstract replaceItems(ILjava/util/List;ZZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;ZZ)V"
        }
    .end annotation
.end method

.method public abstract updateAll(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation
.end method
