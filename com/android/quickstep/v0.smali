.class public final synthetic Lcom/android/quickstep/v0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic a:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/v0;->a:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/v0;->a:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    check-cast p1, Landroid/view/MotionEvent;

    invoke-static {p0, p1}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->c(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;Landroid/view/MotionEvent;)V

    return-void
.end method
