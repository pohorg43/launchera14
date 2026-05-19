.class public final Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl$OplusRecentsRotationChangeListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/SettingsCache$OnChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OplusRecentsRotationChangeListener"
.end annotation


# instance fields
.field private final stateRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl;)V
    .registers 3

    const-string/jumbo v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl$OplusRecentsRotationChangeListener;->stateRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onSettingsChanged(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl$OplusRecentsRotationChangeListener;->stateRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->updateAutoRotateSetting()V

    :cond_d
    return-void
.end method
