.class public Lcom/android/wm/shell/compatui/CompatUIConfiguration;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
.end annotation


# static fields
.field private static final COMPAT_UI_SHARED_PREFERENCES:Ljava/lang/String; = "dont_show_restart_dialog"

.field private static final DEFAULT_VALUE_ENABLE_LETTERBOX_REACHABILITY_EDUCATION:Z = true

.field private static final DEFAULT_VALUE_ENABLE_LETTERBOX_RESTART_DIALOG:Z = true

.field private static final HAS_SEEN_HORIZONTAL_REACHABILITY_EDUCATION_KEY_PREFIX:Ljava/lang/String; = "has_seen_horizontal_reachability_education"

.field private static final HAS_SEEN_LETTERBOX_EDUCATION_SHARED_PREFERENCES:Ljava/lang/String; = "has_seen_letterbox_education"

.field private static final HAS_SEEN_VERTICAL_REACHABILITY_EDUCATION_KEY_PREFIX:Ljava/lang/String; = "has_seen_vertical_reachability_education"

.field private static final KEY_ENABLE_LETTERBOX_REACHABILITY_EDUCATION:Ljava/lang/String; = "enable_letterbox_education_for_reachability"

.field private static final KEY_ENABLE_LETTERBOX_RESTART_DIALOG:Ljava/lang/String; = "enable_letterbox_restart_confirmation_dialog"


# instance fields
.field private final mCompatUISharedPreferences:Landroid/content/SharedPreferences;

.field private mIsLetterboxReachabilityEducationAllowed:Z

.field private mIsLetterboxRestartDialogAllowed:Z

.field private mIsReachabilityEducationEnabled:Z

.field private mIsReachabilityEducationOverrideEnabled:Z

.field private mIsRestartDialogEnabled:Z

.field private mIsRestartDialogOverrideEnabled:Z

.field private final mLetterboxEduSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;)V
    .registers 6
    .param p2  # Lcom/android/wm/shell/common/ShellExecutor;
        .annotation runtime Lcom/android/wm/shell/common/annotations/ShellMainThread;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$bool;->config_letterboxIsRestartDialogEnabled:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mIsRestartDialogEnabled:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$bool;->config_letterboxIsReachabilityEducationEnabled:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mIsReachabilityEducationEnabled:Z

    const-string/jumbo v0, "window_manager"

    const-string v1, "enable_letterbox_restart_confirmation_dialog"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mIsLetterboxRestartDialogAllowed:Z

    const-string v1, "enable_letterbox_education_for_reachability"

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mIsLetterboxReachabilityEducationAllowed:Z

    const-string v0, "app_compat"

    invoke-static {v0, p2, p0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->getCompatUISharedPreferenceName()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mCompatUISharedPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->getHasSeenLetterboxEducationSharedPreferencedName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mLetterboxEduSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method private dontShowAgainRestartKey(ILjava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string p0, "@"

    invoke-static {p2, p0, p1}, Lc0/b;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static dontShowLetterboxEduKey(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static hasSeenHorizontalReachabilityEduKey(I)Ljava/lang/String;
    .registers 2

    const-string v0, "has_seen_horizontal_reachability_education@"

    invoke-static {v0, p0}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static hasSeenVerticalReachabilityEduKey(I)Ljava/lang/String;
    .registers 2

    const-string v0, "has_seen_vertical_reachability_education@"

    invoke-static {v0, p0}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isReachabilityEducationEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mIsReachabilityEducationOverrideEnabled:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mIsReachabilityEducationEnabled:Z

    if-eqz v0, :cond_d

    iget-boolean p0, p0, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mIsLetterboxReachabilityEducationAllowed:Z

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method


# virtual methods
.method public getCompatUISharedPreferenceName()Ljava/lang/String;
    .registers 1

    const-string p0, "dont_show_restart_dialog"

    return-object p0
.end method

.method public getHasSeenLetterboxEducation(I)Z
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mLetterboxEduSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->dontShowLetterboxEduKey(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getHasSeenLetterboxEducationSharedPreferencedName()Ljava/lang/String;
    .registers 1

    const-string p0, "has_seen_letterbox_education"

    return-object p0
.end method

.method public hasSeenHorizontalReachabilityEducation(Landroid/app/TaskInfo;)Z
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mCompatUISharedPreferences:Landroid/content/SharedPreferences;

    iget p1, p1, Landroid/app/TaskInfo;->userId:I

    invoke-static {p1}, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->hasSeenHorizontalReachabilityEduKey(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public hasSeenVerticalReachabilityEducation(Landroid/app/TaskInfo;)Z
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mCompatUISharedPreferences:Landroid/content/SharedPreferences;

    iget p1, p1, Landroid/app/TaskInfo;->userId:I

    invoke-static {p1}, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->hasSeenVerticalReachabilityEduKey(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isRestartDialogEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mIsRestartDialogOverrideEnabled:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mIsRestartDialogEnabled:Z

    if-eqz v0, :cond_d

    iget-boolean p0, p0, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mIsLetterboxRestartDialogAllowed:Z

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 6

    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    const-string v1, "enable_letterbox_restart_confirmation_dialog"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    const-string/jumbo v3, "window_manager"

    if-eqz v0, :cond_16

    invoke-static {v3, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mIsLetterboxRestartDialogAllowed:Z

    :cond_16
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p1

    const-string v0, "enable_letterbox_education_for_reachability"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    invoke-static {v3, v0, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mIsLetterboxReachabilityEducationAllowed:Z

    :cond_28
    return-void
.end method

.method public setDontShowRestartDialogAgain(Landroid/app/TaskInfo;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mCompatUISharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p1, Landroid/app/TaskInfo;->userId:I

    iget-object p1, p1, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->dontShowAgainRestartKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setIsReachabilityEducationOverrideEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mIsReachabilityEducationOverrideEnabled:Z

    return-void
.end method

.method public setIsRestartDialogOverrideEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mIsRestartDialogOverrideEnabled:Z

    return-void
.end method

.method public setSeenLetterboxEducation(I)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mLetterboxEduSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {p1}, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->dontShowLetterboxEduKey(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setUserHasSeenHorizontalReachabilityEducation(Landroid/app/TaskInfo;)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mCompatUISharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    iget p1, p1, Landroid/app/TaskInfo;->userId:I

    invoke-static {p1}, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->hasSeenHorizontalReachabilityEduKey(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setUserHasSeenVerticalReachabilityEducation(Landroid/app/TaskInfo;)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mCompatUISharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    iget p1, p1, Landroid/app/TaskInfo;->userId:I

    invoke-static {p1}, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->hasSeenVerticalReachabilityEduKey(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public shouldShowReachabilityEducation(Landroid/app/TaskInfo;)Z
    .registers 3

    invoke-direct {p0}, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->isReachabilityEducationEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->hasSeenHorizontalReachabilityEducation(Landroid/app/TaskInfo;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->hasSeenVerticalReachabilityEducation(Landroid/app/TaskInfo;)Z

    move-result p0

    if-nez p0, :cond_14

    :cond_12
    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public shouldShowRestartDialogAgain(Landroid/app/TaskInfo;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mCompatUISharedPreferences:Landroid/content/SharedPreferences;

    iget v1, p1, Landroid/app/TaskInfo;->userId:I

    iget-object p1, p1, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->dontShowAgainRestartKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
