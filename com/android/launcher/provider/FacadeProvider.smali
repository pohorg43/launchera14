.class public final Lcom/android/launcher/provider/FacadeProvider;
.super Landroid/content/ContentProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/provider/FacadeProvider$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Lcom/android/launcher/provider/FacadeProvider$Companion;

.field private static final FACADE_INFO:Ljava/lang/String; = "FacadeInfo"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final KEY_ACTIVE_HOME_SCREENS:Ljava/lang/String; = "active_home_screens"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final KEY_HOMESCREEN_COLUMNS:Ljava/lang/String; = "homescreen_columns"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final KEY_HOMESCREEN_ROWS:Ljava/lang/String; = "homescreen_rows"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final KEY_LAUNCHER:Ljava/lang/String; = "launcher"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final KEY_LAUNCHER_STATUS:Ljava/lang/String; = "launcher_status"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final KEY_MAX_HOME_SCREENS:Ljava/lang/String; = "max_home_screens"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final KEY_MAX_HOTSEAT_CELLS:Ljava/lang/String; = "max_hotseat_cells"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final LAUNCHER_COMPONENT_NAME:Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final LAUNCHER_STATUS:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MAX_HOME_SCREENS:I = 0x1b
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "FacadeProvider"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final sHandler$delegate:Lh4/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh4/f<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/launcher/provider/FacadeProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/provider/FacadeProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/provider/FacadeProvider;->Companion:Lcom/android/launcher/provider/FacadeProvider$Companion;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.launcher"

    const-string v2, "com.android.launcher.Launcher"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher/provider/FacadeProvider;->LAUNCHER_COMPONENT_NAME:Landroid/content/ComponentName;

    sget-object v0, Lcom/android/launcher/provider/FacadeProvider$Companion$sHandler$2;->INSTANCE:Lcom/android/launcher/provider/FacadeProvider$Companion$sHandler$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/provider/FacadeProvider;->sHandler$delegate:Lh4/f;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCompanion$p()Lcom/android/launcher/provider/FacadeProvider$Companion;
    .registers 1

    sget-object v0, Lcom/android/launcher/provider/FacadeProvider;->Companion:Lcom/android/launcher/provider/FacadeProvider$Companion;

    return-object v0
.end method

.method public static final synthetic access$getSHandler$delegate$cp()Lh4/f;
    .registers 1

    sget-object v0, Lcom/android/launcher/provider/FacadeProvider;->sHandler$delegate:Lh4/f;

    return-object v0
.end method

.method private static final getApp()Lcom/android/launcher3/LauncherAppState;
    .registers 1

    sget-object v0, Lcom/android/launcher/provider/FacadeProvider;->Companion:Lcom/android/launcher/provider/FacadeProvider$Companion;

    invoke-static {v0}, Lcom/android/launcher/provider/FacadeProvider$Companion;->access$getApp(Lcom/android/launcher/provider/FacadeProvider$Companion;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    return-object v0
.end method

.method private static final getColumns(Landroid/content/Context;)I
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher/provider/FacadeProvider;->Companion:Lcom/android/launcher/provider/FacadeProvider$Companion;

    invoke-static {v0, p0}, Lcom/android/launcher/provider/FacadeProvider$Companion;->access$getColumns(Lcom/android/launcher/provider/FacadeProvider$Companion;Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method private static final getHotseatCells(Landroid/content/Context;)I
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher/provider/FacadeProvider;->Companion:Lcom/android/launcher/provider/FacadeProvider$Companion;

    invoke-static {v0, p0}, Lcom/android/launcher/provider/FacadeProvider$Companion;->access$getHotseatCells(Lcom/android/launcher/provider/FacadeProvider$Companion;Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method private static final getModel()Lcom/android/launcher3/LauncherModel;
    .registers 1

    sget-object v0, Lcom/android/launcher/provider/FacadeProvider;->Companion:Lcom/android/launcher/provider/FacadeProvider$Companion;

    invoke-static {v0}, Lcom/android/launcher/provider/FacadeProvider$Companion;->access$getModel(Lcom/android/launcher/provider/FacadeProvider$Companion;)Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    return-object v0
.end method

.method private static final getRow(Landroid/content/Context;)I
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher/provider/FacadeProvider;->Companion:Lcom/android/launcher/provider/FacadeProvider$Companion;

    invoke-static {v0, p0}, Lcom/android/launcher/provider/FacadeProvider$Companion;->access$getRow(Lcom/android/launcher/provider/FacadeProvider$Companion;Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method private static final getSHandler()Landroid/os/Handler;
    .registers 1

    sget-object v0, Lcom/android/launcher/provider/FacadeProvider;->Companion:Lcom/android/launcher/provider/FacadeProvider$Companion;

    invoke-static {v0}, Lcom/android/launcher/provider/FacadeProvider$Companion;->access$getSHandler(Lcom/android/launcher/provider/FacadeProvider$Companion;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method private static final getScreenSize(Landroid/content/Context;)I
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher/provider/FacadeProvider;->Companion:Lcom/android/launcher/provider/FacadeProvider$Companion;

    invoke-static {v0, p0}, Lcom/android/launcher/provider/FacadeProvider$Companion;->access$getScreenSize(Lcom/android/launcher/provider/FacadeProvider$Companion;Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method private static final post(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;)TR;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher/provider/FacadeProvider;->Companion:Lcom/android/launcher/provider/FacadeProvider$Companion;

    invoke-static {v0, p0}, Lcom/android/launcher/provider/FacadeProvider$Companion;->access$post(Lcom/android/launcher/provider/FacadeProvider$Companion;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final postAndReload(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;)TR;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher/provider/FacadeProvider;->Companion:Lcom/android/launcher/provider/FacadeProvider$Companion;

    invoke-static {v0, p0}, Lcom/android/launcher/provider/FacadeProvider$Companion;->access$postAndReload(Lcom/android/launcher/provider/FacadeProvider$Companion;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final postInternal(Ljava/lang/Runnable;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher/provider/FacadeProvider;->Companion:Lcom/android/launcher/provider/FacadeProvider$Companion;

    invoke-static {v0, p0}, Lcom/android/launcher/provider/FacadeProvider$Companion;->access$postInternal(Lcom/android/launcher/provider/FacadeProvider$Companion;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final reloadLauncher()V
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher/provider/FacadeProvider;->Companion:Lcom/android/launcher/provider/FacadeProvider$Companion;

    invoke-static {v0}, Lcom/android/launcher/provider/FacadeProvider$Companion;->access$reloadLauncher(Lcom/android/launcher/provider/FacadeProvider$Companion;)V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 8

    if-eqz p3, :cond_17d

    const-string p2, "FacadeInfo"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_17d

    :cond_c
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1e
    :goto_1e
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_166

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nkey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "context"

    sparse-switch v1, :sswitch_data_184

    goto :goto_1e

    :sswitch_4a
    const-string v1, "active_home_screens"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    goto :goto_1e

    :cond_53
    sget-object v0, Lcom/android/launcher/provider/FacadeProvider;->Companion:Lcom/android/launcher/provider/FacadeProvider$Companion;

    new-instance v2, Lcom/android/launcher/provider/FacadeProvider$call$1$screenSize$1;

    invoke-direct {v2, p0}, Lcom/android/launcher/provider/FacadeProvider$call$1$screenSize$1;-><init>(Lcom/android/launcher/provider/FacadeProvider;)V

    invoke-static {v0, v2}, Lcom/android/launcher/provider/FacadeProvider$Companion;->access$post(Lcom/android/launcher/provider/FacadeProvider$Companion;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tactive_home_screens: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e

    :sswitch_7c
    const-string v1, "homescreen_columns"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    goto :goto_1e

    :cond_85
    sget-object v0, Lcom/android/launcher/provider/FacadeProvider;->Companion:Lcom/android/launcher/provider/FacadeProvider$Companion;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/android/launcher/provider/FacadeProvider$Companion;->access$getColumns(Lcom/android/launcher/provider/FacadeProvider$Companion;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\thomescreen_columns: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1e

    :sswitch_ab
    const-string v1, "homescreen_rows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b5

    goto/16 :goto_1e

    :cond_b5
    sget-object v0, Lcom/android/launcher/provider/FacadeProvider;->Companion:Lcom/android/launcher/provider/FacadeProvider$Companion;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/android/launcher/provider/FacadeProvider$Companion;->access$getRow(Lcom/android/launcher/provider/FacadeProvider$Companion;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\thomescreen_rows: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1e

    :sswitch_db
    const-string v1, "launcher_status"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e5

    goto/16 :goto_1e

    :cond_e5
    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "\tlauncher_status: 1"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1e

    :sswitch_f0
    const-string v1, "launcher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fa

    goto/16 :goto_1e

    :cond_fa
    sget-object v0, Lcom/android/launcher/provider/FacadeProvider;->LAUNCHER_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LAUNCHER_COMPONENT_NAME.toString()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tlauncher: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1e

    :sswitch_11e
    const-string/jumbo v1, "max_hotseat_cells"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_129

    goto/16 :goto_1e

    :cond_129
    sget-object v0, Lcom/android/launcher/provider/FacadeProvider;->Companion:Lcom/android/launcher/provider/FacadeProvider$Companion;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/android/launcher/provider/FacadeProvider$Companion;->access$getHotseatCells(Lcom/android/launcher/provider/FacadeProvider$Companion;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tmax_hotseat_cells: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1e

    :sswitch_14f
    const-string/jumbo v1, "max_home_screens"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15a

    goto/16 :goto_1e

    :cond_15a
    const/16 v0, 0x1b

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "\tmax_home_screens: 27"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1e

    :cond_166
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "call: result: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "FacadeProvider"

    invoke-static {p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_17d
    :goto_17d
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0

    nop

    :sswitch_data_184
    .sparse-switch
        -0x552fbede -> :sswitch_14f
        -0x53fbf2f7 -> :sswitch_11e
        -0x53e0f060 -> :sswitch_f0
        -0x3264168f -> :sswitch_db
        0x49b778d -> :sswitch_ab
        0xdc755a9 -> :sswitch_7c
        0x3f049ec0 -> :sswitch_4a
    .end sparse-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete: uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " , selection: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FacadeProvider"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/launcher/provider/FacadeProvider;->Companion:Lcom/android/launcher/provider/FacadeProvider$Companion;

    new-instance v1, Lcom/android/launcher/provider/FacadeProvider$delete$result$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/android/launcher/provider/FacadeProvider$delete$result$1;-><init>(Lcom/android/launcher/provider/FacadeProvider;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/android/launcher/provider/FacadeProvider$Companion;->access$postAndReload(Lcom/android/launcher/provider/FacadeProvider$Companion;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    const-string p1, "delete: result: "

    invoke-static {p1, p0, v0}, Lcom/android/common/config/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    return p0
.end method

.method public bridge synthetic getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher/provider/FacadeProvider;->getType(Landroid/net/Uri;)Ljava/lang/Void;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/Void;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 5

    const-string v0, "insert: callingPackage: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " , values: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FacadeProvider"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/launcher/provider/FacadeProvider;->Companion:Lcom/android/launcher/provider/FacadeProvider$Companion;

    new-instance v1, Lcom/android/launcher/provider/FacadeProvider$insert$result$1;

    invoke-direct {v1, p0, p2}, Lcom/android/launcher/provider/FacadeProvider$insert$result$1;-><init>(Lcom/android/launcher/provider/FacadeProvider;Landroid/content/ContentValues;)V

    invoke-static {p1, v1}, Lcom/android/launcher/provider/FacadeProvider$Companion;->access$postAndReload(Lcom/android/launcher/provider/FacadeProvider$Companion;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "insert: result: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public onCreate()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 14

    const-string/jumbo v0, "query: callingPackage: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FacadeProvider"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/launcher/provider/FacadeProvider;->Companion:Lcom/android/launcher/provider/FacadeProvider$Companion;

    new-instance v7, Lcom/android/launcher/provider/FacadeProvider$query$result$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher/provider/FacadeProvider$query$result$1;-><init>(Lcom/android/launcher/provider/FacadeProvider;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v7}, Lcom/android/launcher/provider/FacadeProvider$Companion;->access$postAndReload(Lcom/android/launcher/provider/FacadeProvider$Companion;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/database/Cursor;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "query: result: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " cursorCount: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7

    const-string/jumbo v0, "update: callingPackage: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " , selection: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "FacadeProvider"

    invoke-static {v0, p3, p1}, Lcom/android/common/util/w;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher/provider/FacadeProvider;->Companion:Lcom/android/launcher/provider/FacadeProvider$Companion;

    new-instance v1, Lcom/android/launcher/provider/FacadeProvider$update$result$1;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/android/launcher/provider/FacadeProvider$update$result$1;-><init>(Lcom/android/launcher/provider/FacadeProvider;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/launcher/provider/FacadeProvider$Companion;->access$postAndReload(Lcom/android/launcher/provider/FacadeProvider$Companion;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    const-string/jumbo p2, "update: result: "

    invoke-static {p2, p0, p1}, Lcom/android/common/config/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    return p0
.end method
