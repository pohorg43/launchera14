.class public Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ACTIVITY_RECORD:Ljava/lang/String; = "ActivityRecord"

.field private static final COMPACT_MODE:Ljava/lang/String; = "oplus-magic-window"

.field private static final DARK_MODE_COLOR:I = -0xd9d9da

.field private static final DEFAULT_COLOR:I = -0x232324

.field private static final FUNC_ENABLE_STRING:Ljava/lang/String; = "persist.sys.opae.func_enable"

.field private static final OPLUS_MIRAGE_DISPLAY_ID_BASE:I = 0x2710

.field private static final PHONE_MANAGER_PKG_STRING:Ljava/lang/String; = "com.coloros.phonemanager"

.field private static final SETTINGS_CUSTON_FUNC_ENABLE:Z

.field private static final SETTINGS_PKG_STRING:Ljava/lang/String; = "com.android.settings"

.field private static final TAG:Ljava/lang/String; = "OplusActivityEmbeddingAnimationRunner"

.field private static final WINDOWING_MODE_COMPACTWINDOW:I = 0x78

.field private static volatile sInstance:Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;


# instance fields
.field private final mActivityAdjustEnabledApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityEmbeddingSplitsEnabledApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "persist.sys.opae.func_enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;->SETTINGS_CUSTON_FUNC_ENABLE:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.android.settings"

    const-string v1, "com.coloros.bootreg"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;->mActivityEmbeddingSplitsEnabledApps:Ljava/util/List;

    const-string v0, "com.android.permissioncontroller"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;->mActivityAdjustEnabledApps:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;
    .registers 2

    sget-object v0, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;->sInstance:Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;->sInstance:Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;

    invoke-direct {v1}, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;-><init>()V

    sput-object v1, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;->sInstance:Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;->sInstance:Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;

    return-object v0
.end method

.method private isCompactWindowMode(Landroid/window/TransitionInfo$Change;)Z
    .registers 2

    if-eqz p1, :cond_c

    invoke-static {p1}, Lcom/android/wm/shell/activityembedding/OplusEmbedReflectionUtils;->getWindowModeFromChange(Landroid/window/TransitionInfo$Change;)I

    move-result p0

    const/16 p1, 0x78

    if-ne p0, p1, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private isSettingsTaskFragment(Landroid/window/TransitionInfo$Change;)Z
    .registers 3

    sget-boolean p0, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;->SETTINGS_CUSTON_FUNC_ENABLE:Z

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    :cond_6
    if-eqz p1, :cond_16

    invoke-static {p1}, Lcom/android/wm/shell/activityembedding/OplusEmbedReflectionUtils;->getPkgNameFromChange(Landroid/window/TransitionInfo$Change;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.android.settings"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    return v0
.end method


# virtual methods
.method public HookTaskFragmentCloseAnimation(Landroid/window/TransitionInfo$Change;Lcom/android/internal/policy/TransitionAnimation;Z)Landroid/view/animation/Animation;
    .registers 5

    if-eqz p1, :cond_48

    invoke-static {p1}, Lcom/android/wm/shell/activityembedding/OplusEmbedReflectionUtils;->getPkgNameFromChange(Landroid/window/TransitionInfo$Change;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.settings"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    invoke-static {p1}, Lcom/android/wm/shell/activityembedding/OplusEmbedReflectionUtils;->getPkgNameFromChange(Landroid/window/TransitionInfo$Change;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.coloros.phonemanager"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_48

    :cond_1a
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    if-eqz p0, :cond_3c

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityRecord"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3c

    if-eqz p3, :cond_35

    sget p0, Lcom/android/wm/shell/R$anim;->task_fragment_close_enter:I

    goto :goto_37

    :cond_35
    sget p0, Lcom/android/wm/shell/R$anim;->oplus_close_slide_exit:I

    :goto_37
    invoke-virtual {p2, p0}, Lcom/android/internal/policy/TransitionAnimation;->loadDefaultAnimationRes(I)Landroid/view/animation/Animation;

    move-result-object p0

    goto :goto_53

    :cond_3c
    if-eqz p3, :cond_41

    sget p0, Lcom/android/wm/shell/R$anim;->task_fragment_close_enter:I

    goto :goto_43

    :cond_41
    sget p0, Lcom/android/wm/shell/R$anim;->task_fragment_close_exit:I

    :goto_43
    invoke-virtual {p2, p0}, Lcom/android/internal/policy/TransitionAnimation;->loadDefaultAnimationRes(I)Landroid/view/animation/Animation;

    move-result-object p0

    goto :goto_53

    :cond_48
    if-eqz p3, :cond_4d

    sget p0, Lcom/android/wm/shell/R$anim;->oplus_close_slide_enter:I

    goto :goto_4f

    :cond_4d
    sget p0, Lcom/android/wm/shell/R$anim;->oplus_close_slide_exit:I

    :goto_4f
    invoke-virtual {p2, p0}, Lcom/android/internal/policy/TransitionAnimation;->loadDefaultAnimationRes(I)Landroid/view/animation/Animation;

    move-result-object p0

    :goto_53
    return-object p0
.end method

.method public canUseCustomCloseTaskFragmentAnimation(Landroid/window/TransitionInfo$Change;)Z
    .registers 4

    sget-boolean p0, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;->SETTINGS_CUSTON_FUNC_ENABLE:Z

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    :cond_6
    if-eqz p1, :cond_22

    invoke-static {p1}, Lcom/android/wm/shell/activityembedding/OplusEmbedReflectionUtils;->getPkgNameFromChange(Landroid/window/TransitionInfo$Change;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "com.android.settings"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    invoke-static {p1}, Lcom/android/wm/shell/activityembedding/OplusEmbedReflectionUtils;->getPkgNameFromChange(Landroid/window/TransitionInfo$Change;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.coloros.phonemanager"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_22

    :cond_20
    const/4 p0, 0x1

    return p0

    :cond_22
    return v0
.end method

.method public canUseCustomOpenTaskFragmentAnimation(Landroid/window/TransitionInfo$Change;)Z
    .registers 4

    sget-boolean p0, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;->SETTINGS_CUSTON_FUNC_ENABLE:Z

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    :cond_6
    if-eqz p1, :cond_22

    invoke-static {p1}, Lcom/android/wm/shell/activityembedding/OplusEmbedReflectionUtils;->getPkgNameFromChange(Landroid/window/TransitionInfo$Change;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "com.android.settings"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    invoke-static {p1}, Lcom/android/wm/shell/activityembedding/OplusEmbedReflectionUtils;->getPkgNameFromChange(Landroid/window/TransitionInfo$Change;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.coloros.phonemanager"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_22

    :cond_20
    const/4 p0, 0x1

    return p0

    :cond_22
    return v0
.end method

.method public hookTaskFragmentOpenAnimation(Lcom/android/internal/policy/TransitionAnimation;Z)Landroid/view/animation/Animation;
    .registers 3

    if-eqz p2, :cond_5

    sget p0, Lcom/android/wm/shell/R$anim;->oplus_open_slide_enter:I

    goto :goto_7

    :cond_5
    sget p0, Lcom/android/wm/shell/R$anim;->oplus_open_slide_exit:I

    :goto_7
    invoke-virtual {p1, p0}, Lcom/android/internal/policy/TransitionAnimation;->loadDefaultAnimationRes(I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;->mContext:Landroid/content/Context;

    return-void
.end method

.method public isCompactWindowMode(Landroid/window/TransitionInfo;)Z
    .registers 5

    if-eqz p1, :cond_2d

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2d

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/systemui/animation/j;->a(Landroid/window/TransitionInfo;I)I

    move-result v1

    :goto_17
    if-ltz v1, :cond_2d

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    invoke-direct {p0, v2}, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;->isCompactWindowMode(Landroid/window/TransitionInfo$Change;)Z

    move-result v2

    if-eqz v2, :cond_2a

    return v0

    :cond_2a
    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    :cond_2d
    const/4 p0, 0x0

    return p0
.end method

.method public isMirageCompact(Landroid/window/TransitionInfo$Change;)Z
    .registers 3

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getStartDisplayId()I

    move-result p0

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getEndDisplayId()I

    move-result v0

    if-ne p0, v0, :cond_1e

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getEndDisplayId()I

    move-result p0

    const/16 v0, 0x2710

    if-lt p0, v0, :cond_1e

    invoke-static {p1}, Lcom/android/wm/shell/activityembedding/OplusEmbedReflectionUtils;->getWindowModeFromChange(Landroid/window/TransitionInfo$Change;)I

    move-result p0

    const/16 p1, 0x78

    if-ne p0, p1, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public isPermisstionTaskFragment(Landroid/window/TransitionInfo$Change;)Z
    .registers 3

    if-eqz p1, :cond_16

    invoke-direct {p0, p1}, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;->isCompactWindowMode(Landroid/window/TransitionInfo$Change;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object p0, p0, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;->mActivityAdjustEnabledApps:Ljava/util/List;

    invoke-static {p1}, Lcom/android/wm/shell/activityembedding/OplusEmbedReflectionUtils;->getTfComponentNameFromChange(Landroid/window/TransitionInfo$Change;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public isSettingsTaskFragment(Landroid/window/TransitionInfo;)Z
    .registers 6

    sget-boolean v0, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;->SETTINGS_CUSTON_FUNC_ENABLE:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    if-eqz p1, :cond_33

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_33

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_33

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/systemui/animation/j;->a(Landroid/window/TransitionInfo;I)I

    move-result v2

    :goto_1d
    if-ltz v2, :cond_33

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo$Change;

    invoke-direct {p0, v3}, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;->isSettingsTaskFragment(Landroid/window/TransitionInfo$Change;)Z

    move-result v3

    if-eqz v3, :cond_30

    return v0

    :cond_30
    add-int/lit8 v2, v2, -0x1

    goto :goto_1d

    :cond_33
    return v1
.end method

.method public loadSettingsTaskFragmentOpenAnimation(Landroid/window/TransitionInfo$Change;Landroid/graphics/Rect;Lcom/android/internal/policy/TransitionAnimation;F)Landroid/view/animation/Animation;
    .registers 9
    .param p1  # Landroid/window/TransitionInfo$Change;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object p0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p1}, Lcom/android/wm/shell/activityembedding/OplusEmbedReflectionUtils;->getWinConfigFromChange(Landroid/window/TransitionInfo$Change;)Landroid/app/WindowConfiguration;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    :cond_16
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v1

    invoke-static {v1}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v1

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    if-eqz v2, :cond_33

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityRecord"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_34

    :cond_33
    const/4 v2, 0x0

    :goto_34
    invoke-static {p1}, Lcom/android/wm/shell/activityembedding/OplusEmbedReflectionUtils;->getPkgNameFromChange(Landroid/window/TransitionInfo$Change;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "com.coloros.phonemanager"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p0, :cond_87

    if-nez v2, :cond_44

    if-eqz p1, :cond_87

    :cond_44
    if-eqz v2, :cond_65

    if-eqz v1, :cond_4b

    sget p1, Lcom/android/wm/shell/R$anim;->oplus_open_slide_enter:I

    goto :goto_4d

    :cond_4b
    sget p1, Lcom/android/wm/shell/R$anim;->oplus_task_fragment_activity_open_slide_exit:I

    :goto_4d
    invoke-virtual {p3, p1}, Lcom/android/internal/policy/TransitionAnimation;->loadDefaultAnimationRes(I)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-virtual {p1, p3, p0, v0, p2}, Landroid/view/animation/Animation;->initialize(IIII)V

    goto :goto_83

    :cond_65
    if-eqz v1, :cond_6a

    sget p1, Lcom/android/wm/shell/R$anim;->task_fragment_open_enter:I

    goto :goto_6c

    :cond_6a
    sget p1, Lcom/android/wm/shell/R$anim;->task_fragment_open_exit:I

    :goto_6c
    invoke-virtual {p3, p1}, Lcom/android/internal/policy/TransitionAnimation;->loadDefaultAnimationRes(I)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-virtual {p1, p3, p0, v0, p2}, Landroid/view/animation/Animation;->initialize(IIII)V

    :goto_83
    invoke-virtual {p1, p4}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    return-object p1

    :cond_87
    if-eqz p0, :cond_b1

    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b1

    if-eqz v1, :cond_94

    sget p0, Lcom/android/wm/shell/R$anim;->oplus_open_slide_enter:I

    goto :goto_96

    :cond_94
    sget p0, Lcom/android/wm/shell/R$anim;->oplus_task_fragment_activity_open_slide_exit:I

    :goto_96
    invoke-virtual {p3, p0}, Lcom/android/internal/policy/TransitionAnimation;->loadDefaultAnimationRes(I)Landroid/view/animation/Animation;

    move-result-object p0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p3

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-virtual {p0, p1, p3, v0, p2}, Landroid/view/animation/Animation;->initialize(IIII)V

    invoke-virtual {p0, p4}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    return-object p0

    :cond_b1
    new-instance p0, Landroid/view/animation/TranslateXAnimation;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Landroid/view/animation/TranslateXAnimation;-><init>(FF)V

    return-object p0
.end method

.method public needHookTaskFragmentOpenAnimation(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;)Z
    .registers 8

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_c
    if-ltz p1, :cond_26

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_23

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo$Change;

    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v3

    if-eqz v3, :cond_23

    move v2, v0

    :cond_23
    add-int/lit8 p1, p1, -0x1

    goto :goto_c

    :cond_26
    if-eqz p2, :cond_37

    invoke-static {p2}, Lcom/android/wm/shell/activityembedding/OplusEmbedReflectionUtils;->getPkgNameFromChange(Landroid/window/TransitionInfo$Change;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.coloros.phonemanager"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_37

    if-eqz v2, :cond_37

    return v0

    :cond_37
    return v1
.end method

.method public setBackdropColor(Landroid/window/TransitionInfo$Change;Landroid/view/animation/Animation;)V
    .registers 3

    if-eqz p2, :cond_29

    invoke-direct {p0, p1}, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;->isCompactWindowMode(Landroid/window/TransitionInfo$Change;)Z

    move-result p1

    if-eqz p1, :cond_29

    iget-object p0, p0, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_1f

    const p0, -0xd9d9da

    invoke-virtual {p2, p0}, Landroid/view/animation/Animation;->setBackdropColor(I)V

    goto :goto_25

    :cond_1f
    const p0, -0x232324

    invoke-virtual {p2, p0}, Landroid/view/animation/Animation;->setBackdropColor(I)V

    :goto_25
    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Landroid/view/animation/Animation;->setShowBackdrop(Z)V

    :cond_29
    return-void
.end method

.method public shouldResetCropAnimLeashInEmbedding(Landroid/window/TransitionInfo$Change;)Z
    .registers 4

    sget-boolean v0, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;->SETTINGS_CUSTON_FUNC_ENABLE:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    if-eqz p1, :cond_16

    iget-object p0, p0, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;->mActivityEmbeddingSplitsEnabledApps:Ljava/util/List;

    invoke-static {p1}, Lcom/android/wm/shell/activityembedding/OplusEmbedReflectionUtils;->getPkgNameFromChange(Landroid/window/TransitionInfo$Change;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    return v1
.end method

.method public shouldUseSnapshotAnimationForChange(Landroid/window/TransitionInfo$Change;)Z
    .registers 5
    .param p1  # Landroid/window/TransitionInfo$Change;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->isTabletDevice()Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_c

    return v0

    :cond_c
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ne v1, v2, :cond_2a

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-eq p0, p1, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :cond_2a
    :goto_2a
    return v0
.end method

.method public useDefaultActivityAnimation(Landroid/window/TransitionInfo;)Z
    .registers 6

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v0

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_5b

    invoke-virtual {v0}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_5b

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_1f

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TransitionInfo$Change;

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    if-eqz v1, :cond_3a

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityRecord"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3a

    move v0, v3

    goto :goto_3b

    :cond_3a
    move v0, v2

    :goto_3b
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;->isSettingsTaskFragment(Landroid/window/TransitionInfo;)Z

    move-result p0

    if-eqz p0, :cond_5b

    if-eqz v0, :cond_5b

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "useDefaultActivityAnimation info="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusActivityEmbeddingAnimationRunner"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_5b
    return v2
.end method
