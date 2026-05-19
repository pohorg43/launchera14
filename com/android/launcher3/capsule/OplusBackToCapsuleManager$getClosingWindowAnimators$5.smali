.class public final Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$getClosingWindowAnimators$5;
.super Lcom/android/launcher3/anim/AnimationSuccessListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->getClosingWindowAnimators(Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$BackToCapsuleParam;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/Launcher;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .registers 2

    sget-object p0, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->INSTANCE:Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;

    invoke-virtual {p0}, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->notifyAnimatorNormalEnd()V

    return-void
.end method
