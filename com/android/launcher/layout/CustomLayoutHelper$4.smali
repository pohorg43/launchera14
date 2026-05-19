.class Lcom/android/launcher/layout/CustomLayoutHelper$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/common/util/OnFeatureChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/layout/CustomLayoutHelper;->setOnGridLayoutXYChangedListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/layout/CustomLayoutHelper;


# direct methods
.method public constructor <init>(Lcom/android/launcher/layout/CustomLayoutHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/layout/CustomLayoutHelper$4;->this$0:Lcom/android/launcher/layout/CustomLayoutHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFeatureChanged()V
    .registers 11

    const-string v0, "CustomLayoutHelper"

    const-string/jumbo v1, "setOnGridLayoutXYChangedListener"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "HasEnterLauncher"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v5, "Layout"

    if-eqz v3, :cond_22

    const-string/jumbo p0, "setOnGridLayoutXYChangedListener: already enter launcher. do not relayout when grid changed."

    invoke-static {v5, v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_22
    sget-object v3, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v3, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v6, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    iget v7, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numShownHotseatIcons:I

    sget-object v8, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v8}, Lcom/android/common/util/AppFeatureUtils;->getGridLayoutXY()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6a

    const-string v9, "\\|"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    :try_start_42
    const-string/jumbo v9, "reset layout grid when feature changed before entering launcher."

    invoke-static {v5, v0, v9}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aget-object v4, v8, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    const/4 v4, 0x1

    aget-object v4, v8, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    iget v4, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iput v4, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numShownHotseatIcons:I
    :try_end_5d
    .catch Ljava/lang/NumberFormatException; {:try_start_42 .. :try_end_5d} :catch_5e

    goto :goto_6a

    :catch_5e
    const-string p0, "can not reset the grid property."

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput v3, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iput v6, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    iput v7, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numShownHotseatIcons:I

    return-void

    :cond_6a
    :goto_6a
    iget-object p0, p0, Lcom/android/launcher/layout/CustomLayoutHelper$4;->this$0:Lcom/android/launcher/layout/CustomLayoutHelper;

    invoke-static {p0}, Lcom/android/launcher/layout/CustomLayoutHelper;->access$300(Lcom/android/launcher/layout/CustomLayoutHelper;)V

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "layout_cellcount_x"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "layout_cellcount_y"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
