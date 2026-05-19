.class public interface abstract Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$ISelectionHandler;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ISelectionHandler"
.end annotation


# virtual methods
.method public abstract getSelection()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isSelected(I)Z
.end method

.method public abstract updateSelection(IIZZ)V
.end method
