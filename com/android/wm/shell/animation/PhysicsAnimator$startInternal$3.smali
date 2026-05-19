.class public final Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/animation/PhysicsAnimator$EndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/animation/PhysicsAnimator;->startInternal$com_android_wm_shell_release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/wm/shell/animation/PhysicsAnimator$EndListener<",
        "TT;>;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPhysicsAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PhysicsAnimator.kt\ncom/android/wm/shell/animation/PhysicsAnimator$startInternal$3\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1035:1\n1#2:1036\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic $animatedProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final synthetic $flingMax:F

.field public final synthetic $flingMin:F

.field public final synthetic $springConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

.field public final synthetic this$0:Lcom/android/wm/shell/animation/PhysicsAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/wm/shell/animation/PhysicsAnimator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;Lcom/android/wm/shell/animation/PhysicsAnimator;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;FF",
            "Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;",
            "Lcom/android/wm/shell/animation/PhysicsAnimator<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$3;->$animatedProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iput p2, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$3;->$flingMin:F

    iput p3, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$3;->$flingMax:F

    iput-object p4, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$3;->$springConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    iput-object p5, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$3;->this$0:Lcom/android/wm/shell/animation/PhysicsAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;ZZFFZ)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;ZZFFZ)V"
        }
    .end annotation

    const-string/jumbo p7, "property"

    invoke-static {p2, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p7, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$3;->$animatedProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-static {p2, p7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7d

    if-eqz p3, :cond_7d

    if-eqz p4, :cond_14

    goto/16 :goto_7d

    :cond_14
    invoke-static {p6}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/4 p3, 0x0

    int-to-float p4, p3

    cmpl-float p2, p2, p4

    const/4 p7, 0x1

    if-lez p2, :cond_21

    move p2, p7

    goto :goto_22

    :cond_21
    move p2, p3

    :goto_22
    iget v0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$3;->$flingMin:F

    cmpg-float v0, v0, p5

    if-gtz v0, :cond_30

    iget v0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$3;->$flingMax:F

    cmpg-float v0, p5, v0

    if-gtz v0, :cond_30

    move v0, p7

    goto :goto_31

    :cond_30
    move v0, p3

    :goto_31
    xor-int/2addr v0, p7

    if-nez p2, :cond_36

    if-eqz v0, :cond_7d

    :cond_36
    iget-object v1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$3;->$springConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {v1, p6}, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->setStartVelocity$com_android_wm_shell_release(F)V

    iget-object v1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$3;->$springConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {v1}, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->getFinalPosition$com_android_wm_shell_release()F

    move-result v1

    invoke-static {}, Lcom/android/wm/shell/animation/PhysicsAnimatorKt;->access$getUNSET$p()F

    move-result v2

    cmpg-float v1, v1, v2

    if-nez v1, :cond_4a

    move p3, p7

    :cond_4a
    if-eqz p3, :cond_6d

    if-eqz p2, :cond_5d

    iget-object p2, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$3;->$springConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    cmpg-float p3, p6, p4

    if-gez p3, :cond_57

    iget p3, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$3;->$flingMin:F

    goto :goto_59

    :cond_57
    iget p3, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$3;->$flingMax:F

    :goto_59
    invoke-virtual {p2, p3}, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->setFinalPosition$com_android_wm_shell_release(F)V

    goto :goto_6d

    :cond_5d
    if-eqz v0, :cond_6d

    iget-object p2, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$3;->$springConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    iget p3, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$3;->$flingMin:F

    cmpg-float p4, p5, p3

    if-gez p4, :cond_68

    goto :goto_6a

    :cond_68
    iget p3, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$3;->$flingMax:F

    :goto_6a
    invoke-virtual {p2, p3}, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->setFinalPosition$com_android_wm_shell_release(F)V

    :cond_6d
    :goto_6d
    iget-object p2, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$3;->this$0:Lcom/android/wm/shell/animation/PhysicsAnimator;

    iget-object p3, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$3;->$animatedProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-static {p2, p3, p1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->access$getSpringAnimation(Lcom/android/wm/shell/animation/PhysicsAnimator;Landroidx/dynamicanimation/animation/FloatPropertyCompat;Ljava/lang/Object;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$3;->$springConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->applyToAnimation$com_android_wm_shell_release(Landroidx/dynamicanimation/animation/SpringAnimation;)V

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    :cond_7d
    :goto_7d
    return-void
.end method
