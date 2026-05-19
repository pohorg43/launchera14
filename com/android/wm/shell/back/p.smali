.class public final synthetic Lcom/android/wm/shell/back/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/window/BackProgressAnimator$ProgressCallback;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/back/CustomizeActivityAnimation;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/back/CustomizeActivityAnimation;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/back/p;->a:Lcom/android/wm/shell/back/CustomizeActivityAnimation;

    return-void
.end method


# virtual methods
.method public final onProgressUpdate(Landroid/window/BackEvent;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/back/p;->a:Lcom/android/wm/shell/back/CustomizeActivityAnimation;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->onGestureProgress(Landroid/window/BackEvent;)V

    return-void
.end method
