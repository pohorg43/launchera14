.class public final synthetic Lcom/android/launcher3/graphics/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/graphics/f;->a:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/graphics/f;->a:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

    invoke-static {p0}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->b(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;)Landroid/view/SurfaceControlViewHost;

    move-result-object p0

    return-object p0
.end method
