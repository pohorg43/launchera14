.class public final Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$Companion;-><init>()V

    return-void
.end method

.method private final getSupportAsync()Z
    .registers 1

    invoke-static {}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->access$getSupportAsync$delegate$cp()Lh4/f;

    move-result-object p0

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final isDefaultTheme()Z
    .registers 2

    sget-boolean p0, Lcom/android/launcher/theme/LauncherIconConfig;->sIsDefaultTheme:Z

    if-eqz p0, :cond_d

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->getTheme()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public final supportAsyncTransition()Z
    .registers 4

    sget-object v0, Lcom/oplus/quickstep/utils/AnimationFeatureHelper;->Companion:Lcom/oplus/quickstep/utils/AnimationFeatureHelper$Companion;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/AnimationFeatureHelper$Companion;->getInstance()Lcom/oplus/quickstep/utils/AnimationFeatureHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/AnimationFeatureHelper;->getAsyncEnable()I

    move-result v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string/jumbo v1, "supportAsyncTransition, supportAsync: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$Companion;->getSupportAsync()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", asyncAnimConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusBaseAppTransitionHelper"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    invoke-direct {p0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$Companion;->getSupportAsync()Z

    move-result p0

    if-eqz p0, :cond_41

    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result p0

    if-nez p0, :cond_41

    if-eqz v0, :cond_41

    const/4 p0, 0x1

    goto :goto_42

    :cond_41
    const/4 p0, 0x0

    :goto_42
    return p0
.end method
