.class public final synthetic Lcom/android/wm/shell/splitscreen/w0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;


# static fields
.field public static final synthetic a:Lcom/android/wm/shell/splitscreen/w0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/wm/shell/splitscreen/w0;

    invoke-direct {v0}, Lcom/android/wm/shell/splitscreen/w0;-><init>()V

    sput-object v0, Lcom/android/wm/shell/splitscreen/w0;->a:Lcom/android/wm/shell/splitscreen/w0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    invoke-static {p1, p2}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->b(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
