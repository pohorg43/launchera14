.class public final Lpantanal/app/groupcard/plugin/Constants$PluginFilePath;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpantanal/app/groupcard/plugin/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PluginFilePath"
.end annotation


# static fields
.field public static final FILE_PLUGIN_CARD_GROUP:Ljava/lang/String; = "PantanalCardGroupSdk.apk"

.field private static final FOLDER_SDK_CACHE_CARD_GROUP:Ljava/lang/String; = "card_group_plugin_cache"

.field public static final FOLDER_SDK_CARD_GROUP:Ljava/lang/String; = "card_group_plugin"

.field public static final INSTANCE:Lpantanal/app/groupcard/plugin/Constants$PluginFilePath;

.field private static final PATH_FILES_DIR:Ljava/lang/String;

.field private static final PATH_FOLDER_SDK_CACHE_CARD_GROUP:Ljava/lang/String;

.field private static final PATH_FOLDER_SDK_CARD_GROUP:Ljava/lang/String;

.field private static final PATH_LOCAL_CONFIG_CARD_GROUP:Ljava/lang/String;

.field private static final PATH_PLUGIN_CARD_GROUP:Ljava/lang/String;

.field private static final PATH_REMOTE_CONFIG_CARD_GROUP:Ljava/lang/String;

.field private static final PATH_REMOTE_SDK_LITE_CARD_GROUP:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lpantanal/app/groupcard/plugin/Constants$PluginFilePath;

    invoke-direct {v0}, Lpantanal/app/groupcard/plugin/Constants$PluginFilePath;-><init>()V

    sput-object v0, Lpantanal/app/groupcard/plugin/Constants$PluginFilePath;->INSTANCE:Lpantanal/app/groupcard/plugin/Constants$PluginFilePath;

    sget-object v0, Lpantanal/app/groupcard/CardGroupSdk;->INSTANCE:Lpantanal/app/groupcard/CardGroupSdk;

    invoke-virtual {v0}, Lpantanal/app/groupcard/CardGroupSdk;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v0, v1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lpantanal/app/groupcard/plugin/Constants$PluginFilePath;->PATH_FILES_DIR:Ljava/lang/String;

    const-string v2, "card_group_plugin"

    const-string v3, "config.json"

    invoke-static {v2, v1, v3}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lpantanal/app/groupcard/plugin/Constants$PluginFilePath;->PATH_REMOTE_CONFIG_CARD_GROUP:Ljava/lang/String;

    invoke-static {v0, v2}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lpantanal/app/groupcard/plugin/Constants$PluginFilePath;->PATH_FOLDER_SDK_CARD_GROUP:Ljava/lang/String;

    invoke-static {v4, v1, v3}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lpantanal/app/groupcard/plugin/Constants$PluginFilePath;->PATH_LOCAL_CONFIG_CARD_GROUP:Ljava/lang/String;

    const-string v3, "PantanalCardGroupSdk.apk"

    invoke-static {v4, v1, v3}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lpantanal/app/groupcard/plugin/Constants$PluginFilePath;->PATH_PLUGIN_CARD_GROUP:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lpantanal/app/groupcard/plugin/Constants$PluginFilePath;->PATH_REMOTE_SDK_LITE_CARD_GROUP:Ljava/lang/String;

    const-string v1, "card_group_plugin_cache"

    invoke-static {v0, v1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lpantanal/app/groupcard/plugin/Constants$PluginFilePath;->PATH_FOLDER_SDK_CACHE_CARD_GROUP:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPATH_FOLDER_SDK_CACHE_CARD_GROUP$groupcard_interface_release()Ljava/lang/String;
    .registers 1

    sget-object p0, Lpantanal/app/groupcard/plugin/Constants$PluginFilePath;->PATH_FOLDER_SDK_CACHE_CARD_GROUP:Ljava/lang/String;

    return-object p0
.end method

.method public final getPATH_FOLDER_SDK_CARD_GROUP$groupcard_interface_release()Ljava/lang/String;
    .registers 1

    sget-object p0, Lpantanal/app/groupcard/plugin/Constants$PluginFilePath;->PATH_FOLDER_SDK_CARD_GROUP:Ljava/lang/String;

    return-object p0
.end method

.method public final getPATH_LOCAL_CONFIG_CARD_GROUP$groupcard_interface_release()Ljava/lang/String;
    .registers 1

    sget-object p0, Lpantanal/app/groupcard/plugin/Constants$PluginFilePath;->PATH_LOCAL_CONFIG_CARD_GROUP:Ljava/lang/String;

    return-object p0
.end method

.method public final getPATH_PLUGIN_CARD_GROUP$groupcard_interface_release()Ljava/lang/String;
    .registers 1

    sget-object p0, Lpantanal/app/groupcard/plugin/Constants$PluginFilePath;->PATH_PLUGIN_CARD_GROUP:Ljava/lang/String;

    return-object p0
.end method

.method public final getPATH_REMOTE_CONFIG_CARD_GROUP$groupcard_interface_release()Ljava/lang/String;
    .registers 1

    sget-object p0, Lpantanal/app/groupcard/plugin/Constants$PluginFilePath;->PATH_REMOTE_CONFIG_CARD_GROUP:Ljava/lang/String;

    return-object p0
.end method

.method public final getPATH_REMOTE_SDK_LITE_CARD_GROUP$groupcard_interface_release()Ljava/lang/String;
    .registers 1

    sget-object p0, Lpantanal/app/groupcard/plugin/Constants$PluginFilePath;->PATH_REMOTE_SDK_LITE_CARD_GROUP:Ljava/lang/String;

    return-object p0
.end method
