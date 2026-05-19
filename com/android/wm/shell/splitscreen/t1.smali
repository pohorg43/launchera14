.class public final synthetic Lcom/android/wm/shell/splitscreen/t1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;


# static fields
.field public static final synthetic a:Lcom/android/wm/shell/splitscreen/t1;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/wm/shell/splitscreen/t1;

    invoke-direct {v0}, Lcom/android/wm/shell/splitscreen/t1;-><init>()V

    sput-object v0, Lcom/android/wm/shell/splitscreen/t1;->a:Lcom/android/wm/shell/splitscreen/t1;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final runWithTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->o(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
