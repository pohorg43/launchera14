.class public final synthetic Lcom/android/quickstep/o0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/window/BackProgressAnimator$ProgressCallback;


# instance fields
.field public final synthetic a:Lcom/android/quickstep/LauncherBackAnimationController$IStaticOnBackInvokedCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/LauncherBackAnimationController$IStaticOnBackInvokedCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/o0;->a:Lcom/android/quickstep/LauncherBackAnimationController$IStaticOnBackInvokedCallback;

    return-void
.end method


# virtual methods
.method public final onProgressUpdate(Landroid/window/BackEvent;)V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/o0;->a:Lcom/android/quickstep/LauncherBackAnimationController$IStaticOnBackInvokedCallback;

    invoke-static {p0, p1}, Lcom/android/quickstep/LauncherBackAnimationController$IStaticOnBackInvokedCallback;->c(Lcom/android/quickstep/LauncherBackAnimationController$IStaticOnBackInvokedCallback;Landroid/window/BackEvent;)V

    return-void
.end method
