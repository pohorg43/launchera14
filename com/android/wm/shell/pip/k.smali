.class public final synthetic Lcom/android/wm/shell/pip/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/SurfaceControl$TransactionCommittedListener;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/pip/PipTaskOrganizer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/k;->a:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    return-void
.end method


# virtual methods
.method public final onTransactionCommitted()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/k;->a:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-static {p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;->b(Lcom/android/wm/shell/pip/PipTaskOrganizer;)V

    return-void
.end method
