.class public abstract Lcom/android/launcher3/popup/taskbarcompatiblefilter/CompatibleAppsDB;
.super Landroidx/room/RoomDatabase;
.source ""


# annotations
.annotation build Landroidx/room/Database;
    entities = {
        Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;
    }
    exportSchema = false
    version = 0x2
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/popup/taskbarcompatiblefilter/CompatibleAppsDB$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/popup/taskbarcompatiblefilter/CompatibleAppsDB$Companion;

.field private static final DB_NAME:Ljava/lang/String; = "taskbar_compatible_apps.db"

.field private static volatile instantce:Lcom/android/launcher3/popup/taskbarcompatiblefilter/CompatibleAppsDB;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/CompatibleAppsDB$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/CompatibleAppsDB$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/CompatibleAppsDB;->Companion:Lcom/android/launcher3/popup/taskbarcompatiblefilter/CompatibleAppsDB$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstantce$cp()Lcom/android/launcher3/popup/taskbarcompatiblefilter/CompatibleAppsDB;
    .registers 1

    sget-object v0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/CompatibleAppsDB;->instantce:Lcom/android/launcher3/popup/taskbarcompatiblefilter/CompatibleAppsDB;

    return-object v0
.end method

.method public static final synthetic access$setInstantce$cp(Lcom/android/launcher3/popup/taskbarcompatiblefilter/CompatibleAppsDB;)V
    .registers 1

    sput-object p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/CompatibleAppsDB;->instantce:Lcom/android/launcher3/popup/taskbarcompatiblefilter/CompatibleAppsDB;

    return-void
.end method


# virtual methods
.method public abstract getCompatibleAppsDao()Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao;
.end method
