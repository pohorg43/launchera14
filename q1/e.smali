.class public abstract Lq1/e;
.super Lq1/i;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Lq1/i<",
        "Landroid/widget/ImageView;",
        "TZ;>;"
    }
.end annotation


# instance fields
.field private animatable:Landroid/graphics/drawable/Animatable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .registers 2

    invoke-direct {p0, p1}, Lq1/i;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Z)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p2}, Lq1/i;-><init>(Landroid/view/View;Z)V

    return-void
.end method

.method private maybeUpdateAnimatable(Ljava/lang/Object;)V
    .registers 3
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;)V"
        }
    .end annotation

    instance-of v0, p1, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_c

    check-cast p1, Landroid/graphics/drawable/Animatable;

    iput-object p1, p0, Lq1/e;->animatable:Landroid/graphics/drawable/Animatable;

    invoke-interface {p1}, Landroid/graphics/drawable/Animatable;->start()V

    goto :goto_f

    :cond_c
    const/4 p1, 0x0

    iput-object p1, p0, Lq1/e;->animatable:Landroid/graphics/drawable/Animatable;

    :goto_f
    return-void
.end method

.method private setResourceInternal(Ljava/lang/Object;)V
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lq1/e;->setResource(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lq1/e;->maybeUpdateAnimatable(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lq1/i;->view:Landroid/view/View;

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lq1/i;->onLoadCleared(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lq1/e;->animatable:Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    :cond_a
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lq1/e;->setResourceInternal(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lq1/e;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lq1/a;->onLoadFailed(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lq1/e;->setResourceInternal(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lq1/e;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lq1/i;->onLoadStarted(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lq1/e;->setResourceInternal(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lq1/e;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onResourceReady(Ljava/lang/Object;Lr1/b;)V
    .registers 3
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lr1/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;",
            "Lr1/b<",
            "-TZ;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lq1/e;->setResourceInternal(Ljava/lang/Object;)V

    return-void
.end method

.method public onStart()V
    .registers 1

    iget-object p0, p0, Lq1/e;->animatable:Landroid/graphics/drawable/Animatable;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Landroid/graphics/drawable/Animatable;->start()V

    :cond_7
    return-void
.end method

.method public onStop()V
    .registers 1

    iget-object p0, p0, Lq1/e;->animatable:Landroid/graphics/drawable/Animatable;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Landroid/graphics/drawable/Animatable;->stop()V

    :cond_7
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iget-object p0, p0, Lq1/i;->view:Landroid/view/View;

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public abstract setResource(Ljava/lang/Object;)V
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;)V"
        }
    .end annotation
.end method
