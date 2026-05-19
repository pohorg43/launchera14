.class public final Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager$DefaultImpls;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic endWindowAnim$default(Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;Landroid/view/View;ZZIILjava/lang/Object;)V
    .registers 7

    if-nez p6, :cond_b

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_7

    const/4 p3, 0x0

    :cond_7
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->endWindowAnim(Landroid/view/View;ZZI)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: endWindowAnim"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
