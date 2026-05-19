.class Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/transition/DefaultMixedHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MixedTransition"
.end annotation


# static fields
.field public static final ANIM_TYPE_DEFAULT:I = 0x0

.field public static final ANIM_TYPE_GOING_HOME:I = 0x1

.field public static final ANIM_TYPE_PAIR_TO_PAIR:I = 0x1

.field public static final TYPE_DISPLAY_AND_SPLIT_CHANGE:I = 0x2

.field public static final TYPE_ENTER_PIP_FROM_SPLIT:I = 0x1

.field public static final TYPE_KEYGUARD:I = 0x5

.field public static final TYPE_OPTIONS_REMOTE_AND_PIP_CHANGE:I = 0x3

.field public static final TYPE_RECENTS_DURING_SPLIT:I = 0x4

.field public static final TYPE_UNFOLD:I = 0x6


# instance fields
.field public mAnimType:I

.field public mFinishWCT:Landroid/window/WindowContainerTransaction;

.field public mInFlightSubAnimations:I

.field public mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

.field public final mTransition:Landroid/os/IBinder;

.field public final mType:I


# direct methods
.method public constructor <init>(ILandroid/os/IBinder;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mAnimType:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    iput-object v1, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mFinishWCT:Landroid/window/WindowContainerTransaction;

    iput v0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    iput p1, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mType:I

    iput-object p2, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public joinFinishArgs(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V
    .registers 3

    if-nez p2, :cond_10

    if-eqz p1, :cond_f

    iget-object p2, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mFinishWCT:Landroid/window/WindowContainerTransaction;

    if-nez p2, :cond_b

    iput-object p1, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mFinishWCT:Landroid/window/WindowContainerTransaction;

    goto :goto_f

    :cond_b
    const/4 p0, 0x1

    invoke-virtual {p2, p1, p0}, Landroid/window/WindowContainerTransaction;->merge(Landroid/window/WindowContainerTransaction;Z)V

    :cond_f
    :goto_f
    return-void

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t mix transitions that require finish sync callback"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
