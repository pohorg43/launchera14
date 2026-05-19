.class public final synthetic Lcom/oplus/quickstep/gesture/s;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

.field public final synthetic b:Landroid/graphics/Rect;

.field public final synthetic c:Landroid/graphics/Matrix;

.field public final synthetic d:Lkotlin/jvm/internal/Ref$FloatRef;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;FLandroid/graphics/Rect;Landroid/graphics/Matrix;Lkotlin/jvm/internal/Ref$FloatRef;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/s;->a:Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    iput-object p3, p0, Lcom/oplus/quickstep/gesture/s;->b:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/oplus/quickstep/gesture/s;->c:Landroid/graphics/Matrix;

    iput-object p5, p0, Lcom/oplus/quickstep/gesture/s;->d:Lkotlin/jvm/internal/Ref$FloatRef;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/s;->a:Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    iget-object v1, p0, Lcom/oplus/quickstep/gesture/s;->b:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/oplus/quickstep/gesture/s;->c:Landroid/graphics/Matrix;

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/s;->d:Lkotlin/jvm/internal/Ref$FloatRef;

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-static {v0, v3, v1, v2, p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->a(Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;FLandroid/graphics/Rect;Landroid/graphics/Matrix;Lkotlin/jvm/internal/Ref$FloatRef;)V

    return-void
.end method
