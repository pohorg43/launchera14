.class public final synthetic Lcom/android/wm/shell/pip/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/pip/PipTaskOrganizer$1;

.field public final synthetic b:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic c:Landroid/graphics/Rect;

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/PipTaskOrganizer$1;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;II)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/m;->a:Lcom/android/wm/shell/pip/PipTaskOrganizer$1;

    iput-object p2, p0, Lcom/android/wm/shell/pip/m;->b:Landroid/view/SurfaceControl$Transaction;

    iput-object p3, p0, Lcom/android/wm/shell/pip/m;->c:Landroid/graphics/Rect;

    iput p4, p0, Lcom/android/wm/shell/pip/m;->d:I

    iput p5, p0, Lcom/android/wm/shell/pip/m;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/pip/m;->a:Lcom/android/wm/shell/pip/PipTaskOrganizer$1;

    iget-object v1, p0, Lcom/android/wm/shell/pip/m;->b:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/wm/shell/pip/m;->c:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/wm/shell/pip/m;->d:I

    iget p0, p0, Lcom/android/wm/shell/pip/m;->e:I

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;->a(Lcom/android/wm/shell/pip/PipTaskOrganizer$1;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;II)V

    return-void
.end method
