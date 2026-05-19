.class Lcom/android/quickstep/LauncherBackAnimationController$IStaticRemoteAnimationRunner;
.super Landroid/view/IRemoteAnimationRunner$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/LauncherBackAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IStaticRemoteAnimationRunner"
.end annotation


# instance fields
.field private controllerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/quickstep/LauncherBackAnimationController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/quickstep/LauncherBackAnimationController;)V
    .registers 3

    invoke-direct {p0}, Landroid/view/IRemoteAnimationRunner$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$IStaticRemoteAnimationRunner;->controllerRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onAnimationCancelled()V
    .registers 1

    return-void
.end method

.method public onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .registers 9

    iget-object p1, p0, Lcom/android/quickstep/LauncherBackAnimationController$IStaticRemoteAnimationRunner;->controllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_9

    return-void

    :cond_9
    array-length p1, p2

    const/4 p3, 0x0

    move p4, p3

    :goto_c
    if-ge p4, p1, :cond_29

    aget-object v0, p2, p4

    iget v1, v0, Landroid/view/RemoteAnimationTarget;->mode:I

    const/4 v2, 0x1

    if-ne v2, v1, :cond_26

    iget-object p1, p0, Lcom/android/quickstep/LauncherBackAnimationController$IStaticRemoteAnimationRunner;->controllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/LauncherBackAnimationController;

    new-instance p2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-direct {p2, v0, p3}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;-><init>(Landroid/view/RemoteAnimationTarget;Z)V

    invoke-static {p1, p2}, Lcom/android/quickstep/LauncherBackAnimationController;->access$402(Lcom/android/quickstep/LauncherBackAnimationController;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    goto :goto_29

    :cond_26
    add-int/lit8 p4, p4, 0x1

    goto :goto_c

    :cond_29
    :goto_29
    iget-object p0, p0, Lcom/android/quickstep/LauncherBackAnimationController$IStaticRemoteAnimationRunner;->controllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/LauncherBackAnimationController;

    invoke-static {p0, p5}, Lcom/android/quickstep/LauncherBackAnimationController;->access$502(Lcom/android/quickstep/LauncherBackAnimationController;Landroid/view/IRemoteAnimationFinishedCallback;)Landroid/view/IRemoteAnimationFinishedCallback;

    return-void
.end method
