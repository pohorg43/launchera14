.class public final synthetic Lcom/android/wm/shell/back/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Landroid/window/IOnBackInvokedCallback;

.field public final synthetic b:Landroid/view/IRemoteAnimationRunner;


# direct methods
.method public synthetic constructor <init>(Landroid/window/IOnBackInvokedCallback;Landroid/view/IRemoteAnimationRunner;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/back/h;->a:Landroid/window/IOnBackInvokedCallback;

    iput-object p2, p0, Lcom/android/wm/shell/back/h;->b:Landroid/view/IRemoteAnimationRunner;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/back/h;->a:Landroid/window/IOnBackInvokedCallback;

    iget-object p0, p0, Lcom/android/wm/shell/back/h;->b:Landroid/view/IRemoteAnimationRunner;

    check-cast p1, Lcom/android/wm/shell/back/BackAnimationController;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/back/BackAnimationController$IBackAnimationImpl;->b(Landroid/window/IOnBackInvokedCallback;Landroid/view/IRemoteAnimationRunner;Lcom/android/wm/shell/back/BackAnimationController;)V

    return-void
.end method
