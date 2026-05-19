.class public final Landroidx/core/view/MenuCompat;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/MenuCompat$Api28Impl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setGroupDividerEnabled(Landroid/view/Menu;Z)V
    .registers 3
    .param p0  # Landroid/view/Menu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of v0, p0, Landroidx/core/internal/view/SupportMenu;

    if-eqz v0, :cond_a

    check-cast p0, Landroidx/core/internal/view/SupportMenu;

    invoke-interface {p0, p1}, Landroidx/core/internal/view/SupportMenu;->setGroupDividerEnabled(Z)V

    goto :goto_d

    :cond_a
    invoke-static {p0, p1}, Landroidx/core/view/MenuCompat$Api28Impl;->setGroupDividerEnabled(Landroid/view/Menu;Z)V

    :goto_d
    return-void
.end method

.method public static setShowAsAction(Landroid/view/MenuItem;I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method
