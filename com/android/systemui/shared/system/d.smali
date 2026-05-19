.class public final synthetic Lcom/android/systemui/shared/system/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/system/d;->a:Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/shared/system/d;->a:Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;

    invoke-static {p0}, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->b(Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;)V

    return-void
.end method
