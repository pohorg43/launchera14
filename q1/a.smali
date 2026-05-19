.class public abstract Lq1/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lq1/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lq1/h<",
        "TZ;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private request:Lp1/d;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getRequest()Lp1/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method

.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method

.method public abstract setRequest(Lp1/d;)V
    .param p1  # Lp1/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
