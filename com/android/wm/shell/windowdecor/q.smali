.class public final synthetic Lcom/android/wm/shell/windowdecor/q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/SurfaceControl$TransactionCommittedListener;


# instance fields
.field public final synthetic a:Landroid/animation/ValueAnimator;


# direct methods
.method public synthetic constructor <init>(Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/q;->a:Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method public final onTransactionCommitted()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/q;->a:Landroid/animation/ValueAnimator;

    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/ResizeVeil;->c(Landroid/animation/ValueAnimator;)V

    return-void
.end method
