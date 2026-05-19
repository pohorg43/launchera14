.class Lcom/android/launcher/settings/LauncherModelIntroductionPreference$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/settings/LauncherModelIntroductionPreference;->bindView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/settings/LauncherModelIntroductionPreference;


# direct methods
.method public constructor <init>(Lcom/android/launcher/settings/LauncherModelIntroductionPreference;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/settings/LauncherModelIntroductionPreference$3;->this$0:Lcom/android/launcher/settings/LauncherModelIntroductionPreference;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherModelIntroductionPreference$3;->this$0:Lcom/android/launcher/settings/LauncherModelIntroductionPreference;

    invoke-static {v0}, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;->access$100(Lcom/android/launcher/settings/LauncherModelIntroductionPreference;)Lcom/oplus/anim/EffectiveAnimationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationView;->getScale()F

    move-result v0

    const v1, 0x3ea8f5c3  # 0.33f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3c

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_33

    const-string v0, " bindView. There is a problem with mLauncherModeAnimationView\'s Scale:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher/settings/LauncherModelIntroductionPreference$3;->this$0:Lcom/android/launcher/settings/LauncherModelIntroductionPreference;

    invoke-static {v2}, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;->access$100(Lcom/android/launcher/settings/LauncherModelIntroductionPreference;)Lcom/oplus/anim/EffectiveAnimationView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/anim/EffectiveAnimationView;->getScale()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LauncherModelIntroductionPreference"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherModelIntroductionPreference$3;->this$0:Lcom/android/launcher/settings/LauncherModelIntroductionPreference;

    invoke-static {v0}, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;->access$100(Lcom/android/launcher/settings/LauncherModelIntroductionPreference;)Lcom/oplus/anim/EffectiveAnimationView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/anim/EffectiveAnimationView;->setScale(F)V

    :cond_3c
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void
.end method
