.class public final synthetic Lcom/android/wm/shell/desktopmode/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/i;->a:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/i;->a:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    invoke-static {p0}, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$2;->a(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    return-void
.end method
