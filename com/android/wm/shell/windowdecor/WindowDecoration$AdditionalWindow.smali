.class Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/windowdecor/WindowDecoration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdditionalWindow"
.end annotation


# instance fields
.field public mTransactionSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field public mWindowSurface:Landroid/view/SurfaceControl;

.field public mWindowViewHost:Landroid/view/SurfaceControlViewHost;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceControl;Landroid/view/SurfaceControlViewHost;Ljava/util/function/Supplier;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControlViewHost;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mWindowSurface:Landroid/view/SurfaceControl;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mWindowViewHost:Landroid/view/SurfaceControlViewHost;

    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mTransactionSupplier:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public releaseView()V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mWindowViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->getWindowlessWM()Landroid/view/WindowlessWindowManager;

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mWindowViewHost:Landroid/view/SurfaceControlViewHost;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->release()V

    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mWindowViewHost:Landroid/view/SurfaceControlViewHost;

    :cond_f
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mTransactionSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mWindowSurface:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_22

    invoke-virtual {v0, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mWindowSurface:Landroid/view/SurfaceControl;

    const/4 v2, 0x1

    :cond_22
    if-eqz v2, :cond_27

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_27
    return-void
.end method
