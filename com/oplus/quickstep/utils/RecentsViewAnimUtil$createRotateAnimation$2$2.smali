.class public final Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createRotateAnimation$2$2;
.super Lcom/android/common/util/AnimationCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->createRotateAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;ZI)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $dockViewAlphaProp:Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

.field public final synthetic $fadeInChildren:Z

.field public final synthetic $newRotation:I

.field public final synthetic $rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/android/quickstep/views/OplusRecentsViewImpl;ZLcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;Z",
            "Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;",
            ")V"
        }
    .end annotation

    iput p1, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createRotateAnimation$2$2;->$newRotation:I

    iput-object p2, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createRotateAnimation$2$2;->$rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iput-boolean p3, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createRotateAnimation$2$2;->$fadeInChildren:Z

    iput-object p4, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createRotateAnimation$2$2;->$dockViewAlphaProp:Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    invoke-direct {p0}, Lcom/android/common/util/AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationFinish(Landroid/animation/Animator;Z)V
    .registers 8

    iget p1, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createRotateAnimation$2$2;->$newRotation:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_c

    const/4 v2, 0x2

    if-ne p1, v2, :cond_a

    goto :goto_c

    :cond_a
    move p1, v0

    goto :goto_d

    :cond_c
    :goto_c
    move p1, v1

    :goto_d
    iget-object v2, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createRotateAnimation$2$2;->$rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    move-result-object v2

    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Lcom/oplus/quickstep/dock/DockView;->isRecentsViewPortrait()Z

    move-result v2

    if-ne v2, v1, :cond_1c

    move v0, v1

    :cond_1c
    iget-boolean v1, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createRotateAnimation$2$2;->$fadeInChildren:Z

    if-eqz v1, :cond_22

    move v1, p1

    goto :goto_23

    :cond_22
    move v1, v0

    :goto_23
    iget-object v2, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createRotateAnimation$2$2;->$dockViewAlphaProp:Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    if-nez v2, :cond_28

    goto :goto_31

    :cond_28
    if-eqz v1, :cond_2d

    const/high16 v3, 0x3f800000  # 1.0f

    goto :goto_2e

    :cond_2d
    const/4 v3, 0x0

    :goto_2e
    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->setValue(F)V

    :goto_31
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_57

    const-string v2, "rotate animator onAnimationFinish, isCancelled: "

    const-string v3, ", isNewPortrait: "

    const-string v4, ", isRecentsViewCurrentPortrait: "

    invoke-static {v2, p2, v3, p1, v4}, Lcom/android/common/config/h;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isFinalPortrait: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "QuickStep"

    const-string v1, "RecentsViewAnimUtil"

    invoke-static {v0, v1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_57
    iget-object p0, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createRotateAnimation$2$2;->$rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRelayInteraction()Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    move-result-object p0

    sget-object p2, Lcom/oplus/quickstep/relay/data/RelayState$EnterRecent;->INSTANCE:Lcom/oplus/quickstep/relay/data/RelayState$EnterRecent;

    invoke-virtual {p0, p2}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->update(Lcom/oplus/quickstep/relay/data/RelayState;)V

    if-nez p1, :cond_69

    sget-object p0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceGuide;->INSTANCE:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceGuide;

    invoke-virtual {p0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceGuide;->dismiss()V

    :cond_69
    return-void
.end method
