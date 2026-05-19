.class Lcom/android/wm/shell/back/BackAnimationController$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/back/BackAnimationController;->dispatchOrAnimateOnBackInvoked(Landroid/window/IOnBackInvokedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/back/BackAnimationController;

.field public final synthetic val$callback:Landroid/window/IOnBackInvokedCallback;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/back/BackAnimationController;Landroid/window/IOnBackInvokedCallback;)V
    .registers 3

    iput-object p1, p0, Lcom/android/wm/shell/back/BackAnimationController$3;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    iput-object p2, p0, Lcom/android/wm/shell/back/BackAnimationController$3;->val$callback:Landroid/window/IOnBackInvokedCallback;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p1, p0, Lcom/android/wm/shell/back/BackAnimationController$3;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController$3;->val$callback:Landroid/window/IOnBackInvokedCallback;

    invoke-static {p1, p0}, Lcom/android/wm/shell/back/BackAnimationController;->access$1200(Lcom/android/wm/shell/back/BackAnimationController;Landroid/window/IOnBackInvokedCallback;)V

    return-void
.end method
