.class public Lcom/android/systemui/shared/system/RemoteTransitionCompat;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;,
        Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteTransitionCompat"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newRemoteTransition(Lcom/android/systemui/shared/system/RecentsAnimationListener;Landroid/app/IApplicationThread;)Landroid/window/RemoteTransition;
    .registers 4

    new-instance v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/system/RemoteTransitionCompat$1;-><init>(Lcom/android/systemui/shared/system/RecentsAnimationListener;)V

    new-instance p0, Landroid/window/RemoteTransition;

    const-string v1, "Recents"

    invoke-direct {p0, v0, p1, v1}, Landroid/window/RemoteTransition;-><init>(Landroid/window/IRemoteTransition;Landroid/app/IApplicationThread;Ljava/lang/String;)V

    return-object p0
.end method
