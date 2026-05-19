.class public final Lcom/android/launcher/layout/ComponentLayoutProvider$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/layout/ComponentLayoutProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nComponentLayoutProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ComponentLayoutProvider.kt\ncom/android/launcher/layout/ComponentLayoutProvider$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,171:1\n1#2:172\n*E\n"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher/layout/ComponentLayoutProvider$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/XmlPullParser;
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/layout/ComponentLayoutProvider$Companion;->getLayoutLoader$lambda$2$lambda$1(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$findLayoutFile(Lcom/android/launcher/layout/ComponentLayoutProvider$Companion;Ljava/lang/String;)Ljava/io/File;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/layout/ComponentLayoutProvider$Companion;->findLayoutFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private final findLayoutFile(Ljava/lang/String;)Ljava/io/File;
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher/layout/ComponentLayoutProvider;->values()[Lcom/android/launcher/layout/ComponentLayoutProvider;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    const/4 v2, 0x0

    if-ge v1, v0, :cond_47

    aget-object v3, p0, v1

    invoke-virtual {v3}, Lcom/android/launcher/layout/ComponentLayoutProvider;->getLayoutDirectory()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_42

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v4

    if-eqz v4, :cond_36

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "try getLayoutFile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ComponentLayoutProvider"

    invoke-static {v5, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_36
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_42

    move-object v2, v4

    :cond_42
    if-nez v2, :cond_47

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_47
    return-object v2
.end method

.method private static final getLayoutLoader$lambda$2$lambda$1(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/XmlPullParser;
    .registers 1

    return-object p0
.end method


# virtual methods
.method public final getLayoutLoader(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)Lcom/android/launcher3/AutoInstallsLayout;
    .registers 13
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "openHelper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object v0

    iget v1, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    const-string v2, "default_workspace.xml"

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2b

    iget v1, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2b

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isSupportSimpleModeSpeedDialWidget()Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "default_workspace_simple_speed_dial_widget.xml"

    goto :goto_79

    :cond_28
    const-string v0, "default_workspace_simple.xml"

    goto :goto_79

    :cond_2b
    invoke-static {}, Lcom/android/common/config/VersionInfo;->isFactoryVersion()Z

    move-result v1

    if-eqz v1, :cond_51

    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const-string v0, "default_workspace_factory_%dx%d.xml"

    const-string v4, "format(format, *args)"

    invoke-static {v3, v1, v0, v4}, Lcom/android/common/debug/b;->a([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_79

    :cond_51
    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isSellMode:Z

    if-eqz v0, :cond_58

    const-string v0, "default_workspace_sale.xml"

    goto :goto_79

    :cond_58
    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isPacMan()Z

    move-result v1

    if-eqz v1, :cond_63

    const-string v0, "default_workspace_pacman.xml"

    goto :goto_79

    :cond_63
    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v1

    if-eqz v1, :cond_78

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isSurpportLayoutUpgrade()Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-static {}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->isUsingOldLayout()Z

    move-result v0

    if-nez v0, :cond_78

    const-string v0, "default_workspace_new_layout.xml"

    goto :goto_79

    :cond_78
    move-object v0, v2

    :goto_79
    invoke-direct {p0, v0}, Lcom/android/launcher/layout/ComponentLayoutProvider$Companion;->findLayoutFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_89

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_89

    invoke-direct {p0, v2}, Lcom/android/launcher/layout/ComponentLayoutProvider$Companion;->findLayoutFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    :cond_89
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->getLauncherMode()Lcom/android/launcher/mode/AbsLauncherMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/AbsLauncherMode;->mode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object p0

    const-string v0, "currentMode:"

    const-string v2, ", component layout file:"

    invoke-static {v0, p0, v2}, Lcom/android/common/util/l0;->a(Ljava/lang/String;Lcom/android/launcher/mode/LauncherMode;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v1, :cond_a5

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    goto :goto_a6

    :cond_a5
    move-object v3, v2

    :goto_a6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ComponentLayoutProvider"

    invoke-static {v3, v0}, Lcom/android/common/debug/OplusFileLog;->dForever(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_b9

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_ba

    :cond_b9
    move-object v0, v2

    :goto_ba
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2d

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-wide/16 v3, 0x7530

    invoke-static {v0, p0, v3, v4}, Lcom/android/common/debug/OplusFileLog;->copyFile(Ljava/lang/String;Ljava/lang/String;J)V

    if-eqz v1, :cond_f0

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p0

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v2, Lcom/android/launcher3/DefaultLayoutParser;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-instance v8, Lcom/android/launcher/layout/a;

    invoke-direct {v8, p0}, Lcom/android/launcher/layout/a;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    move-object v3, v2

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/launcher3/DefaultLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;Ljava/util/function/Supplier;)V

    :cond_f0
    return-object v2
.end method
