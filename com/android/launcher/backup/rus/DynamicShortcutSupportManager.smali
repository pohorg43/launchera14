.class public final Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager;
.super Lcom/android/rusconfig/RusBaseXmlType2ConfigManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDynamicShortcutSupportManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DynamicShortcutSupportManager.kt\ncom/android/launcher/backup/rus/DynamicShortcutSupportManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,128:1\n1855#2:129\n1856#2:131\n1#3:130\n*S KotlinDebug\n*F\n+ 1 DynamicShortcutSupportManager.kt\ncom/android/launcher/backup/rus/DynamicShortcutSupportManager\n*L\n80#1:129\n80#1:131\n*E\n"
    }
.end annotation


# static fields
.field private static final CONFIG_NAME_DISABLE_ALL_DYNAMIC_SHORTCUT:Ljava/lang/String; = "disable_all_dynamic_shortcut"

.field public static final Companion:Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager$Companion;

.field private static final LOCAL_FILE_NAME:Ljava/lang/String; = "app_dynamic_shortcut_support_rus_list"

.field private static final RUS_ROM_NAME:Ljava/lang/String; = "app_dynamic_shortcut_support_rus_list"

.field private static final STRING_ARRAY_NAME_SHORTCUT_KEY:Ljava/lang/String; = "shortcut_key"

.field private static final STRING_TAG_SHORTCUT_KEY:Ljava/lang/String; = "ShortcutKey"

.field private static final TAG:Ljava/lang/String; = "DynamicShortcutSupportManager"

.field private static final sInstance$delegate:Lh4/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh4/f<",
            "Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile mDisableAllDynamicShortcut:Z

.field private final mDynamicShortcutNotSupportList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/shortcuts/ShortcutKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager;->Companion:Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager$Companion;

    sget-object v0, Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager$Companion$sInstance$2;->INSTANCE:Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager$Companion$sInstance$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager;->sInstance$delegate:Lh4/f;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/rusconfig/RusBaseXmlType2ConfigManager;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager;->mDynamicShortcutNotSupportList:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getSInstance$delegate$cp()Lh4/f;
    .registers 1

    sget-object v0, Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager;->sInstance$delegate:Lh4/f;

    return-object v0
.end method

.method public static final getInstance()Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager;->Companion:Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager$Companion;

    invoke-virtual {v0}, Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager$Companion;->getInstance()Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getDisableAllDynamicShortcut()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager;->mDisableAllDynamicShortcut:Z

    return p0
.end method

.method public final getDynamicShortcutNotSupportList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/shortcuts/ShortcutKey;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager;->mDynamicShortcutNotSupportList:Ljava/util/List;

    return-object p0
.end method

.method public getLocalFileConfigName()Ljava/lang/String;
    .registers 1

    const-string p0, "app_dynamic_shortcut_support_rus_list"

    return-object p0
.end method

.method public final getMDisableAllDynamicShortcut()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager;->mDisableAllDynamicShortcut:Z

    return p0
.end method

.method public getRusRomConfigName()Ljava/lang/String;
    .registers 1

    const-string p0, "app_dynamic_shortcut_support_rus_list"

    return-object p0
.end method

.method public final isDynamicShortcutNotSupport(Lcom/android/launcher3/shortcuts/ShortcutKey;)Z
    .registers 6

    iget-boolean v0, p0, Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager;->mDisableAllDynamicShortcut:Z

    const/4 v1, 0x1

    const-string v2, "DynamicShortcutSupportManager"

    if-eqz v0, :cond_1c

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isDynamicShortcutNotSupport DisableAllDynamicShortcut true, shortcutKey:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1c
    iget-object v0, p0, Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager;->mDynamicShortcutNotSupportList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_55

    if-nez p1, :cond_28

    goto :goto_55

    :cond_28
    iget-object p0, p0, Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager;->mDynamicShortcutNotSupportList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/shortcuts/ShortcutKey;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isDynamicShortcutNotSupport DynamicShortcutNotSupportList contains, shortcutKey:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_55
    :goto_55
    return v3
.end method

.method public final setMDisableAllDynamicShortcut(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager;->mDisableAllDynamicShortcut:Z

    return-void
.end method

.method public supportRus()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public updateCustomConfigData(Landroid/content/Context;Ljava/lang/Integer;Lcom/android/rusconfig/RusBaseXmlType2ConfigManager$RusXml2Config;)V
    .registers 12

    const-string p2, "context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "parsedRusConfig"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager;->mDynamicShortcutNotSupportList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-virtual {p3}, Lcom/android/rusconfig/RusBaseXmlType2ConfigManager$RusXml2Config;->getItemArrays()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v0, 0x0

    const-string v1, "DynamicShortcutSupportManager"

    const/4 v2, 0x1

    if-eqz p2, :cond_b7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/rusconfig/RusBaseXmlType2ConfigManager$ItemArray;

    invoke-virtual {p2}, Lcom/android/rusconfig/RusBaseXmlType2ConfigManager$KeyWithName;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "shortcut_key"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual {p2}, Lcom/android/rusconfig/RusBaseXmlType2ConfigManager$ItemArray;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/rusconfig/RusBaseXmlType2ConfigManager$Item;

    :try_start_49
    invoke-virtual {p2}, Lcom/android/rusconfig/RusBaseXmlType2ConfigManager$Item;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ShortcutKey"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a1

    invoke-virtual {p2}, Lcom/android/rusconfig/RusBaseXmlType2ConfigManager$Item;->getName1()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_61

    move v3, v2

    goto :goto_62

    :cond_61
    move v3, v0

    :goto_62
    if-eqz v3, :cond_a1

    invoke-virtual {p2}, Lcom/android/rusconfig/RusBaseXmlType2ConfigManager$Item;->getName2()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_70

    move v3, v2

    goto :goto_71

    :cond_70
    move v3, v0

    :goto_71
    if-eqz v3, :cond_a1

    invoke-virtual {p2}, Lcom/android/rusconfig/RusBaseXmlType2ConfigManager$Item;->getName3()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_7f

    move v3, v2

    goto :goto_80

    :cond_7f
    move v3, v0

    :goto_80
    if-eqz v3, :cond_a1

    iget-object v3, p0, Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager;->mDynamicShortcutNotSupportList:Ljava/util/List;

    new-instance v4, Lcom/android/launcher3/shortcuts/ShortcutKey;

    invoke-virtual {p2}, Lcom/android/rusconfig/RusBaseXmlType2ConfigManager$Item;->getName1()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/os/UserHandle;

    invoke-virtual {p2}, Lcom/android/rusconfig/RusBaseXmlType2ConfigManager$Item;->getName2()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p2}, Lcom/android/rusconfig/RusBaseXmlType2ConfigManager$Item;->getName3()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v4, v5, v6, p2}, Lcom/android/launcher3/shortcuts/ShortcutKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a1
    sget-object p2, Lh4/z;->a:Lh4/z;
    :try_end_a3
    .catchall {:try_start_49 .. :try_end_a3} :catchall_a4

    goto :goto_a9

    :catchall_a4
    move-exception p2

    invoke-static {p2}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    :goto_a9
    invoke-static {p2}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_b0

    goto :goto_3d

    :cond_b0
    const-string/jumbo v3, "updateCustomConfigData parse dynamicShortcutNotSupportList e:"

    invoke-static {v3, p2, v1}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_3d

    :cond_b7
    const-string/jumbo p1, "updateCustomConfigData mDynamicShortcutNotSupportList:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager;->mDynamicShortcutNotSupportList:Ljava/util/List;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/android/rusconfig/RusBaseXmlType2ConfigManager$RusXml2Config;->getConfigList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d2
    :goto_d2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_10f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/rusconfig/RusBaseXmlType2ConfigManager$Config;

    invoke-virtual {p2}, Lcom/android/rusconfig/RusBaseXmlType2ConfigManager$Config;->getTag()Ljava/lang/String;

    move-result-object p3

    const-string v3, "disable_all_dynamic_shortcut"

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_d2

    :try_start_ea
    invoke-virtual {p2}, Lcom/android/rusconfig/RusBaseXmlType2ConfigManager$Config;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-ne p2, v2, :cond_f6

    move p2, v2

    goto :goto_f7

    :cond_f6
    move p2, v0

    :goto_f7
    iput-boolean p2, p0, Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager;->mDisableAllDynamicShortcut:Z

    sget-object p2, Lh4/z;->a:Lh4/z;
    :try_end_fb
    .catchall {:try_start_ea .. :try_end_fb} :catchall_fc

    goto :goto_101

    :catchall_fc
    move-exception p2

    invoke-static {p2}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    :goto_101
    invoke-static {p2}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_108

    goto :goto_d2

    :cond_108
    const-string/jumbo p3, "updateCustomConfigData parse disableAllDynamicShortcut e:"

    invoke-static {p3, p2, v1}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_d2

    :cond_10f
    const-string/jumbo p1, "updateCustomConfigData mDisableAllDynamicShortcut:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p0, p0, Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager;->mDisableAllDynamicShortcut:Z

    invoke-static {p1, p0, v1}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic updateCustomConfigData(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Object;)V
    .registers 4

    check-cast p3, Lcom/android/rusconfig/RusBaseXmlType2ConfigManager$RusXml2Config;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager;->updateCustomConfigData(Landroid/content/Context;Ljava/lang/Integer;Lcom/android/rusconfig/RusBaseXmlType2ConfigManager$RusXml2Config;)V

    return-void
.end method
