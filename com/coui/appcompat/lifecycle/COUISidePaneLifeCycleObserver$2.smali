.class Lcom/coui/appcompat/lifecycle/COUISidePaneLifeCycleObserver$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/lifecycle/COUISidePaneLifeCycleObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    if-ne p2, p6, :cond_9

    if-ne p3, p7, :cond_9

    if-ne p4, p8, :cond_9

    if-ne p5, p9, :cond_9

    return-void

    :cond_9
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    throw p0
.end method
