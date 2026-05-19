.class public interface abstract Lq1/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lm1/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lm1/i;"
    }
.end annotation


# virtual methods
.method public abstract getRequest()Lp1/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getSize(Lq1/g;)V
    .param p1  # Lq1/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onResourceReady(Ljava/lang/Object;Lr1/b;)V
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
            "(TR;",
            "Lr1/b<",
            "-TR;>;)V"
        }
    .end annotation
.end method

.method public abstract removeCallback(Lq1/g;)V
    .param p1  # Lq1/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setRequest(Lp1/d;)V
    .param p1  # Lp1/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
