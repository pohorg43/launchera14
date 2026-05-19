.class public final Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;
.super Lcom/android/rusconfig/RusBaseXmlType2ConfigManager;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTaskbarCompatibleToastManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskbarCompatibleToastManager.kt\ncom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,172:1\n37#2,2:173\n37#2,2:180\n1855#3,2:175\n1855#3,2:178\n1#4:177\n*S KotlinDebug\n*F\n+ 1 TaskbarCompatibleToastManager.kt\ncom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager\n*L\n90#1:173,2\n141#1:180,2\n101#1:175,2\n136#1:178,2\n*E\n"
    }
.end annotation


# static fields
.field private static final CONFIG_NAME_DELAY_DISPLAY_SECOND:Ljava/lang/String; = "delay_display_second"

.field private static final CONFIG_NAME_DISPLAY_TIME_INTERVAL:Ljava/lang/String; = "display_time_interval"

.field private static final CONFIG_NAME_MAX_DISPLAY_TIMES_ONE_DAY:Ljava/lang/String; = "max_display_times_one_day"

.field private static final CONFIG_NAME_SINGLE_APP_TOTAL_DISPLAY_TIMES:Ljava/lang/String; = "single_app_total_display_times"

.field private static final CONFIG_NAME_TOTAL_DISPLAY_TIMES:Ljava/lang/String; = "total_display_times"

.field public static final INSTANCE:Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;

.field private static final STRING_ARRAY_NAME_COMPONENT_NAME:Ljava/lang/String; = "component_name"

.field private static final STRING_TAG_COMPONENT_INFO:Ljava/lang/String; = "ComponentInfo"

.field private static final TAG:Ljava/lang/String; = "TaskbarCompatibleToastManager"

.field private static final TOAST_MESSAGE:Ljava/lang/String; = "toast_message"

.field private static final TOAST_MESSAGE_SP:Ljava/lang/String; = "toast_message_sp"

.field private static final mCompatibleList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mLock:Ljava/lang/Object;

.field private static volatile mToastMessage:Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;

    invoke-direct {v0}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;-><init>()V

    sput-object v0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;->INSTANCE:Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;->mCompatibleList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;

    invoke-direct {v0}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;-><init>()V

    sput-object v0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;->mToastMessage:Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/rusconfig/RusBaseXmlType2ConfigManager;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocalFileConfigName()Ljava/lang/String;
    .registers 1

    const-string p0, "./src_oplus/com/android/launcher3/popup/taskbarcompatiblefilter/app_launcher_taskbar_compatible_toast_label_local.xml"

    return-object p0
.end method

.method public getLocalVersion(Landroid/content/Context;)Ljava/lang/Integer;
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;->getToastMessage(Landroid/content/Context;)Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_a
    sget-object v1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/CompatibleAppsDB;->Companion:Lcom/android/launcher3/popup/taskbarcompatiblefilter/CompatibleAppsDB$Companion;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/CompatibleAppsDB$Companion;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/popup/taskbarcompatiblefilter/CompatibleAppsDB;

    move-result-object p1

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/CompatibleAppsDB;->getCompatibleAppsDao()Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao;

    move-result-object p1

    if-eqz p1, :cond_1d

    invoke-interface {p1}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao;->queryAll()Ljava/util/List;

    move-result-object p1
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_1f

    goto :goto_24

    :cond_1d
    move-object p1, v0

    goto :goto_24

    :catchall_1f
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_24
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_35

    const-string v2, "TaskbarCompatibleToastManager"

    const-string v3, "loadNewCompatibleList query error: "

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/android/common/config/l;->a(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_35
    instance-of v1, p1, Lh4/k$a;

    if-eqz v1, :cond_3a

    goto :goto_3b

    :cond_3a
    move-object v0, p1

    :goto_3b
    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_5c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5c

    if-eqz p0, :cond_5c

    sget-object p1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;->mCompatibleList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object p1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_52
    sget-object v0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;->mToastMessage:Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->copyFrom(Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;)V
    :try_end_57
    .catchall {:try_start_52 .. :try_end_57} :catchall_59

    monitor-exit p1

    goto :goto_67

    :catchall_59
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_5c
    sget-object p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_5f
    new-instance p1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;

    invoke-direct {p1}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;-><init>()V

    sput-object p1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;->mToastMessage:Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;
    :try_end_66
    .catchall {:try_start_5f .. :try_end_66} :catchall_a1

    monitor-exit p0

    :goto_67
    const-string p0, "TaskbarCompatibleToastManager"

    const-string p1, "getLocalVersion: initToastMessage:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;->mToastMessage:Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", initCompatibleList:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;->mCompatibleList:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "toString(this)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;->mToastMessage:Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;

    invoke-virtual {p0}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->getVersion()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :catchall_a1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getMCompatibleList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;->mCompatibleList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public final getMToastMessage()Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;
    .registers 1

    sget-object p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;->mToastMessage:Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;

    return-object p0
.end method

.method public getRusRomConfigName()Ljava/lang/String;
    .registers 1

    const-string p0, "app_launcher_taskbar_compatible_toast"

    return-object p0
.end method

.method public final getToastMessage(Landroid/content/Context;)Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;
    .registers 5

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "toast_message_sp"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string/jumbo p1, "toast_message"

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getToastMessage: jsonString = "

    const-string v1, "TaskbarCompatibleToastManager"

    invoke-static {p1, p0, v1}, Lcom/android/common/config/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_1f

    return-object v0

    :cond_1f
    :try_start_1f
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;

    invoke-virtual {p1, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_2c} :catch_2d

    return-object p0

    :catch_2d
    move-exception p0

    const-string p1, "getToastMessage: e = "

    invoke-static {p1, p0, v1}, Lcom/android/common/c;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    return-object v0
.end method

.method public final setMToastMessage(Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;)V
    .registers 2

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;->mToastMessage:Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;

    return-void
.end method

.method public final setToastMessage(Landroid/content/Context;Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;)V
    .registers 4

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "toastMessage"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setToastMessage: jsonString = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TaskbarCompatibleToastManager"

    invoke-static {v0, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p2, "toast_message_sp"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string/jumbo p2, "toast_message"

    invoke-interface {p1, p2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public supportRus()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public updateCustomConfigData(Landroid/content/Context;Ljava/lang/Integer;Lcom/android/rusconfig/RusBaseXmlType2ConfigManager$RusXml2Config;)V
    .registers 12

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "parsedRusConfig"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p3}, Lcom/android/rusconfig/RusBaseXmlType2ConfigManager$RusXml2Config;->getItemArrays()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_7f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/rusconfig/RusBaseXmlType2ConfigManager$ItemArray;

    invoke-virtual {v2}, Lcom/android/rusconfig/RusBaseXmlType2ConfigManager$KeyWithName;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "component_name"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-virtual {v2}, Lcom/android/rusconfig/RusBaseXmlType2ConfigManager$ItemArray;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_39
    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/rusconfig/RusBaseXmlType2ConfigManager$Item;

    invoke-virtual {v2}, Lcom/android/rusconfig/RusBaseXmlType2ConfigManager$Item;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ComponentInfo"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-virtual {v2}, Lcom/android/rusconfig/RusBaseXmlType2ConfigManager$Item;->getName1()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_5d

    const/4 v4, 0x1

    goto :goto_5e

    :cond_5d
    move v4, v3

    :goto_5e
    if-eqz v4, :cond_39

    new-instance v4, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;

    invoke-virtual {v2}, Lcom/android/rusconfig/RusBaseXmlType2ConfigManager$Item;->getName1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/rusconfig/RusBaseXmlType2ConfigManager$Item;->getName2()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "randomUUID().toString()"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v5, v2, v3, v6}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_39

    :cond_7f
    sget-object v1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p2, :cond_8d

    :try_start_84
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    sget-object v2, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;->mToastMessage:Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;

    invoke-virtual {v2, p2}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->setVersion(I)V

    :cond_8d
    invoke-virtual {p3}, Lcom/android/rusconfig/RusBaseXmlType2ConfigManager$RusXml2Config;->getConfigList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_95
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_130

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/rusconfig/RusBaseXmlType2ConfigManager$Config;

    invoke-virtual {p3}, Lcom/android/rusconfig/RusBaseXmlType2ConfigManager$Config;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_1c8

    goto :goto_95

    :sswitch_ad
    const-string/jumbo v4, "single_app_total_display_times"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b7

    goto :goto_95

    :cond_b7
    sget-object v2, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;->mToastMessage:Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;

    invoke-virtual {p3}, Lcom/android/rusconfig/RusBaseXmlType2ConfigManager$Config;->getValue()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v2, p3}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->setSingleAppTotalDisplayTimes(I)V

    goto :goto_95

    :sswitch_c5
    const-string v4, "delay_display_second"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ce

    goto :goto_95

    :cond_ce
    sget-object v2, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;->mToastMessage:Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;

    invoke-virtual {p3}, Lcom/android/rusconfig/RusBaseXmlType2ConfigManager$Config;->getValue()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v2, p3}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->setDelayDisplaySecond(I)V

    goto :goto_95

    :sswitch_dc
    const-string/jumbo v4, "max_display_times_one_day"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e6

    goto :goto_95

    :cond_e6
    sget-object v2, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;->mToastMessage:Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;

    invoke-virtual {p3}, Lcom/android/rusconfig/RusBaseXmlType2ConfigManager$Config;->getValue()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v2, p3}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->setMaxDTOneDay(I)V

    sget-object p3, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;->mToastMessage:Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;

    sget-object v2, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;->mToastMessage:Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;

    invoke-virtual {v2}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->getMaxDTOneDay()I

    move-result v2

    invoke-virtual {p3, v2}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->setRemainderDTOneDay(I)V

    goto :goto_95

    :sswitch_ff
    const-string v4, "display_time_interval"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_108

    goto :goto_95

    :cond_108
    sget-object v2, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;->mToastMessage:Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;

    invoke-virtual {p3}, Lcom/android/rusconfig/RusBaseXmlType2ConfigManager$Config;->getValue()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v2, p3}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->setDisplayTimeInterval(I)V

    goto :goto_95

    :sswitch_116
    const-string/jumbo v4, "total_display_times"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_121

    goto/16 :goto_95

    :cond_121
    sget-object v2, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;->mToastMessage:Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;

    invoke-virtual {p3}, Lcom/android/rusconfig/RusBaseXmlType2ConfigManager$Config;->getValue()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v2, p3}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->setTotalDisplayTimes(I)V
    :try_end_12e
    .catchall {:try_start_84 .. :try_end_12e} :catchall_1c4

    goto/16 :goto_95

    :cond_130
    monitor-exit v1

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_135
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_14b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;

    sget-object v1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;->mToastMessage:Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;

    invoke-virtual {v1}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->getSingleAppTotalDisplayTimes()I

    move-result v1

    invoke-virtual {p3, v1}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->setSelfDisplayTimes(I)V

    goto :goto_135

    :cond_14b
    sget-object p2, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;->mCompatibleList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    invoke-virtual {p2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    const-string p3, "TaskbarCompatibleToastManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateCustomConfigData: updatedToastMessage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;->mToastMessage:Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", updatedCompatibleList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v3, [Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;

    invoke-interface {p2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "toString(this)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p3, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;->mToastMessage:Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;

    invoke-virtual {p0, p1, p3}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;->setToastMessage(Landroid/content/Context;Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;)V

    sget-object p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/CompatibleAppsDB;->Companion:Lcom/android/launcher3/popup/taskbarcompatiblefilter/CompatibleAppsDB$Companion;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/CompatibleAppsDB$Companion;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/popup/taskbarcompatiblefilter/CompatibleAppsDB;

    move-result-object p3

    if-eqz p3, :cond_19a

    invoke-virtual {p3}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/CompatibleAppsDB;->getCompatibleAppsDao()Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao;

    move-result-object p3

    if-eqz p3, :cond_19a

    invoke-interface {p3, p2}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao;->updateAllApps(Ljava/util/List;)V

    :cond_19a
    invoke-virtual {p0, p1}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/CompatibleAppsDB$Companion;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/popup/taskbarcompatiblefilter/CompatibleAppsDB;

    move-result-object p0

    if-eqz p0, :cond_1ab

    invoke-virtual {p0}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/CompatibleAppsDB;->getCompatibleAppsDao()Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao;

    move-result-object p0

    if-eqz p0, :cond_1ab

    invoke-interface {p0}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao;->queryAll()Ljava/util/List;

    move-result-object p0

    goto :goto_1ac

    :cond_1ab
    const/4 p0, 0x0

    :goto_1ac
    const-string p1, "TaskbarCompatibleToastManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "updateCustomConfigData: queryAll result:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_1c4
    move-exception p0

    monitor-exit v1

    throw p0

    nop

    :sswitch_data_1c8
    .sparse-switch
        -0x2bd1f032 -> :sswitch_116
        0x436a093a -> :sswitch_ff
        0x6c9f38f2 -> :sswitch_dc
        0x7cb648cd -> :sswitch_c5
        0x7f8aedb9 -> :sswitch_ad
    .end sparse-switch
.end method

.method public bridge synthetic updateCustomConfigData(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Object;)V
    .registers 4

    check-cast p3, Lcom/android/rusconfig/RusBaseXmlType2ConfigManager$RusXml2Config;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;->updateCustomConfigData(Landroid/content/Context;Ljava/lang/Integer;Lcom/android/rusconfig/RusBaseXmlType2ConfigManager$RusXml2Config;)V

    return-void
.end method
