.class interface abstract Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecSource;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SizeSpecSource"
.end annotation


# virtual methods
.method public abstract getDefaultSize(F)Landroid/util/Size;
.end method

.method public abstract getMaxSize(F)Landroid/util/Size;
.end method

.method public abstract getMinSize(F)Landroid/util/Size;
.end method

.method public abstract getSizeForAspectRatio(Landroid/util/Size;F)Landroid/util/Size;
.end method

.method public reloadResources()V
    .registers 1

    return-void
.end method
