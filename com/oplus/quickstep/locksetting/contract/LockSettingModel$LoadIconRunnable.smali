.class Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$LoadIconRunnable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoadIconRunnable"
.end annotation


# instance fields
.field private mInfo:Landroid/content/pm/LauncherActivityInfo;

.field private mListener:Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$OnIconLoadListener;

.field private mPackageName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$OnIconLoadListener;Ljava/lang/String;Landroid/content/pm/LauncherActivityInfo;)V
    .registers 5

    iput-object p1, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$LoadIconRunnable;->this$0:Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$LoadIconRunnable;->mListener:Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$OnIconLoadListener;

    iput-object p3, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$LoadIconRunnable;->mPackageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$LoadIconRunnable;->mInfo:Landroid/content/pm/LauncherActivityInfo;

    return-void
.end method

.method public static synthetic access$002(Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$LoadIconRunnable;Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$OnIconLoadListener;)Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$OnIconLoadListener;
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$LoadIconRunnable;->mListener:Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$OnIconLoadListener;

    return-object p1
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$LoadIconRunnable;->mInfo:Landroid/content/pm/LauncherActivityInfo;

    const-string v1, "LockSettingModel"

    if-eqz v0, :cond_e3

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$LoadIconRunnable;->this$0:Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;

    invoke-static {v0}, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->access$100(Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_10

    goto/16 :goto_e3

    :cond_10
    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$LoadIconRunnable;->this$0:Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;

    iget-object v0, v0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->mAppIconsMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$LoadIconRunnable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_d9

    const/4 v2, 0x0

    :try_start_1f
    iget-object v3, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$LoadIconRunnable;->this$0:Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;

    invoke-static {v3}, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->access$100(Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    if-eqz v3, :cond_48

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v3

    if-eqz v3, :cond_48

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$LoadIconRunnable;->this$0:Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;

    invoke-static {v4}, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->access$100(Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v3, v3, Lcom/android/launcher3/icons/IconCache;->sOPlusIconCacheExtV2:Lcom/android/launcher3/icons/IIconCacheExt;

    iget-object v5, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$LoadIconRunnable;->mInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-interface {v3, v5, v2}, Lcom/android/launcher3/icons/IIconCacheExt;->getIcon(Landroid/content/pm/LauncherActivityInfo;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v0, v4, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :cond_48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "run: componentName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$LoadIconRunnable;->mInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " icon = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_6a} :catch_6b

    goto :goto_86

    :catch_6b
    move-exception v0

    const-string v3, "getApplicationIcon packageName = "

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$LoadIconRunnable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_86
    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$LoadIconRunnable;->mInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v3, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$LoadIconRunnable;->this$0:Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;

    invoke-static {v3}, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->access$100(Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/RecentsModel;

    invoke-virtual {v1}, Lcom/android/quickstep/RecentsModel;->getIconCache()Lcom/android/quickstep/TaskIconCache;

    move-result-object v1

    iget-object v3, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$LoadIconRunnable;->this$0:Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;

    invoke-static {v3}, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->access$200(Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;)Lcom/android/launcher3/icons/IconProvider;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/launcher3/icons/IconProvider;->getIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$LoadIconRunnable;->mInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v0

    invoke-virtual {v1, v3, v4, v2, v0}, Lcom/android/quickstep/TaskIconCache;->getBitmapInfo(Landroid/graphics/drawable/Drawable;IIZ)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$LoadIconRunnable;->this$0:Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;

    invoke-static {v1}, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->access$100(Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/icons/BitmapInfo;->newIcon(Landroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$LoadIconRunnable;->this$0:Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;

    invoke-static {v1}, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->access$100(Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/common/util/IconUtils;->getDrawableForListIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$LoadIconRunnable;->this$0:Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;

    iget-object v1, v1, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->mAppIconsMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$LoadIconRunnable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d9
    iget-object v1, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$LoadIconRunnable;->this$0:Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;

    iget-object v2, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$LoadIconRunnable;->mPackageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$LoadIconRunnable;->mListener:Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$OnIconLoadListener;

    invoke-static {v1, v2, v0, p0}, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->access$300(Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$OnIconLoadListener;)V

    return-void

    :cond_e3
    :goto_e3
    const-string p0, "loadApplicationIcon -- info||mContext is null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
