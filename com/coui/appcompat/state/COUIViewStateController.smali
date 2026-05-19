.class public Lcom/coui/appcompat/state/COUIViewStateController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/coui/appcompat/state/IViewStateController;
.implements Landroid/content/ComponentCallbacks;


# instance fields
.field public a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/coui/appcompat/state/Processor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/state/COUIViewStateController;->a:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public c(I)V
    .registers 4

    iget-object p0, p0, Lcom/coui/appcompat/state/COUIViewStateController;->a:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_b

    return-void

    :cond_b
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/state/Processor;

    iget-object v0, p1, Lcom/coui/appcompat/state/Processor;->a:Landroid/view/View;

    if-eqz v0, :cond_21

    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    if-eqz v1, :cond_28

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/state/Processor;->b(Landroid/view/View;)V

    goto :goto_f

    :cond_28
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/state/Processor;->b(Landroid/view/View;)V

    goto :goto_f

    :cond_2d
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1  # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/coui/appcompat/state/COUIViewStateController;->a:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2a

    iget-object v1, p0, Lcom/coui/appcompat/state/COUIViewStateController;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/state/Processor;

    if-eqz v2, :cond_15

    invoke-virtual {v2, p1}, Lcom/coui/appcompat/state/Processor;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_15

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2a
    return-void
.end method

.method public onLowMemory()V
    .registers 1

    return-void
.end method
