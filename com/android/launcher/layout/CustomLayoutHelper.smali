.class public Lcom/android/launcher/layout/CustomLayoutHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/layout/CustomLayoutHelper$ScanFinishObserver;,
        Lcom/android/launcher/layout/CustomLayoutHelper$ActionNotifyFeatureObserver;
    }
.end annotation


# static fields
.field private static final ACTION_PACKAGE_NON_REBOOT_SCANNED_FINISHED:Ljava/lang/String; = "com.oplus.action.non_reboot_package_scanned_finished"

.field private static final ACTION_SCAN_FINISH:Ljava/lang/String; = "cota_app_scan_finish"

.field private static final ACTION_SCAN_START:Ljava/lang/String; = "cota_app_scan_start"

.field private static final ACTION_VALUE_MOUNTED:Ljava/lang/String; = "cotaMounted"

.field private static final ACTION_VALUE_SIM_SWITCH_FIRST:Ljava/lang/String; = "simSwitchFirst"

.field private static final BOOLEAN_VALUE:Ljava/lang/String; = "bool"

.field private static final CUSTOMIZE_LAYOUT_FILE_DIR:Ljava/lang/String; = "/etc/default_workspace.xml"

.field private static final CUSTOMIZE_LAYOUT_FILE_DIR_NEW:Ljava/lang/String; = "/etc/launcher/default_workspace.xml"

.field private static final DEFAULT_WORKSPACE:Ljava/lang/String; = "default_workspace"

.field private static final DEFAULT_WORKSPACE_MODEL:Ljava/lang/String; = "default_workspace_%s"

.field private static final DEFAULT_WORKSPACE_SIMPLE:Ljava/lang/String; = "default_workspace_simple"

.field private static final DEFAULT_WORKSPACE_SIMPLE_MODEL:Ljava/lang/String; = "default_workspace_simple_%s"

.field private static final EXTRA_LAYOUT:Ljava/lang/String; = "extra_workspace"

.field private static final EXTRA_LAYOUT_FILE_DIR:Ljava/lang/String; = "/etc/launcher/extra_workspace.xml"

.field private static final FEATURE_DISABLE_LOAD_EXTRA_AFTER_ENTER_LAUNCHER:Ljava/lang/String; = "com.android.launcher.disable_load_extra_workspace_after_enter_launcher"

.field private static final IS_FORCE_UPDATE:Ljava/lang/String; = "is_force_update"

.field private static final LAST_RO_BUILD_MY_COMPANY_CUSTOM_VERSON_OTA:Ljava/lang/String; = "launcher_key_last_my_company_custom_ota_version"

.field private static final LAUNCHER_LAYOUT_PACKAGE:Ljava/lang/String; = "com.android.launcher.layout"

.field private static final LAUNCHER_RESOURCES_PACKAGE_LEGACY:Ljava/lang/String;

.field private static final MY_BIGBALL_EXTRA_LAYOUT_FILE:Ljava/lang/String;

.field private static final MY_CARRIER_CUSTOMIZE_LAYOUT_FILE:Ljava/lang/String;

.field private static final MY_CARRIER_CUSTOMIZE_LAYOUT_FILE_NEW:Ljava/lang/String;

.field private static final MY_CARRIER_EXTRA_LAYOUT_FILE:Ljava/lang/String;

.field private static final MY_COMPANY_CUSTOMIZE_LAYOUT_FILE:Ljava/lang/String;

.field private static final MY_COMPANY_CUSTOMIZE_LAYOUT_FILE_NEW:Ljava/lang/String;

.field private static final MY_COMPANY_EXTRA_LAYOUT_FILE:Ljava/lang/String;

.field private static final OLD_EXTRA_LAYOUT_FILE_DIR:Ljava/lang/String; = "etc/extra_workspace.xml"

.field public static final OLD_MY_CARRIER_EXTRA_LAYOUT_FILE:Ljava/lang/String;

.field public static final PREF_PREFIX_PAI_EXTRA_WORKSPACE:Ljava/lang/String; = "pai@"

.field private static final RO_BUILD_MY_COMPANY_CUSTOM_VERSON_OTA:Ljava/lang/String; = "ro.oplus.image.my_company.version"

.field private static final RO_BUILD_MY_COMPANY_CUSTOM_VERSON_OTA_DEFAULT:Ljava/lang/String; = "version_stub"

.field private static final TAG:Ljava/lang/String; = "CustomLayoutHelper"

.field private static volatile sInstance:Lcom/android/launcher/layout/CustomLayoutHelper;


# instance fields
.field private mFilterLauncherIcon:Z

.field private final mFilterPackagesForExtraLayout:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mHasReceivedScanEvent:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLauncherLayoutPackage:Ljava/lang/String;

.field private mLoadLayoutFromCotaNonReboot:Z

.field private mNonRebootCotaLoadLayoutRunning:Z

.field private mNonRebootPackageScannedReceiver:Landroid/content/BroadcastReceiver;

.field private final mObserver:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/layout/CustomLayoutHelper$ScanFinishObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mOnFeatureActionObserver:Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureActionObserver;

.field private mScanObserverDisable:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyCarrierDirectory()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyCarrierDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "etc/extra_workspace.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    :cond_20
    const-string v0, "/my_carrieretc/extra_workspace.xml"

    :goto_22
    sput-object v0, Lcom/android/launcher/layout/CustomLayoutHelper;->OLD_MY_CARRIER_EXTRA_LAYOUT_FILE:Ljava/lang/String;

    const v0, 0x7f120024

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/layout/CustomLayoutHelper;->LAUNCHER_RESOURCES_PACKAGE_LEGACY:Ljava/lang/String;

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyCompanyDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "/etc/default_workspace.xml"

    if-eqz v0, :cond_4d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyCompanyDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4f

    :cond_4d
    const-string v0, "/my_company/etc/default_workspace.xml"

    :goto_4f
    sput-object v0, Lcom/android/launcher/layout/CustomLayoutHelper;->MY_COMPANY_CUSTOMIZE_LAYOUT_FILE:Ljava/lang/String;

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyCarrierDirectory()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_6f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyCarrierDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_71

    :cond_6f
    const-string v0, "/my_carrier/etc/default_workspace.xml"

    :goto_71
    sput-object v0, Lcom/android/launcher/layout/CustomLayoutHelper;->MY_CARRIER_CUSTOMIZE_LAYOUT_FILE:Ljava/lang/String;

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyCompanyDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "/etc/launcher/default_workspace.xml"

    if-eqz v0, :cond_93

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyCompanyDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_95

    :cond_93
    const-string v0, "/my_company/etc/launcher/default_workspace.xml"

    :goto_95
    sput-object v0, Lcom/android/launcher/layout/CustomLayoutHelper;->MY_COMPANY_CUSTOMIZE_LAYOUT_FILE_NEW:Ljava/lang/String;

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyCarrierDirectory()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_b5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyCarrierDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b7

    :cond_b5
    const-string v0, "/my_carrier/etc/launcher/default_workspace.xml"

    :goto_b7
    sput-object v0, Lcom/android/launcher/layout/CustomLayoutHelper;->MY_CARRIER_CUSTOMIZE_LAYOUT_FILE_NEW:Ljava/lang/String;

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyCarrierDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "/etc/launcher/extra_workspace.xml"

    if-eqz v0, :cond_d9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyCarrierDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_db

    :cond_d9
    const-string v0, "/my_carrier/etc/launcher/extra_workspace.xml"

    :goto_db
    sput-object v0, Lcom/android/launcher/layout/CustomLayoutHelper;->MY_CARRIER_EXTRA_LAYOUT_FILE:Ljava/lang/String;

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyBigballDirectory()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_fb

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyBigballDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_fd

    :cond_fb
    const-string v0, "/my_bigball/etc/launcher/extra_workspace.xml"

    :goto_fd
    sput-object v0, Lcom/android/launcher/layout/CustomLayoutHelper;->MY_BIGBALL_EXTRA_LAYOUT_FILE:Ljava/lang/String;

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyCompanyDirectory()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_11d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyCompanyDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_11f

    :cond_11d
    const-string v0, "/my_company/etc/launcher/extra_workspace.xml"

    :goto_11f
    sput-object v0, Lcom/android/launcher/layout/CustomLayoutHelper;->MY_COMPANY_EXTRA_LAYOUT_FILE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/layout/CustomLayoutHelper;->mLauncherLayoutPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher/layout/CustomLayoutHelper;->mNonRebootPackageScannedReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher/layout/CustomLayoutHelper;->mNonRebootCotaLoadLayoutRunning:Z

    iput-boolean v1, p0, Lcom/android/launcher/layout/CustomLayoutHelper;->mLoadLayoutFromCotaNonReboot:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher/layout/CustomLayoutHelper;->mObserver:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/launcher/layout/CustomLayoutHelper;->mFilterLauncherIcon:Z

    iput-boolean v1, p0, Lcom/android/launcher/layout/CustomLayoutHelper;->mScanObserverDisable:Z

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/launcher/layout/CustomLayoutHelper;->mHasReceivedScanEvent:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher/layout/CustomLayoutHelper;->mFilterPackagesForExtraLayout:Ljava/util/List;

    new-instance v2, Lcom/android/launcher/layout/CustomLayoutHelper$ActionNotifyFeatureObserver;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher/layout/CustomLayoutHelper$ActionNotifyFeatureObserver;-><init>(Lcom/android/launcher/layout/CustomLayoutHelper;Lcom/android/launcher/layout/CustomLayoutHelper$1;)V

    iput-object v2, p0, Lcom/android/launcher/layout/CustomLayoutHelper;->mOnFeatureActionObserver:Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureActionObserver;

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->getFilterPackagesForExtraList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_40

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/layout/CustomLayoutHelper;->mFilterLauncherIcon:Z

    goto :goto_43

    :cond_40
    invoke-direct {p0}, Lcom/android/launcher/layout/CustomLayoutHelper;->setOnExtraFilterPackageChangedListener()V

    :goto_43
    return-void
.end method

.method public static synthetic a(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/XmlPullParser;
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/layout/CustomLayoutHelper;->lambda$getFromLauncherLayout$1(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/launcher/layout/CustomLayoutHelper;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/layout/CustomLayoutHelper;->mScanObserverDisable:Z

    return p0
.end method

.method public static synthetic access$102(Lcom/android/launcher/layout/CustomLayoutHelper;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/layout/CustomLayoutHelper;->mNonRebootCotaLoadLayoutRunning:Z

    return p1
.end method

.method public static synthetic access$1100(Lcom/android/launcher/layout/CustomLayoutHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/layout/CustomLayoutHelper;->loadCotaLayoutIfNeeded()V

    return-void
.end method

.method public static synthetic access$1200(Lcom/android/launcher/layout/CustomLayoutHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/layout/CustomLayoutHelper;->executeScanEventObserver()V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/launcher/layout/CustomLayoutHelper;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/layout/CustomLayoutHelper;->setCompanyVersion(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/launcher/layout/CustomLayoutHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/layout/CustomLayoutHelper;->resetLayout()V

    return-void
.end method

.method public static synthetic access$402(Lcom/android/launcher/layout/CustomLayoutHelper;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/layout/CustomLayoutHelper;->mLoadLayoutFromCotaNonReboot:Z

    return p1
.end method

.method public static synthetic access$502(Lcom/android/launcher/layout/CustomLayoutHelper;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/layout/CustomLayoutHelper;->mNonRebootPackageScannedReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method public static synthetic access$600(Lcom/android/launcher/layout/CustomLayoutHelper;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/layout/CustomLayoutHelper;->mFilterPackagesForExtraLayout:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$702(Lcom/android/launcher/layout/CustomLayoutHelper;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/layout/CustomLayoutHelper;->mFilterLauncherIcon:Z

    return p1
.end method

.method public static synthetic access$800(Lcom/android/launcher/layout/CustomLayoutHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/layout/CustomLayoutHelper;->mHasReceivedScanEvent:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/launcher/layout/CustomLayoutHelper;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/layout/CustomLayoutHelper;->mObserver:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic b(Landroid/content/res/Resources;I)Lorg/xmlpull/v1/XmlPullParser;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/layout/CustomLayoutHelper;->lambda$getExtraFromPai$3(Landroid/content/res/Resources;I)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/layout/CustomLayoutHelper;->lambda$loadCotaLayoutIfNeeded$8(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;)V

    return-void
.end method

.method public static synthetic d(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/XmlPullParser;
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/layout/CustomLayoutHelper;->lambda$getFromCustomizePartition$4(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p0

    return-object p0
.end method

.method private defaultWorkspaceBySimAlreadyLoaded()Z
    .registers 4

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->getDefaultWorkspaceBySim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_12

    return v2

    :cond_12
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_27

    const-string p0, "Layout"

    const-string v0, "CustomLayoutHelper"

    const-string v1, "default worksapce by sim not exisit, do not reset layout."

    invoke-static {p0, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_27
    const-string v1, "default_workspace_by_sim"

    const-string v2, ""

    invoke-static {p0, v1, v2}, Lcom/android/common/util/LauncherSharedPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/XmlPullParser;
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/layout/CustomLayoutHelper;->lambda$getLayoutByFile$7(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p0

    return-object p0
.end method

.method private executeScanEventObserver()V
    .registers 4

    const-string v0, "Layout"

    const-string v1, "CustomLayoutHelper"

    const-string v2, "executeFeatureObserver"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/layout/CustomLayoutHelper;->mObserver:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_c
    iget-object v1, p0, Lcom/android/launcher/layout/CustomLayoutHelper;->mObserver:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2f

    iget-object v1, p0, Lcom/android/launcher/layout/CustomLayoutHelper;->mObserver:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/layout/CustomLayoutHelper$ScanFinishObserver;

    invoke-interface {v2}, Lcom/android/launcher/layout/CustomLayoutHelper$ScanFinishObserver;->onFinish()V

    goto :goto_1a

    :cond_2a
    iget-object p0, p0, Lcom/android/launcher/layout/CustomLayoutHelper;->mObserver:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_2f
    monitor-exit v0

    return-void

    :catchall_31
    move-exception p0

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_c .. :try_end_33} :catchall_31

    throw p0
.end method

.method public static synthetic f(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/XmlPullParser;
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/layout/CustomLayoutHelper;->lambda$getFromLauncherLayout$0(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/layout/CustomLayoutHelper;->lambda$onExtraWorkspacePathChanged$5(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;)V

    return-void
.end method

.method private getCotaApps()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p0, "CustomLayoutHelper"

    :try_start_2
    const-string v0, "android.operator.OplusOperatorManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v4, "getCotaAppPackageNameList"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "Layout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCotaApps: size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_40

    const-string/jumbo v3, "null"

    goto :goto_48

    :cond_40
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_52
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_52} :catch_75
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_52} :catch_6f
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_52} :catch_69
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_52} :catch_53

    return-object v0

    :catch_53
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCotaAppPackageNameList error, e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7a

    :catch_69
    const-string v0, "getCotaAppPackageNameList can not access."

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7a

    :catch_6f
    const-string v0, "getCotaAppPackageNameList error."

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7a

    :catch_75
    const-string v0, "getCotaAppPackageNameList not found."

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7a
    const/4 p0, 0x0

    return-object p0
.end method

.method private getExternalLayoutFileName(Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 8

    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_5
    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_b} :catch_c

    goto :goto_11

    :catch_c
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    move-object p1, v0

    :goto_11
    const-string v1, "CustomLayoutHelper"

    const-string v2, "Layout"

    if-nez p1, :cond_1d

    const-string p0, "getExternalLayoutFileName no assets found"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1d
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_38

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/launcher/layout/CustomLayoutHelper;->getProjectId()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v5, v4

    const-string p0, "default_workspace_simple_%s"

    invoke-static {p0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_46

    :cond_38
    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/launcher/layout/CustomLayoutHelper;->getProjectId()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v5, v4

    const-string p0, "default_workspace_%s"

    invoke-static {p0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_46
    const-string v4, ".xml"

    invoke-static {p0, v4}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_61

    if-eqz v3, :cond_5b

    const-string p0, "default_workspace_simple"

    goto :goto_5d

    :cond_5b
    const-string p0, "default_workspace"

    :goto_5d
    invoke-static {p0, v4}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_61
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_71

    const-string p1, "getExternalLayoutFileName workspaceFile "

    invoke-static {p1, p0, v2, v1}, Lcom/android/common/util/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_71
    return-object v0
.end method

.method private getExternalLayoutResId(Landroid/content/Context;)I
    .registers 9

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result v0

    const-string v1, "CustomLayoutHelper"

    const-string v2, "Layout"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string/jumbo v5, "xml"

    if-eqz v0, :cond_31

    const-string v6, "getExternalLayoutResId simple model layout"

    invoke-static {v2, v1, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/launcher/layout/CustomLayoutHelper;->getProjectId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    const-string v3, "default_workspace_simple_%s"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher/layout/CustomLayoutHelper;->mLauncherLayoutPackage:Ljava/lang/String;

    invoke-virtual {p1, v3, v5, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_45

    :cond_31
    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/launcher/layout/CustomLayoutHelper;->getProjectId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    const-string v3, "default_workspace_%s"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher/layout/CustomLayoutHelper;->mLauncherLayoutPackage:Ljava/lang/String;

    invoke-virtual {p1, v3, v5, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    :goto_45
    if-nez v3, :cond_5f

    if-eqz v0, :cond_57

    const-string v0, "getExternalLayoutResId in simple mode"

    invoke-static {v2, v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/layout/CustomLayoutHelper;->mLauncherLayoutPackage:Ljava/lang/String;

    const-string v0, "default_workspace_simple"

    invoke-virtual {p1, v0, v5, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_5f

    :cond_57
    iget-object p0, p0, Lcom/android/launcher/layout/CustomLayoutHelper;->mLauncherLayoutPackage:Ljava/lang/String;

    const-string v0, "default_workspace"

    invoke-virtual {p1, v0, v5, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    :cond_5f
    :goto_5f
    return v3
.end method

.method private getExtraFromCarrier(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)Lcom/android/launcher3/ExtraLayoutParser;
    .registers 15

    const/4 p0, 0x0

    const-string v0, "Layout"

    const-string v1, "CustomLayoutHelper"

    if-nez p1, :cond_d

    const-string p1, "getExtraFromCarrier context is null "

    invoke-static {v0, v1, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_d
    invoke-static {}, Lcom/android/launcher/layout/CustomLayoutHelper;->getPreferredExtraLayoutFile()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_19

    const-string p1, "getExtraFromCarrier extra_workspace.xml not found"

    invoke-static {v0, v1, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_19
    :try_start_19
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1e} :catch_7c

    :try_start_1e
    new-instance v4, Ljava/lang/String;

    invoke-static {v3}, Lcom/android/launcher3/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v5

    sget-object v6, Lk7/b;->a:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_38

    const-string p1, "getExtraFromCarrier content is empty"

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_1e .. :try_end_34} :catchall_72

    :try_start_34
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_37} :catch_7c

    return-object p0

    :cond_38
    :try_start_38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    new-instance v6, Ljava/io/StringReader;

    invoke-direct {v6, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    const-string v4, "getExtraFromCarrier user success"

    invoke-static {v0, v1, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v4, v2}, Lcom/android/launcher/layout/LayoutPrefsUtils;->setLoadedExtraLayoutPath(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;Ljava/lang/String;)V

    new-instance v2, Lcom/android/launcher3/ExtraLayoutParser;

    new-instance v9, Lcom/android/launcher/layout/d;

    invoke-direct {v9, v5}, Lcom/android/launcher/layout/d;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {p3}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getNewScreenId()I

    move-result v10

    move-object v4, v2

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v4 .. v10}, Lcom/android/launcher3/ExtraLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;Ljava/util/function/Supplier;I)V
    :try_end_6e
    .catchall {:try_start_38 .. :try_end_6e} :catchall_72

    :try_start_6e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_71} :catch_7c

    return-object v2

    :catchall_72
    move-exception p1

    :try_start_73
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_77

    goto :goto_7b

    :catchall_77
    move-exception p2

    :try_start_78
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7b
    throw p1
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7c} :catch_7c

    :catch_7c
    move-exception p1

    const-string p2, "getExtraFromCarrier failed "

    invoke-static {v0, v1, p2, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method private getExtraFromLauncherLayout(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)Lcom/android/launcher3/ExtraLayoutParser;
    .registers 15

    iget-object v0, p0, Lcom/android/launcher/layout/CustomLayoutHelper;->mLauncherLayoutPackage:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/layout/CustomLayoutHelper;->getOtherPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "CustomLayoutHelper"

    const-string v3, "Layout"

    if-nez v0, :cond_13

    const-string p0, "getExtraFromLauncherLayout otherPackageContext is null "

    invoke-static {v3, v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_13
    invoke-direct {p0, p1, v0}, Lcom/android/launcher/layout/CustomLayoutHelper;->getLayoutPackageInfo(Landroid/content/Context;Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-nez v4, :cond_1f

    const-string p0, "getExtraFromLauncherLayout info is null"

    invoke-static {v3, v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1f
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object p0, p0, Lcom/android/launcher/layout/CustomLayoutHelper;->mLauncherLayoutPackage:Ljava/lang/String;

    const-string v0, "extra_workspace"

    const-string/jumbo v4, "xml"

    invoke-virtual {v8, v0, v4, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_45

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getExtraFromLauncherLayout layout res not found, resId "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_45
    new-instance p0, Lcom/android/launcher3/ExtraLayoutParser;

    invoke-virtual {p3}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getNewScreenId()I

    move-result v10

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v4 .. v10}, Lcom/android/launcher3/ExtraLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;II)V

    return-object p0
.end method

.method private getExtraFromPai(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)Lcom/android/launcher3/ExtraLayoutParser;
    .registers 14

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.autoinstalls.config.action.PLAY_AUTO_INSTALL"

    invoke-static {v0, p0}, Lcom/android/launcher3/util/PackageManagerHelper;->findSystemApk(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/util/Pair;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_e

    return-object v0

    :cond_e
    iget-object v1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroid/content/res/Resources;

    const-string v2, "extra_workspace"

    const-string/jumbo v3, "xml"

    invoke-virtual {p0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v2, "CustomLayoutHelper"

    const-string v3, "Layout"

    if-eqz v1, :cond_5f

    const-string v0, "loading extra_workspace.xml from pai"

    invoke-static {v3, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pai@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/android/launcher/layout/LayoutPrefsUtils;->setLoadedExtraLayoutPath(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/ExtraLayoutParser;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-instance v8, Lcom/android/launcher/layout/c;

    const/4 v2, 0x0

    invoke-direct {v8, p0, v1, v2}, Lcom/android/launcher/layout/c;-><init>(Landroid/content/res/Resources;II)V

    invoke-virtual {p3}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getNewScreenId()I

    move-result v9

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v3 .. v9}, Lcom/android/launcher3/ExtraLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;Ljava/util/function/Supplier;I)V

    return-object v0

    :cond_5f
    const-string p0, "can\'t find extra_workspace.xml from PAI."

    invoke-static {v3, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getInstance()Lcom/android/launcher/layout/CustomLayoutHelper;
    .registers 2

    sget-object v0, Lcom/android/launcher/layout/CustomLayoutHelper;->sInstance:Lcom/android/launcher/layout/CustomLayoutHelper;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/launcher/layout/CustomLayoutHelper;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/launcher/layout/CustomLayoutHelper;->sInstance:Lcom/android/launcher/layout/CustomLayoutHelper;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/launcher/layout/CustomLayoutHelper;

    invoke-direct {v1}, Lcom/android/launcher/layout/CustomLayoutHelper;-><init>()V

    sput-object v1, Lcom/android/launcher/layout/CustomLayoutHelper;->sInstance:Lcom/android/launcher/layout/CustomLayoutHelper;

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
    sget-object v0, Lcom/android/launcher/layout/CustomLayoutHelper;->sInstance:Lcom/android/launcher/layout/CustomLayoutHelper;

    return-object v0
.end method

.method private getLayoutByFile(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Ljava/io/File;)Lcom/android/launcher3/AutoInstallsLayout;
    .registers 15

    const-string p0, "getLayoutByFile failed to close inputStream"

    const/4 v0, 0x0

    const-string v1, "Layout"

    const-string v2, "CustomLayoutHelper"

    if-nez p1, :cond_f

    :try_start_9
    const-string p1, "getLayoutByFile context is null "

    invoke-static {v1, v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_f
    if-nez p4, :cond_17

    const-string p1, "getLayoutByFile LayoutFile is null "

    invoke-static {v1, v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_17
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1c} :catch_6c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_6a

    :try_start_1c
    new-instance p4, Ljava/lang/String;

    invoke-static {v3}, Lcom/android/launcher3/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v4

    sget-object v5, Lk7/b;->a:Ljava/nio/charset/Charset;

    invoke-direct {p4, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3a

    const-string p1, "getLayoutByFile content is empty"

    invoke-static {v1, v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_32} :catch_68
    .catchall {:try_start_1c .. :try_end_32} :catchall_65

    :try_start_32
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_39

    :catch_36
    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_39
    return-object v0

    :cond_3a
    :try_start_3a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, p4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    const-string p4, "getLayoutByFile user success"

    invoke-static {v1, v2, p4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p4, Lcom/android/launcher3/DefaultLayoutParser;

    new-instance v9, Lcom/android/launcher/layout/f;

    invoke-direct {v9, v4}, Lcom/android/launcher/layout/f;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    move-object v4, p4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher3/DefaultLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;Ljava/util/function/Supplier;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_5d} :catch_68
    .catchall {:try_start_3a .. :try_end_5d} :catchall_65

    :try_start_5d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_60} :catch_61

    goto :goto_64

    :catch_61
    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_64
    return-object p4

    :catchall_65
    move-exception p1

    move-object v0, v3

    goto :goto_8c

    :catch_68
    move-exception p1

    goto :goto_6e

    :catchall_6a
    move-exception p1

    goto :goto_8c

    :catch_6c
    move-exception p1

    move-object v3, v0

    :goto_6e
    :try_start_6e
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getLayoutByFile failed "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_82
    .catchall {:try_start_6e .. :try_end_82} :catchall_65

    if-eqz v3, :cond_8b

    :try_start_84
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_87} :catch_88

    goto :goto_8b

    :catch_88
    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8b
    :goto_8b
    return-object v0

    :goto_8c
    if-eqz v0, :cond_95

    :try_start_8e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_91} :catch_92

    goto :goto_95

    :catch_92
    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_95
    :goto_95
    throw p1
.end method

.method private getLayoutPackageInfo(Landroid/content/Context;Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .registers 6

    const/4 p0, 0x0

    const-string v0, "Layout"

    const-string v1, "CustomLayoutHelper"

    if-nez p1, :cond_d

    const-string p1, "getLayoutPackageInfo context is null "

    invoke-static {v0, v1, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_d
    if-nez p2, :cond_15

    const-string p1, "getLayoutPackageInfo otherPackageContext is null "

    invoke-static {v0, v1, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_15
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    :try_start_19
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getLayoutPackageInfo "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_19 .. :try_end_36} :catch_37

    goto :goto_4c

    :catch_37
    move-exception p1

    const-string p2, "getLayoutPackageInfo failed e = "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4c
    return-object p0
.end method

.method private getOtherPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .registers 3

    const/4 p0, 0x3

    :try_start_1
    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    const-string p0, "CustomLayoutHelper"

    const-string p1, "getOtherPackageContext erro"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_e
    return-object p0
.end method

.method private getPartitionCustomizeLayoutFile()Ljava/io/File;
    .registers 7

    new-instance p0, Ljava/io/File;

    sget-object v0, Lcom/android/launcher/layout/CustomLayoutHelper;->MY_COMPANY_CUSTOMIZE_LAYOUT_FILE_NEW:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "getPartitionCustomizeLayoutFile path: "

    const-string v3, "CustomLayoutHelper"

    const-string v4, "Layout"

    if-eqz v1, :cond_17

    invoke-static {v2, v0, v4, v3}, Lcom/android/common/util/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_17
    new-instance p0, Ljava/io/File;

    sget-object v0, Lcom/android/launcher/layout/CustomLayoutHelper;->MY_COMPANY_CUSTOMIZE_LAYOUT_FILE:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-static {v2, v0, v4, v3}, Lcom/android/common/util/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_28
    new-instance p0, Ljava/io/File;

    sget-object v0, Lcom/android/launcher/layout/CustomLayoutHelper;->MY_CARRIER_CUSTOMIZE_LAYOUT_FILE_NEW:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v5, 0x0

    if-eqz v1, :cond_46

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isCotaLoaded()Z

    move-result v1

    if-nez v1, :cond_42

    const-string p0, "getPartitionCustomizeLayoutFile no feature return null"

    invoke-static {v4, v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    :cond_42
    invoke-static {v2, v0, v4, v3}, Lcom/android/common/util/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_46
    new-instance p0, Ljava/io/File;

    sget-object v0, Lcom/android/launcher/layout/CustomLayoutHelper;->MY_CARRIER_CUSTOMIZE_LAYOUT_FILE:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-static {v2, v0, v4, v3}, Lcom/android/common/util/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_57
    return-object v5
.end method

.method public static getPreferredExtraLayoutFile()Ljava/io/File;
    .registers 6

    invoke-static {}, Lcom/android/launcher/layout/CustomLayoutHelper;->setFilterLauncherIcon()V

    sget-object v0, Lcom/android/launcher/layout/CustomLayoutHelper;->sInstance:Lcom/android/launcher/layout/CustomLayoutHelper;

    iget-boolean v0, v0, Lcom/android/launcher/layout/CustomLayoutHelper;->mFilterLauncherIcon:Z

    const-string v1, "CustomLayoutHelper"

    const-string v2, "Layout"

    if-nez v0, :cond_33

    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v3}, Lcom/android/common/util/AppFeatureUtils;->getExtraWorkspacePathFromFeature()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_33

    const-string v3, "loading extra_workspace.xml from app feature: "

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_33
    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/android/launcher/layout/CustomLayoutHelper;->MY_COMPANY_EXTRA_LAYOUT_FILE:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_55

    const-string v3, "loading extra_workspace.xml from my_company: "

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_55
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isCommonCota()Z

    move-result v0

    const-string v3, "loading extra_workspace.xml from my_zaiti: "

    const-string v4, "loading extra_workspace.xml from my_bigball: "

    if-eqz v0, :cond_c1

    new-instance v0, Ljava/io/File;

    sget-object v5, Lcom/android/launcher/layout/CustomLayoutHelper;->MY_CARRIER_EXTRA_LAYOUT_FILE:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_7f

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_7f
    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/android/launcher/layout/CustomLayoutHelper;->MY_BIGBALL_EXTRA_LAYOUT_FILE:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_9f

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_9f
    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/android/launcher/layout/CustomLayoutHelper;->OLD_MY_CARRIER_EXTRA_LAYOUT_FILE:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_101

    const-string v3, "loading extra_workspace.xml from old my_zaiti: "

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_c1
    new-instance v0, Ljava/io/File;

    sget-object v5, Lcom/android/launcher/layout/CustomLayoutHelper;->MY_BIGBALL_EXTRA_LAYOUT_FILE:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_e1

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_e1
    new-instance v0, Ljava/io/File;

    sget-object v4, Lcom/android/launcher/layout/CustomLayoutHelper;->MY_CARRIER_EXTRA_LAYOUT_FILE:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_101

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_101
    const/4 v0, 0x0

    return-object v0
.end method

.method private getProjectId()Ljava/lang/String;
    .registers 1

    sget-object p0, Lcom/android/common/config/VersionInfo;->PROJECT_ID:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/XmlPullParser;
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/layout/CustomLayoutHelper;->lambda$getExtraFromCarrier$2(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/layout/CustomLayoutHelper;->lambda$resetLayout$6(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;)V

    return-void
.end method

.method private isCotaLayoutUpdate(Landroid/content/Context;)Z
    .registers 10

    invoke-virtual {p0, p1}, Lcom/android/launcher/layout/CustomLayoutHelper;->inferLauncherLayoutPackage(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/launcher/layout/CustomLayoutHelper;->mLauncherLayoutPackage:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_9

    return v1

    :cond_9
    invoke-direct {p0, p1, v0}, Lcom/android/launcher/layout/CustomLayoutHelper;->getOtherPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "CustomLayoutHelper"

    const-string v3, "Layout"

    if-nez v0, :cond_19

    const-string p0, "isLayoutUpdate no pg"

    invoke-static {v3, v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_19
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher/layout/CustomLayoutHelper;->mLauncherLayoutPackage:Ljava/lang/String;

    const-string v6, "is_force_update"

    const-string v7, "bool"

    invoke-virtual {v4, v6, v7, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_3d

    invoke-direct {p0, p1}, Lcom/android/launcher/layout/CustomLayoutHelper;->needUpdateAfterCota(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3d

    const-string p0, "isLayoutUpdate has update but current no need to force update"

    invoke-static {v3, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3d
    invoke-direct {p0, p1, v0}, Lcom/android/launcher/layout/CustomLayoutHelper;->getLayoutPackageInfo(Landroid/content/Context;Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-nez v4, :cond_49

    const-string p0, "isLayoutUpdate info is null"

    invoke-static {v3, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_49
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v5, :cond_53

    const-string p0, "isLayoutUpdate versionName is null"

    invoke-static {v3, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_53
    iget v5, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    if-gez v5, :cond_63

    const-string p0, "isLayoutUpdate versionCode is "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget p1, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p0, p1, v3, v2}, Lcom/android/common/util/g1;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_63
    invoke-direct {p0, v0}, Lcom/android/launcher/layout/CustomLayoutHelper;->getExternalLayoutResId(Landroid/content/Context;)I

    move-result v4

    if-gtz v4, :cond_79

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher/layout/CustomLayoutHelper;->getExternalLayoutFileName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_79

    const-string p0, "isLayoutUpdate no layout res found, resId "

    invoke-static {p0, v4, v3, v2}, Lcom/android/launcher/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_79
    invoke-static {p1}, Lcom/android/launcher/layout/LayoutPrefsUtils;->getLauncherLayoutVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/android/launcher/layout/LayoutPrefsUtils;->getLauncherLayoutVersion(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_90

    if-gez v0, :cond_8a

    goto :goto_90

    :cond_8a
    const-string p0, "isLayoutUpdate already updated "

    invoke-static {p0, v0, v3, v2}, Lcom/android/launcher/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_90
    :goto_90
    const-string v4, "isLayoutUpdate not update yet ,lun "

    const-string v5, " luv = "

    invoke-static {v4, p0, v5, v0}, Lcom/android/launcher/badge/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->isResetByOobe()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_b6

    invoke-static {p1}, Lcom/android/launcher/operators/OperatorsUtils;->isNeedReloadAfterLauncher(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_b0

    const-string p0, "isCotaLayoutUpdate : vodafoneCotaCustomize isInsertCorrectSimCard"

    invoke-static {v3, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_b0
    const-string p0, "isCotaLayoutUpdate : vodafoneCotaCustomize not InsertCorrectSimCard "

    invoke-static {v3, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_b6
    return v0
.end method

.method private isCotaLayoutUpdate2(Landroid/content/Context;)Z
    .registers 9

    invoke-static {p1}, Lcom/android/launcher/layout/LayoutPrefsUtils;->getLauncherCotaLayoutVersion(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x0

    const-string v1, "CustomLayoutHelper"

    const-string v2, "Layout"

    if-lez p0, :cond_11

    const-string p1, "isCotaLayoutUpdate2 isLayoutUpdate already updated "

    invoke-static {p1, p0, v2, v1}, Lcom/android/launcher/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_11
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isCotaLoaded()Z

    move-result p0

    if-nez p0, :cond_1d

    const-string p0, "isCotaLayoutUpdate2 no feature return false"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1d
    invoke-static {p1}, Lcom/android/launcher/layout/LayoutPrefsUtils;->getLauncherLayoutVersion(Landroid/content/Context;)I

    move-result p0

    invoke-static {p1}, Lcom/android/launcher/layout/LayoutPrefsUtils;->isCotaNeedReload(Landroid/content/Context;)Z

    move-result v3

    invoke-static {p1}, Lcom/android/launcher/operators/OperatorsUtils;->isNeedReloadAfterLauncher(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5d

    if-lez p0, :cond_2e

    goto :goto_5d

    :cond_2e
    new-instance p1, Ljava/io/File;

    sget-object v4, Lcom/android/launcher/layout/CustomLayoutHelper;->MY_CARRIER_CUSTOMIZE_LAYOUT_FILE_NEW:Ljava/lang/String;

    invoke-direct {p1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    const-string v6, "isCotaLayoutUpdate2 path: "

    if-eqz v3, :cond_46

    if-gez p0, :cond_46

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_46

    invoke-static {v6, v4, v2, v1}, Lcom/android/common/util/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_46
    new-instance p0, Ljava/io/File;

    sget-object p1, Lcom/android/launcher/layout/CustomLayoutHelper;->MY_CARRIER_CUSTOMIZE_LAYOUT_FILE:Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_57

    invoke-static {v6, p1, v2, v1}, Lcom/android/common/util/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_57
    const-string p0, "isCotaLayoutUpdate2  return default values false"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_5d
    :goto_5d
    const-string p0, "isCotaLayoutUpdate2 isNeedReloadAfterLauncher return false"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private isCotaLayoutUpdateT(Landroid/content/Context;)Z
    .registers 8

    invoke-static {p1}, Lcom/android/launcher/layout/LayoutPrefsUtils;->getLauncherLayoutVersion(Landroid/content/Context;)I

    move-result v0

    invoke-static {p1}, Lcom/android/launcher/layout/LayoutPrefsUtils;->isCotaNeedReload(Landroid/content/Context;)Z

    move-result v1

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isCotaLoaded()Z

    move-result v2

    const/4 v3, 0x1

    const-string v4, "CustomLayoutHelper"

    const-string v5, "Layout"

    if-eqz v2, :cond_21

    invoke-direct {p0, p1}, Lcom/android/launcher/layout/CustomLayoutHelper;->needUpdateAfterCota(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_21

    if-gez v0, :cond_21

    const-string p0, "isCotaLayoutUpdateT cota default return true"

    invoke-static {v5, v4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_21
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isCotaReload()Z

    move-result p0

    if-eqz p0, :cond_31

    if-eqz v1, :cond_31

    if-gez v0, :cond_31

    const-string p0, "isCotaLayoutUpdateT cota reload return true"

    invoke-static {v5, v4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_31
    const-string p0, "isCotaLayoutUpdateT return default values false"

    invoke-static {v5, v4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private isMyCompanyCustomizeVersionUpdated(Landroid/content/Context;)Z
    .registers 8

    const/4 p0, 0x0

    const-string v0, "CustomLayoutHelper"

    const-string v1, "Layout"

    if-nez p1, :cond_d

    const-string p1, "isMyCompanyCustomizeLayoutUpdated context is null to return"

    invoke-static {v1, v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return p0

    :cond_d
    sget-object v2, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v2}, Lcom/android/common/util/AppFeatureUtils;->isCompanyWebCustomizeVersion()Z

    move-result v2

    if-nez v2, :cond_1b

    const-string p1, "isMyCompanyCustomizeLayoutUpdated not company web customize version"

    invoke-static {v1, v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return p0

    :cond_1b
    const-string/jumbo v2, "ro.oplus.image.my_company.version"

    const-string/jumbo v3, "version_stub"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_67

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    goto :goto_67

    :cond_32
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "launcher_key_last_my_company_custom_ota_version"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4a

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_49

    goto :goto_4a

    :cond_49
    return p0

    :cond_4a
    :goto_4a
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v4, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isMyCompanyCustomizeLayoutUpdated: true,to reload layout!!! curVersion:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_67
    :goto_67
    const-string p1, "isMyCompanyCustomizeLayoutUpdated no version updated"

    invoke-static {v1, v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method private static synthetic lambda$getExtraFromCarrier$2(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/XmlPullParser;
    .registers 1

    return-object p0
.end method

.method private static synthetic lambda$getExtraFromPai$3(Landroid/content/res/Resources;I)Lorg/xmlpull/v1/XmlPullParser;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getFromCustomizePartition$4(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/XmlPullParser;
    .registers 1

    return-object p0
.end method

.method private static synthetic lambda$getFromLauncherLayout$0(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/XmlPullParser;
    .registers 1

    return-object p0
.end method

.method private static synthetic lambda$getFromLauncherLayout$1(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/XmlPullParser;
    .registers 1

    return-object p0
.end method

.method private static synthetic lambda$getLayoutByFile$7(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/XmlPullParser;
    .registers 1

    return-object p0
.end method

.method private static synthetic lambda$loadCotaLayoutIfNeeded$8(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;)V
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "create_empty_db"

    invoke-static {p0, v0}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    return-void
.end method

.method private static synthetic lambda$onExtraWorkspacePathChanged$5(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;)V
    .registers 4

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/launcher/layout/LayoutPrefsUtils;->setExtraLayoutLoadedFlag(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;Z)V

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    return-void
.end method

.method private static synthetic lambda$resetLayout$6(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;)V
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "create_empty_db"

    invoke-static {p0, v0}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    return-void
.end method

.method private loadCotaLayoutIfNeeded()V
    .registers 6

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isCotaReload()Z

    move-result v1

    const-string v2, "CustomLayoutHelper"

    const-string v3, "Layout"

    const/4 v4, 0x1

    if-eqz v1, :cond_48

    const-string/jumbo v1, "scan finish received to reload cota layout."

    invoke-static {v3, v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->getCarrierWidget()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/launcher/bean/OperatorsWidgetData;

    invoke-direct {v2, v1}, Lcom/android/launcher/bean/OperatorsWidgetData;-><init>(Ljava/util/List;)V

    invoke-virtual {v2}, Lcom/android/launcher/bean/OperatorsWidgetData;->hasOperatorWidgetConfig()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-static {}, Lcom/android/launcher/operators/AppWidgetReloadHelper;->getInstance()Lcom/android/launcher/operators/AppWidgetReloadHelper;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/launcher/operators/AppWidgetReloadHelper;->registerPackageAddedReceiver(Lcom/android/launcher/bean/OperatorsWidgetData;)V

    :cond_2d
    const-string/jumbo v1, "non_reboot_cota_layout_reloaded"

    invoke-static {v0, v1, v4}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v1

    new-instance v2, Lcom/android/launcher/layout/b;

    invoke-direct {v2, v0, v1, v4}, Lcom/android/launcher/layout/b;-><init>(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;I)V

    const-wide/16 v0, 0x0

    invoke-static {v2, v0, v1}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)V

    iput-boolean v4, p0, Lcom/android/launcher/layout/CustomLayoutHelper;->mLoadLayoutFromCotaNonReboot:Z

    goto :goto_64

    :cond_48
    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isExtraWorkspaceloadForCotaNotReboot()Z

    move-result v1

    if-eqz v1, :cond_5f

    const-string/jumbo v1, "non_reboot_cota_extra_workspace_loaded"

    invoke-static {v0, v1, v4}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/launcher/layout/CustomLayoutHelper;->onExtraWorkspacePathChanged()V

    const-string p0, "load extra workspace for cota non reboot."

    invoke-static {v3, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_64

    :cond_5f
    const-string p0, "have no cota reload feature."

    invoke-static {v3, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_64
    return-void
.end method

.method private needUpdateAfterCota(Landroid/content/Context;)Z
    .registers 4

    invoke-static {p1}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "HasEnterLauncher"

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    const-string p1, "isLayoutUpdate  needUpdateAfterCota = "

    const-string v0, "Layout"

    const-string v1, "CustomLayoutHelper"

    invoke-static {p1, p0, v0, v1}, Lu/a;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method private resetLayout()V
    .registers 5

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "hasInitMtnLockLayout"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string p0, "Layout"

    const-string v0, "CustomLayoutHelper"

    const-string/jumbo v1, "update version from S, skip to reload launcher layout."

    invoke-static {p0, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_18
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    new-instance v1, Lcom/android/launcher/layout/h;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Lcom/android/launcher/layout/h;-><init>(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;I)V

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private resetLoadLayoutFromCotaNonReboot()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/layout/CustomLayoutHelper;->mLoadLayoutFromCotaNonReboot:Z

    return-void
.end method

.method private setCompanyVersion(Landroid/content/Context;)V
    .registers 3

    const-string/jumbo p0, "ro.oplus.image.my_company.version"

    const-string/jumbo v0, "version_stub"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "launcher_key_last_my_company_custom_ota_version"

    invoke-static {p1, v0, p0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static setFilterLauncherIcon()V
    .registers 2

    const-string/jumbo v0, "sys.app.scan.finish"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/launcher/layout/CustomLayoutHelper;->sInstance:Lcom/android/launcher/layout/CustomLayoutHelper;

    iget-object v1, v1, Lcom/android/launcher/layout/CustomLayoutHelper;->mHasReceivedScanEvent:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1a

    const-string/jumbo v1, "simSwitchFirst"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_1a
    sget-object v0, Lcom/android/launcher/layout/CustomLayoutHelper;->sInstance:Lcom/android/launcher/layout/CustomLayoutHelper;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher/layout/CustomLayoutHelper;->mFilterLauncherIcon:Z

    :cond_1f
    return-void
.end method

.method private setOnExtraFilterPackageChangedListener()V
    .registers 4

    const-string v0, "Layout"

    const-string v1, "CustomLayoutHelper"

    const-string/jumbo v2, "setting extra filter package change listener."

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    new-instance v1, Lcom/android/launcher/layout/CustomLayoutHelper$2;

    invoke-direct {v1, p0}, Lcom/android/launcher/layout/CustomLayoutHelper$2;-><init>(Lcom/android/launcher/layout/CustomLayoutHelper;)V

    invoke-virtual {v0, v1}, Lcom/android/common/util/AppFeatureUtils;->setExtraFilterPackageChangedListener(Lcom/android/common/util/OnFeatureChangedListener;)V

    return-void
.end method

.method private shouldSkipRegisterReceiver(Landroid/content/Context;)Z
    .registers 7

    invoke-static {p1}, Lcom/android/common/util/AppFeatureUtils;->isCompanyVersion(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "CustomLayoutHelper"

    const-string v1, "Layout"

    const/4 v2, 0x0

    if-eqz p0, :cond_11

    const-string p0, "company version, do not clear observer."

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_11
    const-string/jumbo p0, "non_reboot_cota_layout_reloaded"

    invoke-static {p1, p0, v2}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    const/4 v3, 0x1

    if-nez p0, :cond_57

    invoke-static {p1}, Lcom/android/launcher/layout/LayoutPrefsUtils;->getLauncherCotaLayoutVersion(Landroid/content/Context;)I

    move-result p0

    if-lez p0, :cond_22

    goto :goto_57

    :cond_22
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object p0

    const-string/jumbo v4, "non_reboot_cota_extra_workspace_loaded"

    invoke-static {p1, v4, v2}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_51

    invoke-static {p1, p0}, Lcom/android/launcher/layout/LayoutPrefsUtils;->getLoadedExtraLayoutPath(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_44

    invoke-static {p1, p0}, Lcom/android/launcher/layout/LayoutPrefsUtils;->getExtraLayoutFlag(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Z

    move-result p0

    if-eqz p0, :cond_44

    goto :goto_51

    :cond_44
    invoke-static {p1}, Lcom/android/launcher/layout/LayoutPrefsUtils;->getLauncherLayoutVersion(Landroid/content/Context;)I

    move-result p0

    if-lez p0, :cond_50

    const-string p0, "already trigger load cota LauncherLayout lastVersionCode"

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_50
    return v2

    :cond_51
    :goto_51
    const-string p0, "already trigger load extra_workspace.xml for non reboot cota, don\'t register it again."

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_57
    :goto_57
    const-string p0, "already trigger the cota reload event or cota loaded. don\'t register it again."

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method private unregisterCotaAppScanFinishObserver()V
    .registers 4

    const-string v0, "Layout"

    const-string v1, "CustomLayoutHelper"

    const-string/jumbo v2, "unregisterCotaAppScanFinishObserver"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/layout/CustomLayoutHelper;->mOnFeatureActionObserver:Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureActionObserver;

    invoke-virtual {v0, p0}, Lcom/oplus/content/OplusFeatureConfigManager;->unregisterFeatureActionObserver(Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureActionObserver;)Z

    return-void
.end method


# virtual methods
.method public checkIfNeedLoadDefaultWorkspaceBySim()V
    .registers 4

    invoke-direct {p0}, Lcom/android/launcher/layout/CustomLayoutHelper;->defaultWorkspaceBySimAlreadyLoaded()Z

    move-result v0

    if-nez v0, :cond_27

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isDefaultBySimBefore()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "HasEnterLauncher"

    invoke-static {v0, v2, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_30

    invoke-direct {p0}, Lcom/android/launcher/layout/CustomLayoutHelper;->resetLayout()V

    goto :goto_30

    :cond_27
    invoke-direct {p0}, Lcom/android/launcher/layout/CustomLayoutHelper;->defaultWorkspaceBySimAlreadyLoaded()Z

    move-result v0

    if-nez v0, :cond_30

    invoke-direct {p0}, Lcom/android/launcher/layout/CustomLayoutHelper;->resetLayout()V

    :cond_30
    :goto_30
    return-void
.end method

.method public checkNewLauncherLayoutUpdate(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0, p2}, Lcom/android/launcher/layout/CustomLayoutHelper;->isCotaLayoutUpdateT(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-direct {p0, p2}, Lcom/android/launcher/layout/CustomLayoutHelper;->isCotaLayoutUpdate2(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-direct {p0, p2}, Lcom/android/launcher/layout/CustomLayoutHelper;->isMyCompanyCustomizeVersionUpdated(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-direct {p0, p2}, Lcom/android/launcher/layout/CustomLayoutHelper;->isCotaLayoutUpdate(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3f

    :cond_18
    const-string p0, "Layout"

    const-string v0, "CustomLayoutHelper"

    const-string v1, "checkNewLauncherLayoutUpdate  "

    invoke-static {p0, v0, v1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->createEmptyDBAllMode(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {p2}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_3f

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "layout_cellcount_x"

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "layout_cellcount_y"

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_3f
    return-void
.end method

.method public getDefaultWorkspaceBySim(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)Lcom/android/launcher3/AutoInstallsLayout;
    .registers 8

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->getDefaultWorkspaceBySim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "CustomLayoutHelper"

    const-string v3, "Layout"

    if-eqz v1, :cond_17

    const-string p0, "getDefaultWorkspaceBySim: path not define."

    invoke-static {v3, v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_17
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/launcher/layout/CustomLayoutHelper;->getLayoutByFile(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Ljava/io/File;)Lcom/android/launcher3/AutoInstallsLayout;

    move-result-object p0

    if-eqz p0, :cond_3c

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "setting default_workspace path:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, v2, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "default_workspace_by_sim"

    invoke-static {p1, p2, v0}, Lcom/android/common/util/LauncherSharedPrefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    return-object p0
.end method

.method public getExtraLayout(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)Lcom/android/launcher3/ExtraLayoutParser;
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/layout/CustomLayoutHelper;->getExtraFromPai(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)Lcom/android/launcher3/ExtraLayoutParser;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/layout/CustomLayoutHelper;->getExtraFromCarrier(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)Lcom/android/launcher3/ExtraLayoutParser;

    move-result-object p0

    return-object p0
.end method

.method public getFromCustomizePartition(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)Lcom/android/launcher3/AutoInstallsLayout;
    .registers 15

    const-string v0, "getFromCustomizePartition failed to close inputStream"

    const/4 v1, 0x0

    const-string v2, "Layout"

    const-string v3, "CustomLayoutHelper"

    if-nez p1, :cond_f

    :try_start_9
    const-string p0, "getFromCustomizePartition context is null "

    invoke-static {v2, v3, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_f
    invoke-direct {p0}, Lcom/android/launcher/layout/CustomLayoutHelper;->getPartitionCustomizeLayoutFile()Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1b

    const-string p0, "getFromCustomizePartition LayoutFile is null "

    invoke-static {v2, v3, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1b
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_20} :catch_93
    .catchall {:try_start_9 .. :try_end_20} :catchall_91

    :try_start_20
    new-instance p0, Ljava/lang/String;

    invoke-static {v4}, Lcom/android/launcher3/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v5

    sget-object v6, Lk7/b;->a:Ljava/nio/charset/Charset;

    invoke-direct {p0, v5, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3e

    const-string p0, "getFromCustomizePartition content is empty"

    invoke-static {v2, v3, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_36} :catch_8f
    .catchall {:try_start_20 .. :try_end_36} :catchall_b3

    :try_start_36
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_3d

    :catch_3a
    invoke-static {v2, v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3d
    return-object v1

    :cond_3e
    :try_start_3e
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    new-instance v6, Ljava/io/StringReader;

    invoke-direct {v6, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    const-string p0, "getFromCustomizePartition user success"

    invoke-static {v2, v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-static {p1, p0}, Lcom/android/launcher/layout/LayoutPrefsUtils;->setLauncherCotaLayoutVersion(Landroid/content/Context;I)V

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isCotaReload()Z

    move-result p0

    if-eqz p0, :cond_61

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/android/launcher/layout/LayoutPrefsUtils;->setCotaNeedReload(Landroid/content/Context;Z)V

    :cond_61
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LayoutPrefsUtils.getLauncherCotaLayoutVersion :"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/launcher/layout/LayoutPrefsUtils;->getLauncherCotaLayoutVersion(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/android/launcher3/DefaultLayoutParser;

    new-instance v10, Lcom/android/launcher/folder/download/model/a;

    invoke-direct {v10, v5}, Lcom/android/launcher/folder/download/model/a;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher3/DefaultLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;Ljava/util/function/Supplier;)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_87} :catch_8f
    .catchall {:try_start_3e .. :try_end_87} :catchall_b3

    :try_start_87
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8a} :catch_8b

    goto :goto_8e

    :catch_8b
    invoke-static {v2, v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_8e
    return-object p0

    :catch_8f
    move-exception p0

    goto :goto_95

    :catchall_91
    move-exception p0

    goto :goto_b5

    :catch_93
    move-exception p0

    move-object v4, v1

    :goto_95
    :try_start_95
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getFromCustomizePartition failed "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a9
    .catchall {:try_start_95 .. :try_end_a9} :catchall_b3

    if-eqz v4, :cond_b2

    :try_start_ab
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_ae} :catch_af

    goto :goto_b2

    :catch_af
    invoke-static {v2, v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b2
    :goto_b2
    return-object v1

    :catchall_b3
    move-exception p0

    move-object v1, v4

    :goto_b5
    if-eqz v1, :cond_be

    :try_start_b7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_ba} :catch_bb

    goto :goto_be

    :catch_bb
    invoke-static {v2, v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_be
    :goto_be
    throw p0
.end method

.method public getFromLauncherLayout(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)Lcom/android/launcher3/AutoInstallsLayout;
    .registers 13

    const/4 v0, 0x0

    const-string v1, "Layout"

    const-string v2, "CustomLayoutHelper"

    if-nez p1, :cond_d

    const-string p0, "getFromLauncherLayout context is null "

    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_d
    iget-object v3, p0, Lcom/android/launcher/layout/CustomLayoutHelper;->mLauncherLayoutPackage:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual {p0, p1}, Lcom/android/launcher/layout/CustomLayoutHelper;->inferLauncherLayoutPackage(Landroid/content/Context;)V

    :cond_18
    iget-object v3, p0, Lcom/android/launcher/layout/CustomLayoutHelper;->mLauncherLayoutPackage:Ljava/lang/String;

    invoke-direct {p0, p1, v3}, Lcom/android/launcher/layout/CustomLayoutHelper;->getOtherPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_26

    const-string p0, "getFromLauncherLayout otherPackageContext is null "

    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_26
    invoke-direct {p0, p1, v3}, Lcom/android/launcher/layout/CustomLayoutHelper;->getLayoutPackageInfo(Landroid/content/Context;Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-nez v4, :cond_32

    const-string p0, "getFromLauncherLayout info is null"

    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_32
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {p0, v3}, Lcom/android/launcher/layout/CustomLayoutHelper;->getExternalLayoutResId(Landroid/content/Context;)I

    move-result v8

    const-string v3, "getFromLauncherLayout versionCode: "

    if-eqz v8, :cond_9c

    const-string v5, "getFromLauncherLayout user success, id = "

    const-string v6, ",layoutName = "

    invoke-static {v5, v8, v6}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v5}, Lcom/android/common/util/AppFeatureUtils;->isResetByOobe()Z

    move-result v5

    if-eqz v5, :cond_7f

    invoke-static {p1}, Lcom/android/launcher/operators/OperatorsUtils;->isNeedReloadAfterLauncher(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_9c

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget v0, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p0, v0, v1, v2}, Lcom/android/common/util/g1;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget p0, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p1, p0}, Lcom/android/launcher/layout/LayoutPrefsUtils;->setLauncherLayoutVersion(Landroid/content/Context;I)V

    iget-object p0, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/android/launcher/layout/LayoutPrefsUtils;->setLauncherLayoutVersionName(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p0, Lcom/android/launcher3/DefaultLayoutParser;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/launcher3/DefaultLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;I)V

    return-object p0

    :cond_7f
    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget v0, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p0, v0, v1, v2}, Lcom/android/common/util/g1;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget p0, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p1, p0}, Lcom/android/launcher/layout/LayoutPrefsUtils;->setLauncherLayoutVersion(Landroid/content/Context;I)V

    iget-object p0, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/android/launcher/layout/LayoutPrefsUtils;->setLauncherLayoutVersionName(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p0, Lcom/android/launcher3/DefaultLayoutParser;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/launcher3/DefaultLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;I)V

    return-object p0

    :cond_9c
    invoke-virtual {v7}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-direct {p0, v7}, Lcom/android/launcher/layout/CustomLayoutHelper;->getExternalLayoutFileName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_ac

    const-string p0, "getFromLauncherLayout no layout in assets"

    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_ac
    :try_start_ac
    invoke-virtual {v5, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_b0} :catch_162

    :try_start_b0
    new-instance v5, Ljava/lang/String;

    invoke-static {p0}, Lcom/android/launcher3/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v6

    sget-object v8, Lk7/b;->a:Ljava/nio/charset/Charset;

    invoke-direct {v5, v6, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_cc

    const-string p1, "getFromLauncherLayout content is empty"

    invoke-static {v1, v2, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c6
    .catchall {:try_start_b0 .. :try_end_c6} :catchall_156

    if-eqz p0, :cond_cb

    :try_start_c8
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_cb} :catch_162

    :cond_cb
    return-object v0

    :cond_cc
    :try_start_cc
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    new-instance v8, Ljava/io/StringReader;

    invoke-direct {v8, v5}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    const-string v5, "getFromLauncherLayout user success "

    invoke-static {v1, v2, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v5}, Lcom/android/common/util/AppFeatureUtils;->isResetByOobe()Z

    move-result v5

    if-eqz v5, :cond_123

    invoke-static {p1}, Lcom/android/launcher/operators/OperatorsUtils;->isNeedReloadAfterLauncher(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_11d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p1, v1}, Lcom/android/launcher/layout/LayoutPrefsUtils;->setLauncherLayoutVersion(Landroid/content/Context;I)V

    iget-object v1, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/android/launcher/layout/LayoutPrefsUtils;->setLauncherLayoutVersionName(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/android/launcher3/DefaultLayoutParser;

    new-instance v8, Lcom/android/launcher/layout/e;

    invoke-direct {v8, v6}, Lcom/android/launcher/layout/e;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/launcher3/DefaultLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;Ljava/util/function/Supplier;)V
    :try_end_117
    .catchall {:try_start_cc .. :try_end_117} :catchall_156

    if-eqz p0, :cond_11c

    :try_start_119
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_11c
    return-object v1

    :cond_11d
    if-eqz p0, :cond_168

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_122
    .catch Ljava/lang/Exception; {:try_start_119 .. :try_end_122} :catch_162

    goto :goto_168

    :cond_123
    :try_start_123
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p1, v1}, Lcom/android/launcher/layout/LayoutPrefsUtils;->setLauncherLayoutVersion(Landroid/content/Context;I)V

    iget-object v1, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/android/launcher/layout/LayoutPrefsUtils;->setLauncherLayoutVersionName(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/android/launcher3/DefaultLayoutParser;

    new-instance v8, Lcom/android/launcher/layout/g;

    const/4 v3, 0x0

    invoke-direct {v8, v6, v3}, Lcom/android/launcher/layout/g;-><init>(Lorg/xmlpull/v1/XmlPullParser;I)V

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/launcher3/DefaultLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;Ljava/util/function/Supplier;)V
    :try_end_150
    .catchall {:try_start_123 .. :try_end_150} :catchall_156

    if-eqz p0, :cond_155

    :try_start_152
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_155
    .catch Ljava/lang/Exception; {:try_start_152 .. :try_end_155} :catch_162

    :cond_155
    return-object v1

    :catchall_156
    move-exception p1

    if-eqz p0, :cond_161

    :try_start_159
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_15c
    .catchall {:try_start_159 .. :try_end_15c} :catchall_15d

    goto :goto_161

    :catchall_15d
    move-exception p0

    :try_start_15e
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_161
    :goto_161
    throw p1
    :try_end_162
    .catch Ljava/lang/Exception; {:try_start_15e .. :try_end_162} :catch_162

    :catch_162
    move-exception p0

    const-string p1, "getFromLauncherLayout failed "

    invoke-static {p1, p0, v2}, Lcom/android/common/config/m;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_168
    :goto_168
    return-object v0
.end method

.method public getLauncherLayoutPackage()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/layout/CustomLayoutHelper;->mLauncherLayoutPackage:Ljava/lang/String;

    return-object p0
.end method

.method public inferLauncherLayoutPackage(Landroid/content/Context;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/layout/CustomLayoutHelper;->mLauncherLayoutPackage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const-string v0, "com.android.launcher.layout"

    invoke-static {p1, v0}, Lcom/android/common/util/PackageUtils;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    iput-object v0, p0, Lcom/android/launcher/layout/CustomLayoutHelper;->mLauncherLayoutPackage:Ljava/lang/String;

    goto :goto_24

    :cond_14
    sget-object v0, Lcom/android/launcher/layout/CustomLayoutHelper;->LAUNCHER_RESOURCES_PACKAGE_LEGACY:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_24

    invoke-static {p1, v0}, Lcom/android/common/util/PackageUtils;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_24

    iput-object v0, p0, Lcom/android/launcher/layout/CustomLayoutHelper;->mLauncherLayoutPackage:Ljava/lang/String;

    :cond_24
    :goto_24
    const-string p1, "inferLauncherLayoutPackage: "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher/layout/CustomLayoutHelper;->mLauncherLayoutPackage:Ljava/lang/String;

    const-string v0, "Layout"

    const-string v1, "CustomLayoutHelper"

    invoke-static {p1, p0, v0, v1}, Lcom/android/launcher/badge/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadExtraWorkspaceAfterEnterLauncherDisabled()Z
    .registers 4

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.android.launcher.disable_load_extra_workspace_after_enter_launcher"

    invoke-static {v0, v1}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;->isFeatureSupport(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    invoke-static {p0}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "HasEnterLauncher"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 v1, 0x1

    :cond_1e
    const-string p0, "loadExtraWorkspaceAfterEnterLauncherDisabled: "

    const-string v0, "Layout"

    const-string v2, "CustomLayoutHelper"

    invoke-static {p0, v1, v0, v2}, Lu/a;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public loadLayoutFromCotaNonReboot()Z
    .registers 5

    const-string v0, "loadLayoutFromCotaNonReboot: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher/layout/CustomLayoutHelper;->mLoadLayoutFromCotaNonReboot:Z

    const-string v2, "Layout"

    const-string v3, "CustomLayoutHelper"

    invoke-static {v0, v1, v2, v3}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/launcher/layout/CustomLayoutHelper;->mLoadLayoutFromCotaNonReboot:Z

    return p0
.end method

.method public needUpdateLayoutAfterCota(Landroid/content/Context;)Z
    .registers 4

    invoke-static {p1}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "HasEnterLauncher"

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    const-string p1, "  needUpdateLayoutAfterCota = "

    const-string v0, "Layout"

    const-string v1, "CustomLayoutHelper"

    invoke-static {p1, p0, v0, v1}, Lu/a;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public onExtraWorkspacePathChanged()V
    .registers 5

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    new-instance v1, Lcom/android/launcher/layout/b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/android/launcher/layout/b;-><init>(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;I)V

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onFinishBindWorkspace()V
    .registers 4

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->notifyCotaScanWithObserver()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/android/launcher/layout/CustomLayoutHelper;->registerCotaNonRebootPackageScannedFinishReceiver()V

    iput-boolean v1, p0, Lcom/android/launcher/layout/CustomLayoutHelper;->mScanObserverDisable:Z

    goto :goto_24

    :cond_d
    invoke-direct {p0}, Lcom/android/launcher/layout/CustomLayoutHelper;->resetLoadLayoutFromCotaNonReboot()V

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher/layout/CustomLayoutHelper;->shouldSkipRegisterReceiver(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "CustomLayoutHelper"

    const-string/jumbo v2, "need not response for scan observer"

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/launcher/layout/CustomLayoutHelper;->mScanObserverDisable:Z

    :cond_24
    :goto_24
    invoke-virtual {p0}, Lcom/android/launcher/layout/CustomLayoutHelper;->registerCotaAppScanFinishObserver()V

    return-void
.end method

.method public onLauncherDestroy()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher/layout/CustomLayoutHelper;->unregisterCotaNonRebootPackageScannedFinishReceiver()V

    invoke-direct {p0}, Lcom/android/launcher/layout/CustomLayoutHelper;->unregisterCotaAppScanFinishObserver()V

    return-void
.end method

.method public packageFilterForExtraLayout(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/layout/CustomLayoutHelper;->mFilterPackagesForExtraLayout:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string/jumbo v0, "packageFilterForExtraLayout "

    const-string v1, " filter flag: "

    invoke-static {v0, p1, v1}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/launcher/layout/CustomLayoutHelper;->mFilterLauncherIcon:Z

    const-string v1, "CustomLayoutHelper"

    invoke-static {p1, v0, v1}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/launcher/layout/CustomLayoutHelper;->mFilterLauncherIcon:Z

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0
.end method

.method public registerCotaAppScanFinishObserver()V
    .registers 4

    const-string v0, "Layout"

    const-string v1, "CustomLayoutHelper"

    const-string/jumbo v2, "registerCotaAppScanFinishObserver"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/layout/CustomLayoutHelper;->mOnFeatureActionObserver:Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureActionObserver;

    invoke-virtual {v0, p0}, Lcom/oplus/content/OplusFeatureConfigManager;->registerFeatureActionObserver(Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureActionObserver;)Z

    return-void
.end method

.method public registerCotaNonRebootPackageScannedFinishReceiver()V
    .registers 9

    const-string v0, "Layout"

    const-string v1, "CustomLayoutHelper"

    const-string/jumbo v2, "registerCotaNonRebootPackageScannedFinishReceiver"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/launcher/layout/CustomLayoutHelper;->mNonRebootCotaLoadLayoutRunning:Z

    if-nez v2, :cond_19

    iget-object v2, p0, Lcom/android/launcher/layout/CustomLayoutHelper;->mNonRebootPackageScannedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_19

    const-string/jumbo p0, "non-reboot receiver already register, do not register cota receiver."

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_19
    invoke-direct {p0}, Lcom/android/launcher/layout/CustomLayoutHelper;->resetLoadLayoutFromCotaNonReboot()V

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/launcher/layout/CustomLayoutHelper;->shouldSkipRegisterReceiver(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2c

    const-string p0, "do not registerCotaNonRebootPackageScannedFinishReceiver"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2c
    const-string/jumbo v3, "register a receiver for non-reboot cota."

    invoke-static {v0, v1, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string v0, "com.oplus.action.non_reboot_package_scanned_finished"

    invoke-direct {v4, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/android/launcher/layout/CustomLayoutHelper$1;

    invoke-direct {v3, p0}, Lcom/android/launcher/layout/CustomLayoutHelper$1;-><init>(Lcom/android/launcher/layout/CustomLayoutHelper;)V

    iput-object v3, p0, Lcom/android/launcher/layout/CustomLayoutHelper;->mNonRebootPackageScannedReceiver:Landroid/content/BroadcastReceiver;

    const/4 v6, 0x0

    const/4 v7, 0x2

    const-string/jumbo v5, "oplus.permission.OPLUS_COMPONENT_SAFE"

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method

.method public removeAppsIfNeeded(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/launcher/layout/CustomLayoutHelper;->getCotaApps()Ljava/util/List;

    move-result-object v0

    const-string v1, "CustomLayoutHelper"

    const-string v2, "Layout"

    if-eqz v0, :cond_4f

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_4f

    :cond_11
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1a
    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1a

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_34
    const-string v0, "Removing not cota apps size = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, p1}, Lcom/android/launcher/layout/CustomLayoutHelper;->removeCotaAppToWorkspaceInBlacklist(Ljava/util/List;)V

    return-void

    :cond_4f
    :goto_4f
    const-string/jumbo p0, "no cota apps."

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeCotaAppToWorkspaceInBlacklist(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->getCotaAppAddToWorkspaceBlacklist()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_36

    :cond_14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_32
    invoke-interface {p1, p0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-void

    :cond_36
    :goto_36
    const-string p0, "Layout"

    const-string p1, "CustomLayoutHelper"

    const-string/jumbo v0, "no apps in blacklist"

    invoke-static {p0, p1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public resetExtraLoadedFlag(Landroid/content/Context;)V
    .registers 4

    if-eqz p1, :cond_5e

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resetExtraLoadedFlag when create empty database: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomLayoutHelper"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loaded_extra_layout_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/launcher/layout/LayoutPrefsUtils;->removeKey(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extra_layout_loading_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/launcher/layout/LayoutPrefsUtils;->removeKey(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "parse_extra_layout_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/launcher/layout/LayoutPrefsUtils;->removeKey(Landroid/content/Context;Ljava/lang/String;)V

    :cond_5e
    return-void
.end method

.method public setOnExtraWorkspacePathChangedListener()V
    .registers 4

    const-string v0, "Layout"

    const-string v1, "CustomLayoutHelper"

    const-string/jumbo v2, "setting extra workspace change listener."

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    new-instance v1, Lcom/android/launcher/layout/CustomLayoutHelper$3;

    invoke-direct {v1, p0}, Lcom/android/launcher/layout/CustomLayoutHelper$3;-><init>(Lcom/android/launcher/layout/CustomLayoutHelper;)V

    invoke-virtual {v0, v1}, Lcom/android/common/util/AppFeatureUtils;->setExtraWorkspaceChangedListener(Lcom/android/common/util/OnFeatureChangedListener;)V

    return-void
.end method

.method public setOnGridLayoutXYChangedListener()V
    .registers 3

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    new-instance v1, Lcom/android/launcher/layout/CustomLayoutHelper$4;

    invoke-direct {v1, p0}, Lcom/android/launcher/layout/CustomLayoutHelper$4;-><init>(Lcom/android/launcher/layout/CustomLayoutHelper;)V

    invoke-virtual {v0, v1}, Lcom/android/common/util/AppFeatureUtils;->setGridLayoutXYChangedListener(Lcom/android/common/util/OnFeatureChangedListener;)V

    return-void
.end method

.method public setShouldAddCotaAppToWorkspaceVersion(Landroid/content/Context;)V
    .registers 5

    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->getCotaAppAddToWorkspaceVersion()I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cota add apps to workspace version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Layout"

    const-string v2, "CustomLayoutHelper"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cota_app_to_workspace_version"

    invoke-static {p1, v0, p0}, Lcom/android/common/util/LauncherSharedPrefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public shouldAddCotaAppToWorkspace(ZLandroid/content/Context;)Z
    .registers 4

    if-nez p1, :cond_13

    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->getCotaAppAddToWorkspaceVersion()I

    move-result p0

    const/4 p1, -0x1

    const-string v0, "cota_app_to_workspace_version"

    invoke-static {p2, v0, p1}, Lcom/android/common/util/LauncherSharedPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    if-le p0, p1, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method public unregisterCotaNonRebootPackageScannedFinishReceiver()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher/layout/CustomLayoutHelper;->mNonRebootCotaLoadLayoutRunning:Z

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/android/launcher/layout/CustomLayoutHelper;->mNonRebootPackageScannedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1e

    const-string v0, "Layout"

    const-string v1, "CustomLayoutHelper"

    const-string/jumbo v2, "unregister non-reboot cota reload layout receiver: destroy"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/layout/CustomLayoutHelper;->mNonRebootPackageScannedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/layout/CustomLayoutHelper;->mNonRebootPackageScannedReceiver:Landroid/content/BroadcastReceiver;

    :cond_1e
    return-void
.end method
