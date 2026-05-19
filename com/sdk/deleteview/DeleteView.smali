.class public final Lcom/sdk/deleteview/DeleteView;
.super Landroid/opengl/GLSurfaceView;
.source ""


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\r\u001a\u00020\f\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\u0010\u0010\u0011B\u0011\b\u0016\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u0010\u0010\u0012J\u0010\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t¨\u0006\u0013"
    }
    d2 = {
        "Lcom/sdk/deleteview/DeleteView;",
        "Landroid/opengl/GLSurfaceView;",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "Lh4/z;",
        "setDefaultBitmap",
        "",
        "id",
        "setDefaultResource",
        "",
        "speed",
        "setSpeed",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "(Landroid/content/Context;)V",
        "deleteView_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field public final a:Ll3/b;

.field public final b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sdk/deleteview/DeleteView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Ll3/b;

    invoke-direct {p2, p1}, Ll3/b;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sdk/deleteview/DeleteView;->a:Ll3/b;

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    sput-object p1, Lu3/a;->a:Landroid/content/res/AssetManager;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    const/16 v1, 0x8

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v5, 0x10

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    const/4 v0, -0x3

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setZOrderOnTop(Z)V

    invoke-virtual {p0, p2}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    new-instance p1, Lcom/sdk/deleteview/DeleteView$a;

    invoke-direct {p1, p0}, Lcom/sdk/deleteview/DeleteView$a;-><init>(Lcom/sdk/deleteview/DeleteView;)V

    iput-object p1, p0, Lcom/sdk/deleteview/DeleteView;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/sdk/deleteview/DeleteView;->a:Ll3/b;

    invoke-virtual {v0}, Ll3/b;->dispose()V

    iget-object v0, p0, Lcom/sdk/deleteview/DeleteView;->b:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setDefaultBitmap(Landroid/graphics/Bitmap;)V
    .registers 3

    iget-object p0, p0, Lcom/sdk/deleteview/DeleteView;->a:Ll3/b;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_15

    iput-object p1, p0, Ll3/b;->j:Landroid/graphics/Bitmap;

    :cond_15
    return-void
.end method

.method public final setDefaultResource(I)V
    .registers 3

    iget-object p0, p0, Lcom/sdk/deleteview/DeleteView;->a:Ll3/b;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ll3/a;

    invoke-direct {v0, p0, p1}, Ll3/a;-><init>(Ll3/b;I)V

    const-string p1, "runnable"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Ll3/d;->f:Ljava/util/ArrayList;

    monitor-enter p1

    :try_start_12
    iget-object p0, p0, Ll3/d;->f:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_19

    monitor-exit p1

    return-void

    :catchall_19
    move-exception p0

    monitor-exit p1

    throw p0
.end method

.method public final setSpeed(F)V
    .registers 2

    iget-object p0, p0, Lcom/sdk/deleteview/DeleteView;->a:Ll3/b;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
