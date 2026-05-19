.class public abstract Lcom/coui/appcompat/state/Processor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/content/ComponentCallbacks;"
    }
.end annotation


# instance fields
.field public a:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field public final b:I

.field public c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation
.end field


# virtual methods
.method public abstract a(Landroid/view/View;ILandroid/util/SparseArray;)V
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I",
            "Landroid/util/SparseArray<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public b(Landroid/view/View;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    if-eqz p1, :cond_a

    iget v0, p0, Lcom/coui/appcompat/state/Processor;->b:I

    iget-object v1, p0, Lcom/coui/appcompat/state/Processor;->c:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0, v1}, Lcom/coui/appcompat/state/Processor;->a(Landroid/view/View;ILandroid/util/SparseArray;)V

    goto :goto_17

    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Processor: the parameter mView == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_17
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1  # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onLowMemory()V
    .registers 1

    return-void
.end method
