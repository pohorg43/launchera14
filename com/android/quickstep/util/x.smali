.class public final synthetic Lcom/android/quickstep/util/x;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameDrawingCallback;


# instance fields
.field public final synthetic a:Lcom/android/quickstep/util/SurfaceTransactionApplier;

.field public final synthetic b:I

.field public final synthetic c:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/util/SurfaceTransactionApplier;ILandroid/view/SurfaceControl$Transaction;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/x;->a:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    iput p2, p0, Lcom/android/quickstep/util/x;->b:I

    iput-object p3, p0, Lcom/android/quickstep/util/x;->c:Landroid/view/SurfaceControl$Transaction;

    return-void
.end method


# virtual methods
.method public final onFrameDraw(J)V
    .registers 5

    iget-object v0, p0, Lcom/android/quickstep/util/x;->a:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    iget v1, p0, Lcom/android/quickstep/util/x;->b:I

    iget-object p0, p0, Lcom/android/quickstep/util/x;->c:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->b(Lcom/android/quickstep/util/SurfaceTransactionApplier;ILandroid/view/SurfaceControl$Transaction;J)V

    return-void
.end method
