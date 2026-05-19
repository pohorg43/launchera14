.class public interface abstract Lcom/oplus/quickstep/layout/grid/IGridActivityInterface;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/layout/IActivityInterface;


# virtual methods
.method public abstract calculateGridSize(Lcom/android/quickstep/BaseActivityInterface;Lcom/android/launcher3/OplusDeviceProfile;Landroid/graphics/Rect;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/BaseActivityInterface<",
            "**>;",
            "Lcom/android/launcher3/OplusDeviceProfile;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation
.end method

.method public abstract calculateGridTaskSize(Lcom/android/quickstep/BaseActivityInterface;Landroid/content/Context;Lcom/android/launcher3/OplusDeviceProfile;Landroid/graphics/Rect;Lcom/android/launcher3/touch/PagedOrientationHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/BaseActivityInterface<",
            "**>;",
            "Landroid/content/Context;",
            "Lcom/android/launcher3/OplusDeviceProfile;",
            "Landroid/graphics/Rect;",
            "Lcom/android/launcher3/touch/PagedOrientationHandler;",
            ")V"
        }
    .end annotation
.end method
