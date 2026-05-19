.class public final synthetic Lcom/android/wm/shell/transition/q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;


# static fields
.field public static final synthetic a:Lcom/android/wm/shell/transition/q;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/wm/shell/transition/q;

    invoke-direct {v0}, Lcom/android/wm/shell/transition/q;-><init>()V

    sput-object v0, Lcom/android/wm/shell/transition/q;->a:Lcom/android/wm/shell/transition/q;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V
    .registers 3

    invoke-static {p1, p2}, Lcom/android/wm/shell/transition/Transitions;->d(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method
