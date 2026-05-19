.class public final Lcom/android/launcher3/util/SimpleGuidPageManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ACTION_PULL_GUID:Ljava/lang/String; = "oplus.action.simple_launcher_guide"

.field public static final ADD_FOLDER_TYPE_VALUE:I = 0x1

.field public static final DRAG_ICON_TYPE_VALUE:I = 0x0

.field public static final INSTANCE:Lcom/android/launcher3/util/SimpleGuidPageManager;

.field private static final PKG_PULL_GUID:Ljava/lang/String; = "com.coloros.scenemode"

.field private static final PREF_KEY_SIMPLE_GUID_CALL_ADD_FOLDER:Ljava/lang/String; = "sp_key_simple_guid_pull_add_folder"

.field private static final PREF_KEY_SIMPLE_GUID_CALL_DRAG_ICON:Ljava/lang/String; = "sp_key_simple_guid_pull_drag"

.field private static final PREF_KEY_SIMPLE_GUID_CALL_PULL_DOWN:Ljava/lang/String; = "sp_key_simple_guid_pull_down"

.field public static final PULL_DOWN_TYPE_VALUE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SimpleGuidPageManager"

.field private static final TYPE_PULL_GUID:Ljava/lang/String; = "type"

.field private static isPageCalling:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/util/SimpleGuidPageManager;

    invoke-direct {v0}, Lcom/android/launcher3/util/SimpleGuidPageManager;-><init>()V

    sput-object v0, Lcom/android/launcher3/util/SimpleGuidPageManager;->INSTANCE:Lcom/android/launcher3/util/SimpleGuidPageManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final callPage(Landroid/content/Context;I)Z
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "SimpleGuidPageManager"

    const-string v1, "context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_c
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.coloros.scenemode"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "oplus.action.simple_launcher_guide"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_21
    .catch Landroid/content/ActivityNotFoundException; {:try_start_c .. :try_end_21} :catch_7a

    const-string/jumbo v4, "type"

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz p1, :cond_35

    if-eq p1, v6, :cond_31

    if-eq p1, v5, :cond_2d

    goto :goto_38

    :cond_2d
    :try_start_2d
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_38

    :cond_31
    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_38

    :cond_35
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_38
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sput-boolean v6, Lcom/android/launcher3/util/SimpleGuidPageManager;->isPageCalling:Z

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo v1, "sharePf.edit()"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_5c

    if-eq p1, v6, :cond_55

    if-eq p1, v5, :cond_4e

    goto :goto_62

    :cond_4e
    const-string/jumbo v1, "sp_key_simple_guid_pull_down"

    invoke-interface {p0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_62

    :cond_55
    const-string/jumbo v1, "sp_key_simple_guid_pull_add_folder"

    invoke-interface {p0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_62

    :cond_5c
    const-string/jumbo v1, "sp_key_simple_guid_pull_drag"

    invoke-interface {p0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :goto_62
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call guid page successful, type is "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_79
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2d .. :try_end_79} :catch_7a

    return v6

    :catch_7a
    const-string p0, "call guid page failed, page not found"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public static final isPageCalled(Landroid/content/Context;I)Z
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p1, :cond_23

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1b

    const/4 v2, 0x2

    if-eq p1, v2, :cond_13

    return v1

    :cond_13
    const-string/jumbo p1, "sp_key_simple_guid_pull_down"

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_1b
    const-string/jumbo p1, "sp_key_simple_guid_pull_add_folder"

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_23
    const-string/jumbo p1, "sp_key_simple_guid_pull_drag"

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final isPageCalling()Z
    .registers 1

    sget-boolean p0, Lcom/android/launcher3/util/SimpleGuidPageManager;->isPageCalling:Z

    return p0
.end method

.method public final setPageCalling(Z)V
    .registers 2

    sput-boolean p1, Lcom/android/launcher3/util/SimpleGuidPageManager;->isPageCalling:Z

    return-void
.end method
